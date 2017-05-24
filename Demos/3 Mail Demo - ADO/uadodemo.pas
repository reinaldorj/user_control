unit uadodemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, ActnList, StdCtrls, ADODB, UCMail, UCBase, UCADOConn,
  UCXPStyle;

type
  TForm1 = class(TForm)
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
    rocarsenha1: TMenuItem;
    ActionList1: TActionList;
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    GroupBox2: TGroupBox;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    GroupBox3: TGroupBox;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    Action4: TAction;
    Action5: TAction;
    Action6: TAction;
    Action7: TAction;
    Action8: TAction;
    Action9: TAction;
    N7: TMenuItem;
    EfetuarLogoff1: TMenuItem;
    ADOConnection1: TADOConnection;
    Perfildeusurios1: TMenuItem;
    MailUserControl1: TMailUserControl;
    LogdoSistema1: TMenuItem;
    N8: TMenuItem;
    UCSettings1: TUCSettings;
    UCADOConn1: TUCADOConn;
    UserControl1: TUserControl;
    UCXPStyle1: TUCXPStyle;
    procedure Action1Execute(Sender: TObject);
    procedure EfetuarLogoff1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Action1Execute(Sender: TObject);
begin
  MessageDlg('Teste', mtInformation, [mbOK], 0);
end;

procedure TForm1.EfetuarLogoff1Click(Sender: TObject);
begin
  UserControl1.Logoff;
end;


procedure TForm1.FormCreate(Sender: TObject);
begin
  ADOConnection1.Connected := True;
end;

end.
