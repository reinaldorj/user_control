unit uadodemo;

interface

uses
{$IFDEF VER130}
{$ELSE}
  Variants,
{$ENDIF}
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, ActnList, StdCtrls, AppEvnts, ADODB, ComCtrls, Buttons,
  UCBase, UCADOConn;

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
    N7: TMenuItem;
    EfetuarLogoff1: TMenuItem;
    ADOConnection1: TADOConnection;
    Perfildeusurios1: TMenuItem;
    logdosistema: TMenuItem;
    UCAppMessage1: TUCAppMessage;
    UCSettings1: TUCSettings;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    UCADOConn1: TUCADOConn;
    UserControl1: TUserControl;
    procedure EfetuarLogoff1Click(Sender: TObject);
    procedure ADOUserControl1LoginError(Sender: TObject; Usuario,
      Senha: String);
    procedure ADOUserControl1LoginSucess(Sender: TObject; IdUser: Integer;
      Usuario, Nome, Senha, Email: String; Privilegiado: Boolean);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ADOUserControl1Logoff(Sender: TObject; IDUser: Integer);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
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

procedure TForm1.EfetuarLogoff1Click(Sender: TObject);
begin
  UserControl1.Logoff;
end;


procedure TForm1.ADOUserControl1LoginError(Sender: TObject; Usuario,
  Senha: String);
begin
  Usercontrol1.Log(Format('Erro de login do usuário: "%s"   senha: "%s"',[Usuario, Senha]),0);
end;

procedure TForm1.ADOUserControl1LoginSucess(Sender: TObject;
  IdUser: Integer; Usuario, Nome, Senha, Email: String;
  Privilegiado: Boolean);
begin
  Usercontrol1.Log(Format('Entrada no sistema usuário: "%s" nome: "%s"',[Usuario, Nome]),0);
  UCAppMessage1.CheckMessages;
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  UserControl1.Log('Sistema encerrado.',0);
end;

procedure TForm1.ADOUserControl1Logoff(Sender: TObject; IDUser: Integer);
begin
  UserControl1.Log('Efetuado Logoff',0);
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  UCAppMessage1.ShowMessages;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  UCAppMessage1.CheckMessages;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ADOConnection1.Connected := True;
end;

end.
