unit UCEMailForm_U;

interface

uses
{$IFDEF VER130}
{$ELSE}
  Variants,
{$ENDIF}
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TUCEMailForm = class(TForm)
    Panel1: TPanel;
    img: TImage;
    lbStatus: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UCEMailForm: TUCEMailForm;

implementation

{$R *.dfm}

end.
