unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Menus, UCBase, UCADOConn,  StdCtrls, Buttons,
  ComCtrls, UCIdle, UCMail, ExtCtrls, ActnList, UCXPStyle;

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
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    UCControls1: TUCControls;
    procedure FormCreate(Sender: TObject);
    procedure EfetuarLogoff1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure Action8Execute(Sender: TObject);
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

procedure TForm1.EfetuarLogoff1Click(Sender: TObject);
begin
  UserControl1.Logoff;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  UserControl1.Log('teste');
end;

procedure TForm1.Action1Execute(Sender: TObject);
begin
  MessageBox(handle, 'Teste', 'teste', MB_ICONINFORMATION or MB_OK);
end;

procedure TForm1.Action8Execute(Sender: TObject);
begin
  UserControl1.Logoff;
end;

end.
