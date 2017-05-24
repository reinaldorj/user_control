unit form2_U;

interface

uses
  {$IFDEF VER130}
  {$ELSE}
  Variants, 
  {$ENDIF}
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, ADODB, DBCtrls, Mask, UCBase;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Memo1: TMemo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    ScrollBox1: TScrollBox;
    Label3: TLabel;
    edID: TDBEdit;
    Label4: TLabel;
    edNome: TDBEdit;
    Label5: TLabel;
    edLogin: TDBEdit;
    Label6: TLabel;
    edSenha: TDBEdit;
    Label7: TLabel;
    edEmail: TDBEdit;
    Label8: TLabel;
    edPriv: TDBEdit;
    Label9: TLabel;
    edTipo: TDBEdit;
    Label10: TLabel;
    edPerfil: TDBEdit;
    DBNavigator1: TDBNavigator;
    UCControls1: TUCControls;
    ADOTable1UCIdUser: TIntegerField;
    ADOTable1UCUserName: TWideStringField;
    ADOTable1UCLogin: TWideStringField;
    ADOTable1UCPassword: TWideStringField;
    ADOTable1UCEmail: TWideStringField;
    ADOTable1UCPrivileged: TIntegerField;
    ADOTable1UCTypeRec: TWideStringField;
    ADOTable1UCProfile: TIntegerField;
    ADOTable1UCKey: TWideStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses ucontrols;

{$R *.dfm}

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := caFree;
end;

procedure TForm2.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  ADOTable1.Open;
end;

end.
