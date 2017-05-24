unit TrocaSenha_U;

interface

uses
{$IFDEF Ver130}
{$ELSE}
  Variants,
{$ENDIF}
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, UCXPMenu;

type
  TTrocaSenha = class(TForm)
    Panel1: TPanel;
    lbDescricao: TLabel;
    Image1: TImage;
    Panel3: TPanel;
    btGrava: TBitBtn;
    btCancel: TBitBtn;
    lbSenhaAtu: TLabel;
    EditAtu: TEdit;
    lbNovaSenha: TLabel;
    EditNova: TEdit;
    lbConfirma: TLabel;
    EditConfirma: TEdit;
    UCXPStyle: TUCXPStyle;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TrocaSenha: TTrocaSenha;

implementation

{$R *.dfm}

procedure TTrocaSenha.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := caFree;
end;

procedure TTrocaSenha.btCancelClick(Sender: TObject);
begin
  Close;
end;

end.
