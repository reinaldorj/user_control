program UCControlsDemo;

uses
  Forms,
  ucontrols in 'ucontrols.pas' {Form1},
  form2_U in 'form2_U.pas' {Form2},
  DataM_U in 'DataM_U.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
