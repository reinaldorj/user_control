unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Menus, UCBase, UCADOConn, StdCtrls, Buttons,
  UCXPStyle;

type
  TForm1 = class(TForm)
    ADOConnection1: TADOConnection;
    UCADOConn1: TUCADOConn;
    UserControl1: TUserControl;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Abrir1: TMenuItem;
    Salvar1: TMenuItem;
    Salvar2: TMenuItem;
    Salvarcomo1: TMenuItem;
    Fechar1: TMenuItem;
    N2: TMenuItem;
    Dados1: TMenuItem;
    Importar1: TMenuItem;
    Exportar1: TMenuItem;
    N4: TMenuItem;
    Vincular1: TMenuItem;
    N3: TMenuItem;
    Sair2: TMenuItem;
    Editar1: TMenuItem;
    Copiar1: TMenuItem;
    Colar1: TMenuItem;
    Recortar1: TMenuItem;
    N1: TMenuItem;
    Selecionartudo1: TMenuItem;
    N5: TMenuItem;
    AreadeTransferencia1: TMenuItem;
    Exibir2: TMenuItem;
    Esvaziar1: TMenuItem;
    Exibir1: TMenuItem;
    Zoom1: TMenuItem;
    Normal1: TMenuItem;
    Grande1: TMenuItem;
    Ajustarnajanela1: TMenuItem;
    N6: TMenuItem;
    Personalizar1: TMenuItem;
    amanhonormal1: TMenuItem;
    elacheia1: TMenuItem;
    Relatorios1: TMenuItem;
    Relatorio11: TMenuItem;
    Relatorio21: TMenuItem;
    Relatorio31: TMenuItem;
    Relatorio41: TMenuItem;
    Segurana1: TMenuItem;
    Cadastrodeusuarios1: TMenuItem;
    Perfildeusurios1: TMenuItem;
    logdosistema: TMenuItem;
    N7: TMenuItem;
    rocarsenha1: TMenuItem;
    EfetuarLogoff1: TMenuItem;
    UCSettings1: TUCSettings;
    UCXPStyle1: TUCXPStyle;
    QVerAcesso: TADOQuery;
    GroupBox1: TGroupBox;
    edLogin: TEdit;
    edSenha: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    edComp: TEdit;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure EfetuarLogoff1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    function PossuiAcesso(Login, Senha, Componente : String) : Boolean;
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
end;

procedure TForm1.EfetuarLogoff1Click(Sender: TObject);
begin
  UserControl1.Logoff;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if PossuiAcesso(edLogin.Text, edSenha.Text, edComp.Text) then
    MessageBox(handle, 'Acesso liberado!', 'Informação', MB_ICONINFORMATION or MB_OK)
  else
    MessageBox(handle, 'Acesso negado!', 'Aviso', MB_ICONWARNING or MB_OK);
end;

function TForm1.PossuiAcesso(Login, Senha, Componente : String) : Boolean;
begin
  with QVerAcesso do
  begin
    Close;
    Parameters.ParamByName('login').Value := EdLogin.Text;
    Parameters.ParamByName('componente').Value := edComp.Text;
    Open;
    if (IsEmpty) or (Decrypt( QVerAcesso.FieldByName('UCPassword').asString, UserControl1.EncryptKey ) <> Senha) then
      Result := False
    else Result := True;
  end;
end;

end.
