unit CadPerfil_U;

interface

uses
{$IFDEF Ver130}
{$ELSE}
  Variants,
{$ENDIF}
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, Buttons, ExtCtrls, StdCtrls, IncPerfil_U, Grids,
  DBGrids,  UCBase, UCXPMenu;

type
  TCadPerfil = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    lbDescricao: TLabel;
    Image1: TImage;
    Panel3: TPanel;
    btAdic: TBitBtn;
    BtAlt: TBitBtn;
    BtExclui: TBitBtn;
    BtExit: TBitBtn;
    DataSource1: TDataSource;
    BtAcess: TBitBtn;
    UCXPStyle: TUCXPStyle;
    procedure BtExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btAdicClick(Sender: TObject);
    procedure BtAltClick(Sender: TObject);
    procedure BtExcluiClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    IncPerfil: TIncPerfil;
  public
    UCComponent : TUserControl;
    DsPerfilUser : TDataset;
    procedure SetWindow(Adicionar: Boolean);
  end;


implementation


{$R *.dfm}

procedure TCadPerfil.BtExitClick(Sender: TObject);
begin
  Close;
end;

procedure TCadPerfil.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TCadPerfil.DBGrid1DblClick(Sender: TObject);
begin
  BtAlt.Click;
end;

procedure TCadPerfil.btAdicClick(Sender: TObject);
begin
  IncPerfil := TIncPerfil.Create(Self);
  IncPerfil.UCComponent := Self.UCComponent;
  SetWindow(True);
  IncPerfil.ShowModal;
  FreeAndNil(IncPerfil);
end;

procedure TCadPerfil.SetWindow(Adicionar : Boolean);
begin
  with TUserControl(owner).Settings.AddChangeProfile do begin
    IncPerfil.Caption := WindowCaption;
    if Adicionar then IncPerfil.LbDescricao.Caption := LabelAdd else IncPerfil.LbDescricao.Caption := LabelChange;
    IncPerfil.lbNome.Caption := LabelName;
    IncPerfil.btGravar.Caption := BtSave;
    IncPerfil.btCancela.Caption := BtCancel;
    IncPerfil.UCXPStyle.XPSettings := TUserControl(owner).Settings.XpStyleSet;
    IncPerfil.UCXPStyle.Active := TUserControl(owner).Settings.XPStyle;
  end;
end;

procedure TCadPerfil.BtAltClick(Sender: TObject);
begin
  if DSPerfilUser.IsEmpty then Exit;
  IncPerfil := TIncPerfil.Create(self);
  IncPerfil.UCComponent := Self.UCComponent;
  SetWindow(False);
  With IncPerfil do begin
    FAltera := True;
    EditDescricao.Text := DSPerfilUser.FieldByName('Nome').asString;
    ShowModal;
  end;
  FreeAndNil(IncPerfil);
end;

procedure TCadPerfil.BtExcluiClick(Sender: TObject);
var
  TempID : Integer;
  CanDelete : Boolean;
  ErrorMsg : String;
  TempDS : TDataset;
begin
  if DSPerfilUser.IsEmpty then Exit;
  TempID := DSPerfilUser.fieldByName('IDUser').asInteger;
  TempDS :=  UCComponent.DataConnector.UCGetSQLDataset('Select '+UCComponent.TableUsers.FieldUserID+' as IdUser from '+
                        UCComponent.TableUsers.TableName +
                        ' Where '+UCComponent.TableUsers.FieldTypeRec+' = ' + QuotedStr('U') +
                        ' AND '+UCComponent.TableUsers.FieldProfile+' = ' + IntToStr(TempID));

  if TempDS.FieldByName('IdUser').asInteger > 0 then
  begin
    TempDS.Close;
    FreeAndNil(TempDS);
    if MessageBox(handle, PChar(Format(UCComponent.Settings.UsersProfile.PromptDelete, [DSPerfilUser.fieldByName('Nome').asString])),
      PChar(BtExclui.Caption), MB_ICONQUESTION or MB_YESNO or MB_DEFBUTTON2) <> idYes then Exit;
  end;
  TempDS.Close;
  FreeAndNil(TempDS);
  
  CanDelete := True;
  if Assigned(UCComponent.onDeleteProfile) then UCComponent.onDeleteProfile(TObject(Owner), TempID, CanDelete, ErrorMsg);
  if not CanDelete then begin
    MessageDlg(ErrorMSG, mtWarning, [mbOK], 0);
    Exit;
  end;

  with UCComponent do
  begin
    DataConnector.UCExecSQL('Delete from '+ TableUsers.TableName + ' where '+TableUsers.FieldUserID+' = '+ IntToStr(TempID));
    DataConnector.UCExecSQL('Delete from '+ TableRights.TableName + ' where '+TableRights.FieldUserID+' = '+ IntToStr(TempID));
    DataConnector.UCExecSQL('Delete from '+ TableRights.TableName + 'EX where '+TableRights.FieldUserID+' = '+ IntToStr(TempID));
    DataConnector.UCExecSQL('Update '+ TableUsers.TableName +
                            ' Set '+TableUsers.FieldProfile+' = null where '+TableUsers.FieldUserID+' = '+ IntToStr(TempID));
  end;
  DSPerfilUser.Close;
  DSPerfilUser.Open;
end;

procedure TCadPerfil.FormShow(Sender: TObject);
begin
  with UCComponent do
  begin
    DSPerfilUser := DataConnector.UCGetSQLDataset(
      Format('Select %s as IdUser, %s as Login, %s as Nome, %s as Tipo from %s Where %s  = %s ORDER BY %s',
             [TableUsers.FieldUserID, TableUsers.FieldLogin, TableUsers.FieldUserName, TableUsers.FieldTypeRec,
              TableUsers.TableName, TableUsers.FieldTypeRec, QuotedStr('P'), TableUsers.FieldUserName]) );


    DBGrid1.Columns[0].Title.Caption := Settings.UsersProfile.ColProfile;
  end;
  DataSource1.Dataset := DSPerfilUser;
end;

end.
