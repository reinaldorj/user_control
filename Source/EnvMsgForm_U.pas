unit EnvMsgForm_U;

interface

uses
{$IFDEF VER130}
{$ELSE}
  Variants,
{$ENDIF}
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, ExtCtrls, UCBase, DB, UCXPStyle;


type
  TEnvMsgForm = class(TForm)
    Panel1: TPanel;
    lbTitulo: TLabel;
    Image1: TImage;
    gbPara: TGroupBox;
    rbUsuario: TRadioButton;
    rbTodos: TRadioButton;
    dbUsuario: TDBLookupComboBox;
    gbMensagem: TGroupBox;
    lbAssunto: TLabel;
    lbMensagem: TLabel;
    EditAssunto: TEdit;
    MemoMsg: TMemo;
    btEnvia: TBitBtn;
    btCancela: TBitBtn;
    DataSource1: TDataSource;
    UCXPStyle: TUCXPStyle;
    procedure btCancelaClick(Sender: TObject);
    procedure dbUsuarioCloseUp(Sender: TObject);
    procedure rbUsuarioClick(Sender: TObject);
    procedure btEnviaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject); //added by fduenas
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EnvMsgForm: TEnvMsgForm;

implementation

uses MsgsForm_U, UCMessages;

{$R *.dfm}

procedure TEnvMsgForm.btCancelaClick(Sender: TObject);
begin
  Close;
end;

procedure TEnvMsgForm.dbUsuarioCloseUp(Sender: TObject);
begin
  if dbUsuario.KeyValue <> null then
  begin
    rbUsuario.Checked := True;
  end;
end;

procedure TEnvMsgForm.rbUsuarioClick(Sender: TObject);
begin
  if not rbUsuario.Checked then dbUsuario.KeyValue := null;
end;

procedure TEnvMsgForm.btEnviaClick(Sender: TObject);
begin
  if rbUsuario.checked then
    TUCAppMessage(MsgsForm.Owner).SendAppMessage(MsgsForm.DSUsuarios.fieldbyname('IdUser').asInteger,EditAssunto.Text, MemoMsg.Text )
  else begin
    with MsgsForm.DSUsuarios do
    begin
      First;
      while not eof do
      begin
        TUCAppMessage(MsgsForm.Owner).SendAppMessage(FieldByName('IdUser').asInteger, EditAssunto.Text, MemoMsg.Text );
        Next;
      end;
    end;
  end;
  Close;
end;

procedure TEnvMsgForm.FormCreate(Sender: TObject);
begin
 with TUCAppMessage(Owner).UserControl.Settings.AppMessages do
 begin
  Self.Caption := MsgSend_WindowCaption;
  lbTitulo.Caption := MsgSend_Title;
  gbpara.Caption := MsgSend_GroupTo;
  rbUsuario.Caption := MsgSend_RadioUser;
  rbTodos.Caption := MsgSend_RadioAll;
  gbMensagem.Caption := MsgSend_GroupMessage;
  lbAssunto.Caption := MsgSend_LabelSubject;
  lbMensagem.Caption := MsgSend_LabelMessageText;
  btCancela.Caption := MsgSend_BtCancel;
  btEnvia.Caption := MsgSend_BtSend;
 end;
end;

end.
