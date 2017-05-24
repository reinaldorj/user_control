unit ucontrols;

interface

uses
{$IFDEF VER130}
{$ELSE}
  Variants,
{$ENDIF}
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, ActnList, StdCtrls, AppEvnts, ADODB, ComCtrls, Buttons,
  UCBase, UCADOConn, UCXPStyle;

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
    logdosistema: TMenuItem;
    ADOQuery1: TADOQuery;
    ApplicationEvents1: TApplicationEvents;
    Label2: TLabel;
    Label3: TLabel;
    GroupBox4: TGroupBox;
    EditErro: TEdit;
    GroupBox5: TGroupBox;
    EditLog: TEdit;
    cbNivel: TComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
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
    UCSettings1: TUCSettings;
    BitBtn3: TBitBtn;
    UCADOConn1: TUCADOConn;
    UserControl1: TUserControl;
    UCXPStyle1: TUCXPStyle;
    procedure EfetuarLogoff1Click(Sender: TObject);
    procedure ADOUserControl1LoginError(Sender: TObject; Usuario,
      Senha: String);
    procedure ADOUserControl1LoginSucess(Sender: TObject; IdUser: Integer;
      Usuario, Nome, Senha, Email: String; Privilegiado: Boolean);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Button10Click(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ADOUserControl1Logoff(Sender: TObject; IDUser: Integer);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses form2_U;


{$R *.dfm}

procedure TForm1.EfetuarLogoff1Click(Sender: TObject);
begin
  UserControl1.Logoff;
end;


procedure TForm1.ADOUserControl1LoginError(Sender: TObject; Usuario,
  Senha: String);
begin
  UserControl1.Log(Format('Erro de login do usuário: "%s"   senha: "%s"',[Usuario, Senha]),0);
end;

procedure TForm1.ADOUserControl1LoginSucess(Sender: TObject;
  IdUser: Integer; Usuario, Nome, Senha, Email: String;
  Privilegiado: Boolean);
var
  LastLogin : TDateTime;
  StrData : String;
begin
//Pesquisar ultimo login do usuario
  ADOQuery1.Close;
  ADOQuery1.SQL.Text := 'Select Max(Data) as Data from ' + UserControl1.LogControl.TableLog +
                        ' where IdUser = ' + IntToStr(IdUser) +
                        ' and MSG like ' + QuotedStr('Entrada no sistema%');
  ADOQuery1.Open;
  StrData := ADOQuery1.FieldByName('data').asString;
  if StrData <> '' then begin
    LastLogin :=  EncodeDate( StrToInt(Copy(StrData,1,4)), StrToInt(Copy(StrData,5,2)), StrToInt(Copy(StrData,7,2)) ) +
                  EncodeTime( StrToInt(Copy(StrData,9,2)), StrToInt(Copy(StrData,11,2)), StrToInt(Copy(StrData,13,2)),0);
    MessageDlg('Seu último Login foi em '+ FormatDateTime('DD/MM/YYYY', LastLogin)+' '+ FormatDateTime('hh:mm', LastLogin), mtInformation, [mbOK], 0);
  end else MessageDlg('Bem vindo!'+#13+#10+'Este é seu primeiro Login no sistema.', mtInformation, [mbOK], 0);

  ADOQuery1.Close;

// Logar este login do usuario
  UserControl1.Log(Format('Entrada no sistema usuário: "%s" nome: "%s"',[Usuario, Nome]),0);
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  UserControl1.Log('Sistema encerrado.',0);
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
  raise Exception.Create('');
end;

procedure TForm1.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
begin
  UserControl1.Log(E.Message,3);
  beep;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  UserControl1.Log(EditLog.Text, cbNivel.ItemIndex);
  MessageDlg('Log adicionado', mtInformation, [mbOK], 0);
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  raise Exception.Create(EditErro.Text);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  cbNivel.ItemIndex := 0;
  ADOConnection1.Connected := True;
end;

procedure TForm1.ADOUserControl1Logoff(Sender: TObject; IDUser: Integer);
begin
  UserControl1.Log('Efetuado Logoff',0);
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  Form1.Height := 434;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
  Form2 := TForm2.Create(Application);
  Form2.ShowModal;
  FreeAndNil(Form2);
end;

procedure TForm1.Action1Execute(Sender: TObject);
begin
  MessageBox(handle, 'Teste', 'Action onExecute', MB_ICONINFORMATION or MB_OK);
end;

end.
