unit CadUser_U;

interface

uses
{$IFDEF Ver130}
{$ELSE}
  Variants,
{$ENDIF}
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, DB, IncUser_U,
  ExtCtrls, Menus, UCBase, UCXPStyle;

type
  TCadUser = class(TForm)
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    lbDescricao: TLabel;
    Image1: TImage;
    PopupMenu1: TPopupMenu;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    N1: TMenuItem;
    Permisses1: TMenuItem;
    Panel3: TPanel;
    btAdic: TBitBtn;
    BtAlt: TBitBtn;
    BtExclui: TBitBtn;
    BtAcess: TBitBtn;
    BtExit: TBitBtn;
    BtPass: TBitBtn;
    DataSource2: TDataSource;
    UCXPStyle: TUCXPStyle;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtExitClick(Sender: TObject);
    procedure btAdicClick(Sender: TObject);
    procedure BtAltClick(Sender: TObject);
    procedure BtExcluiClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BtPassClick(Sender: TObject);
    procedure SetWindow(Adicionar: Boolean);
    procedure DSCadUserAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    LockAdmin : Boolean;
    DSPerfilUser : TDataset;
    IncUser: TIncUser;
  public
    UCComponent : TUserControl;
    DSCadUser : TDataset;
  end;

implementation


{$R *.dfm}

procedure TCadUser.FormClose(Sender: TObject;  var Action: TCloseAction);
begin
  action := caFree;
end;

procedure TCadUser.BtExitClick(Sender: TObject);
begin
  Close;
end;

procedure TCadUser.btAdicClick(Sender: TObject);
begin
  IncUser := TIncUser.Create(Self);
  IncUser.UCComponent := Self.UCComponent;
  SetWindow(True);
  IncUser.ShowModal;
  FreeAndNil(IncUser);
end;

procedure TCadUser.SetWindow(Adicionar : Boolean);
begin
  with TUserControl(owner).Settings.AddChangeUser do
  begin
    IncUser.Caption := WindowCaption;
    if Adicionar then IncUser.LbDescricao.Caption := LabelAdd else IncUser.LbDescricao.Caption := LabelChange;
    IncUser.lbNome.Caption := LabelName;
    IncUser.lbLogin.Caption := LabelLogin;
    IncUser.lbEmail.Caption := LabelEmail;
    IncUser.ckPrivilegiado.Caption := CheckPrivileged;
    IncUser.lbPerfil.Caption := LabelPerfil;
    IncUser.btGravar.Caption := BtSave;
    IncUser.btCancela.Caption := BtCancel;
    IncUser.UCXPStyle.UCSettings := Self.UCXPStyle.UCSettings;
    IncUser.UCXPStyle.Active := Self.UCXPStyle.Active;
  end;
end;

procedure TCadUser.BtAltClick(Sender: TObject);
begin
  if DSCadUser.IsEmpty then Exit;
  IncUser := TIncUser.Create(Self);
  IncUser.UCComponent := Self.UCComponent;
  SetWindow(False);
  With IncUser do
  begin
    FAltera := True;
    EditNome.Text := DSCadUser.FieldByName('Nome').asString;
    EditLogin.Text := DSCadUser.FieldByName('Login').asString;
    EditEmail.Text := DSCadUser.FieldByName('Email').asString;
    ComboPerfil.KeyValue := DSCadUser.FieldByName('Perfil').asInteger;
    ckPrivilegiado.Checked := StrToBool(DSCadUser.FieldByName('Privilegiado').asString);
    ShowModal;
  end;
  FreeAndNil(IncUser);
end;

procedure TCadUser.BtExcluiClick(Sender: TObject);
var
  TempID : Integer;
  CanDelete : Boolean;
  ErrorMsg : String;
begin
  if DSCadUser.IsEmpty then Exit;
  TempID := DSCadUser.fieldByName('IDUser').asInteger;
  //changed by fduenas: using PromptDelete_WindowCaption and Format functiom
  if MessageBox(Handle, PChar(Format(UCComponent.Settings.UsersForm.PromptDelete, [DSCadUser.FieldByName('Login').asString])), PChar(UCComponent.Settings.UsersForm.PromptDelete_WindowCaption), MB_ICONQUESTION or MB_YESNO or MB_DEFBUTTON2) = idYes then
  begin
    CanDelete := True;
    if Assigned(UCComponent.onDeleteUser) then UCComponent.onDeleteUser(TObject(Owner),TempID, CanDelete, ErrorMsg);
    if not CanDelete then
    begin
      MessageDlg(ErrorMSG, mtWarning, [mbOK], 0);
      Exit;
    end;

    UCComponent.DataConnector.UCExecSQL('Delete from '+ UCComponent.TableRights.TableName + ' where '+UCComponent.TableRights.FieldUserID+' = '+ IntToStr(TempID));

    UCComponent.DataConnector.UCExecSQL('Delete from '+ UCComponent.TableUsers.TableName + ' where '+UCComponent.TableRights.FieldUserID+' = '+ IntToStr(TempID));
    DSCadUser.Close;
    DSCadUser.Open;
  end;
end;

procedure TCadUser.DBGrid1DblClick(Sender: TObject);
begin
  BtAlt.Click;
end;

procedure TCadUser.BtPassClick(Sender: TObject);
var
  FNovasenha : String;
  nome, login, email : String;
begin
  if DSCadUser.IsEmpty then Exit;
  if Inputquery(Format(UCComponent.Settings.ResetPassword.WindowCaption,[DSCadUser.FieldByName('Login').asString]), UCComponent.Settings.ResetPassword.LabelPassword ,FNovaSenha) then
  begin
{$IFDEF VER130}
{$ELSE}
    if (Assigned(UCComponent.MailUserControl)) and (UCComponent.MailUserControl.SenhaForcada.Ativo ) then
      try
        with DSCadUser do
        begin
          nome := fieldbyname('nome').asString;
          login := fieldbyname('login').asString;
          email := fieldbyname('email').asString;
        end;
        UCComponent.MailUserControl.EnviaEmailSenhaForcada(
           nome, login, FNovasenha, email, '');
      except
        on E : Exception do UCComponent.Log(e.Message, llWarning);
      end;
{$ENDIF}
    UCComponent.ChangePassword(DSCadUser.FieldByName('IDUser').asInteger, FNovaSenha);
  end;
end;

procedure TCadUser.DSCadUserAfterScroll(DataSet: TDataSet);
begin
  if (LockAdmin) and (Dataset.fieldbyname('Login').asString = TUserControl(Owner).Login.InitialLogin.User) then
  begin
    BtExclui.Enabled := False;
    BtPass.Enabled := False;
    if TUserControl(Owner).CurrentUser.Username <> TUserControl(Owner).Login.InitialLogin.User then BtAcess.Enabled := False;
  end else begin
    BtExclui.Enabled := True;
    BtPass.Enabled := True;
    BtAcess.Enabled := True;
  end;
end;

procedure TCadUser.FormShow(Sender: TObject);
begin
  LockAdmin := UCComponent.UsersForm.ProtectAdmin;

  with UCComponent do
  begin
    DSCadUser := DataConnector.UCGetSQLDataset(
      Format('Select %s as IdUser, %s as Login, %s as Nome, %s as Email, %s as Perfil, %s as Privilegiado, %s as Tipo, %s as Senha from %s Where %s  = %s ORDER BY %s',
             [TableUsers.FieldUserID, TableUsers.FieldLogin, TableUsers.FieldUserName, TableUsers.FieldEmail, TableUsers.FieldProfile, TableUsers.FieldPrivileged, TableUsers.FieldTypeRec, TableUsers.FieldPassword,
              TableUsers.TableName, TableUsers.FieldTypeRec, QuotedStr('U'), TableUsers.FieldLogin]) );


    DBGrid1.Columns[0].Title.Caption := Settings.UsersForm.ColName;
    DBGrid1.Columns[1].Title.Caption := Settings.UsersForm.ColLogin;
    DBGrid1.Columns[2].Title.Caption := Settings.UsersForm.ColEmail;

    DSPerfilUser := DataConnector.UCGetSQLDataset(
      Format('Select %s as IdUser, %s as Login, %s as Nome, %s as Tipo from %s Where %s  = %s ORDER BY %s',
           [TableUsers.FieldUserID, TableUsers.FieldLogin, TableUsers.FieldUserName, TableUsers.FieldTypeRec,
            TableUsers.TableName, TableUsers.FieldTypeRec, QuotedStr('P'), TableUsers.FieldUserName]) );

  end;
  
  DataSource1.Dataset :=  DSCadUser;
  DataSource2.Dataset :=  DSPerfilUser;
  DSCadUser.AfterScroll := DSCadUserAfterScroll;
  DSCadUserAfterScroll(DSCadUser);
end;

end.
