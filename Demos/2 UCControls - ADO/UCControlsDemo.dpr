program UCControlsDemo;

uses
  Forms,
  ucontrols in 'ucontrols.pas' {Form1},
  form2_U in 'form2_U.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
