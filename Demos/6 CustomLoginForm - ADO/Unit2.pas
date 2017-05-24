unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, jpeg, ExtCtrls, UCXPStyle;

type
  TForm2 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    EditLogin: TEdit;
    EditSenha: TEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    UCXPStyle1: TUCXPStyle;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses uadodemo;

{$R *.dfm}

procedure TForm2.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  canclose := Form1.UserControl1.CurrentUser.UserID > 0;
end;

procedure TForm2.SpeedButton2Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm2.SpeedButton1Click(Sender: TObject);
begin
  if not Form1.UserControl1.VerificaLogin(EditLogin.text, EditSenha.text) then Showmessage('Login inválido!!!!!')
  else Close;
end;

end.
