unit UCIdle;

interface

uses Classes, UCBase, Dialogs, Windows, Forms, ExtCtrls, Messages; //WM_TIMER ;

type

  TUCIdle = class(TComponent)
  private
    FTimeOut: Integer;
    FOnIdle: TNotifyEvent;
    FUCComp: TUserControl;
    FOnAppMessage : TMessageEvent;
    FInternalTimer : TTimer;
    FChanged : Boolean;
    procedure UCAppMessage(var Msg: TMsg; var Handled: Boolean);
    procedure OnInternalTimer(Sender : TObject);
  protected

    procedure Loaded; override;
  public
    constructor Create(AOwner: TComponent); override;
    procedure DoIdle;
//    procedure Create(AOwner: TComponent);override;
  published
    property UserControl : TUserControl read FUCComp write FUCComp;
    property OnIdle : TNotifyEvent read FOnIdle write FOnIdle;
    property Timeout : Integer read FTimeOut write FTimeOut;
  end;


implementation

{ TUCIdle }

constructor TUCIdle.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

procedure TUCIdle.DoIdle;
begin
  if Assigned(UserControl) and (UserControl.CurrentUser.UserID <> 0 ) then
    UserControl.Logoff;
  if Assigned(OnIdle) then OnIdle(Self);
end;

procedure TUCIdle.Loaded;
begin
  inherited;
  if not (csDesigning in ComponentState) then
    if (Assigned(UserControl)) or (Assigned(OnIdle))then
    begin
      if Assigned(Application.OnMessage) then FOnAppMessage := Application.OnMessage;
      Application.OnMessage := UCAppMessage;
      FInternalTimer := TTimer.Create(self);
      FInternalTimer.Enabled := False;
      FInternalTimer.Interval := Timeout;
      FInternalTimer.OnTimer := OnInternalTimer;
      FInternalTimer.Enabled := True;
    end;
end;

procedure TUCIdle.OnInternalTimer(Sender: TObject);
begin
  if not FChanged then DoIdle
  else FChanged := False;
end;

procedure TUCIdle.UCAppMessage(var Msg: TMsg; var Handled: Boolean);
begin
  if (msg.message = wm_mousemove) or (msg.message = wm_keydown) then FChanged := True;
//  FChanged := (msg.message = wm_mousemove) or (msg.message = wm_keydown);
  if Assigned(FOnAppMessage) then FOnAppMessage(Msg, Handled);
end;

end.
