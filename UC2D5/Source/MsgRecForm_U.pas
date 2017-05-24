unit MsgRecForm_U;

interface

uses
{$IFDEF VER130}
{$ELSE}
  Variants,
{$ENDIF}
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, UCXPMenu;

type
  TMsgRecForm = class(TForm)
    Panel1: TPanel;
    lbTitulo: TLabel;
    Image1: TImage;
    lbDE: TLabel;
    stDe: TStaticText;
    lbAssunto: TLabel;
    stAssunto: TStaticText;
    lbMensagem: TLabel;
    MemoMsg: TMemo;
    btFechar: TBitBtn;
    lbData: TLabel;
    stData: TStaticText;
    UCXPStyle: TUCXPStyle;
    procedure btFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MsgRecForm: TMsgRecForm;

implementation

{$R *.dfm}

procedure TMsgRecForm.btFecharClick(Sender: TObject);
begin
  Close;
end;

end.
