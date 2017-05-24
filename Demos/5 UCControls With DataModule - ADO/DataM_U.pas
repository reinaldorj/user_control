unit DataM_U;

interface

uses
  SysUtils, Classes, DB, ADODB,  UCBase;

type
  TDataModule1 = class(TDataModule)
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

uses ucontrols;

{$R *.dfm}

end.
