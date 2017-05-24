unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Buttons, UCIdle, UCBase, UCADOConn,
  UCXPStyle;

type
  TForm1 = class(TForm)
    btLogin: TBitBtn;
    btLogout: TBitBtn;
    ADOConnection1: TADOConnection;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    UCADOConn1: TUCADOConn;
    UserControl1: TUserControl;
    UCControls1: TUCControls;
    UCIdle1: TUCIdle;
    btProtOper: TBitBtn;
    btUsuarios: TBitBtn;
    btPerfil: TBitBtn;
    btSenha: TBitBtn;
    Memo1: TMemo;
    UCXPStyle1: TUCXPStyle;
    UCSettings1: TUCSettings;
    procedure BitBtn3Click(Sender: TObject);
    procedure btProtOperClick(Sender: TObject);
    procedure btLoginClick(Sender: TObject);
    procedure UserControl1LoginSucess(Sender: TObject; IdUser: Integer;
      Usuario, Nome, Senha, Email: String; Privilegiado: Boolean);
    procedure UserControl1Logoff(Sender: TObject; IDUser: Integer);
    procedure btLogoutClick(Sender: TObject);
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

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
  showmessage('teste');
end;

procedure TForm1.btProtOperClick(Sender: TObject);
begin
  MessageBox(handle, 'teste de Operação protegida', 'Aviso', MB_ICONWARNING or MB_OK);
end;

procedure TForm1.btLoginClick(Sender: TObject);
begin
  UserControl1.StartLogin;
end;

procedure TForm1.UserControl1LoginSucess(Sender: TObject; IdUser: Integer;
  Usuario, Nome, Senha, Email: String; Privilegiado: Boolean);
begin
  btLogout.Visible := True;
  btLogin.Visible := False;
end;

procedure TForm1.UserControl1Logoff(Sender: TObject; IDUser: Integer);
begin
  btLogout.Visible := False;
  btLogin.Visible := True;
end;

procedure TForm1.btLogoutClick(Sender: TObject);
begin
  UserControl1.Logoff;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ADOConnection1.Connected := True;
end;

end.
