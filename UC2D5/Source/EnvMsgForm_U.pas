unit EnvMsgForm_U;

interface

uses
{$IFDEF VER130}
{$ELSE}
  Variants,
{$ENDIF}
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, ExtCtrls, UCBase, DB, UCXPMenu;


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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EnvMsgForm: TEnvMsgForm;

implementation

uses MsgsForm_U;

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

end.
