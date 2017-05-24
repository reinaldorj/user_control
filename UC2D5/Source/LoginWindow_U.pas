unit LoginWindow_U;

interface

uses
{$IFDEF Ver150}
  Variants,
{$ENDIF}
{$IFDEF Ver140}
  Variants,
{$ENDIF}
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, math, UCXPMenu;

type
  TLoginWindow = class(TForm)
    PTop: TPanel;
    ImgTop: TImage;
    PLeft: TPanel;
    imgLeft: TImage;
    PBottom: TPanel;
    ImgBottom: TImage;
    Panel1: TPanel;
    PLogin: TPanel;
    LbUsuario: TLabel;
    LbSenha: TLabel;
    EditUsuario: TEdit;
    EditSenha: TEdit;
    btOK: TBitBtn;
    BtCancela: TBitBtn;
    lbEsqueci: TLabel;
    UCXPStyle: TUCXPStyle;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtCancelaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EditUsuarioChange(Sender: TObject);
  private

  end;

var
  LoginWindow: TLoginWindow;

implementation
uses UCBase;
{$R *.dfm}
function GetLocalComputerName: string;              //BGM
var                                                 //BGM
  Count: DWORD;                                     //BGM
  Buffer: string;                                   //BGM
begin                                               //BGM
  Count := MAX_COMPUTERNAME_LENGTH + 1;             //BGM
  SetLength(Buffer, Count);                         //BGM
  if GetComputerName(PChar(Buffer), Count) then     //BGM
    SetLength(Buffer, StrLen(PChar(Buffer)))        //BGM
  else                                              //BGM
    Buffer := '';                                   //BGM
  Result := Buffer;                                 //BGM
end;                                                //BGM

function GetLocalUserName: string;
var
  Count: DWORD;
  Buffer: string;
begin
  Count := 254;
  SetLength(Buffer, Count);
  if GetUserName(PChar(Buffer), Count) then
    SetLength(Buffer, StrLen(PChar(Buffer)))
  else
    Buffer := '';
  Result := Buffer;
end;

procedure TLoginWindow.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := caFree;
end;

procedure TLoginWindow.BtCancelaClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TLoginWindow.FormShow(Sender: TObject);
var
  x , y, w, h : Integer;
begin
  w := Max(ImgTop.Width, ImgLeft.Width+PLogin.Width);
  w := Max(w, ImgBottom.Width);
  h := Max(ImgLeft.Height + ImgTop.Height + ImgBottom.Height , ImgTop.Height + PLogin.Height + ImgBottom.Height);

  Width := w;
  Height := h+28;

  // Topo
  PTop.Height := ImgTop.Height;
  ImgTop.AutoSize := False;
  ImgTop.Align := alClient;
  ImgTop.Center := True;

  //Centro
  PLeft.Width := ImgLeft.Width;
  ImgLeft.AutoSize := False;
  ImgLeft.Align := alClient;
  ImgLeft.Center := True;

  //Bottom
  PBottom.Height := ImgBottom.Height;
  ImgBottom.AutoSize := False;
  ImgBottom.Align := alClient;
  ImgBottom.Center := True;

  PTop.visible := ImgTop.Picture <> nil;
  PLeft.visible :=  ImgLeft.Picture <> nil;
  PBottom.Visible := ImgBottom.Picture <> nil;

  x := (Screen.Width div 2) - (Width div 2);
  y := (Screen.Height div 2) - (Height div 2);
  top := y;
  Left := x;
  if TUserControl(Owner).Login.GetLoginName = lnUserName then EditUsuario.Text := GetLocalUserName;
  if TUserControl(Owner).Login.GetLoginName = lnMachineName then EditUsuario.Text := GetLocalComputerName;
  if TUserControl(Owner).Login.GetLoginName <> lnNone then EditSenha.SetFocus;
//  EditUsuario.Text := GetLocalComputerName;   //BGM
//  EditSenha.SetFocus;
end;

procedure TLoginWindow.EditUsuarioChange(Sender: TObject);
begin
  lbEsqueci.Enabled :=  length(EditUsuario.Text) > 0;
end;

end.
