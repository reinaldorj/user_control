unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls,  DB, ADODB, StdCtrls,
  UCBase, UCADOConn;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    ADOConnection1: TADOConnection;
    UCControls1: TUCControls;
    Memo1: TMemo;
    UCSettings1: TUCSettings;
    UCADOConn1: TUCADOConn;
    UserControl1: TUserControl;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  ADOConnection1.Connected := True;
  UserControl1.Execute;
end;

procedure TForm1.SpeedButton4Click(Sender: TObject);
begin
  UserControl1.Logoff;
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
  UserControl1.ShowChangePassword;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
  UserControl1.ShowProfileManager;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  UserControl1.ShowUserManager;
end;

end.
