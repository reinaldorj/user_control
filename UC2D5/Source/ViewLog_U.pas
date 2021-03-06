unit ViewLog_U;

interface

uses
{$IFDEF Ver130}
{$ELSE}
  Variants,
{$ENDIF}
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, DB, UCBase,
  Buttons, ComCtrls, ImgList, UCConsts, UCXPMenu;

type
  TViewLog = class(TForm)
    Panel1: TPanel;
    lbDescricao: TLabel;
    Image1: TImage;
    Panel2: TPanel;
    Splitter1: TSplitter;
    Panel3: TPanel;
    lbUsuario: TLabel;
    ComboUsuario: TComboBox;
    Bevel1: TBevel;
    lbData: TLabel;
    data1: TDateTimePicker;
    data2: TDateTimePicker;
    Bevel2: TBevel;
    lbNivel: TLabel;
    ComboNivel: TComboBox;
    btfiltro: TBitBtn;
    Bevel3: TBevel;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    ImageList1: TImageList;
    btfecha: TBitBtn;
    btexclui: TBitBtn;
    UCXPStyle: TUCXPStyle;
    procedure FormCreate(Sender: TObject);
    procedure ComboNivelDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ComboUsuarioChange(Sender: TObject);
    procedure btfechaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btexcluiClick(Sender: TObject);
    procedure data1Change(Sender: TObject);
    procedure btfiltroClick(Sender: TObject);
  private
    procedure AplicaFiltro;

  public
    ListIdUser : TStringList;
    DSLog, DSCmd : TDataset;

    UCComponent : TUserControl;
  end;

{var
  ViewLog: TViewLog;}

implementation

uses UCDataInfo;
{$R *.dfm}

procedure TViewLog.FormCreate(Sender: TObject);
begin
  ComboNivel.Items.Clear;
  ComboNivel.Items.Append(Const_LogC_Low);        //BGM
  ComboNivel.Items.Append(Const_LogC_Normal);     //BGM
  ComboNivel.Items.Append(Const_LogC_High);       //BGM
  ComboNivel.Items.Append(Const_LogC_Critic);     //BGM
  ComboNivel.ItemIndex := 0;
  ComboUsuario.Items.Clear;
  ListIdUser := TStringList.Create;
  data1.Date := EncodeDate(StrToInt(FormatDateTime('yyyy',date)),1,1);
  data2.DateTime := now;

end;

procedure TViewLog.ComboNivelDrawItem(Control: TWinControl; Index: Integer;
  Rect: TRect; State: TOwnerDrawState);
var
  TempImg : TBitmap;
begin
  TempImg := TBitmap.Create;
  Imagelist1.GetBitmap(index,TempImg);
  ComboNivel.Canvas.Draw(Rect.Left+2,Rect.Top+1, TempImg);
  ComboNivel.Canvas.TextRect(Rect,Rect.Left+20,Rect.Top +2, ComboNivel.items[index]);
  ComboNivel.Canvas.Draw(Rect.Left+2,Rect.Top+1, TempImg);
  FreeAndNil(TempImg);
end;

procedure TViewLog.FormShow(Sender: TObject);
var
  FTabLog : String;
begin
  with TUserControl(Owner) do
    DSCmd := DataConnector.UCGetSQLDataset(
      Format('Select %s as idUser, %s as Nome from %s where %s  = %s order by %s',
                                             [TableUsers.FieldUserID, TableUsers.FieldUserName, TableUsers.TableName, TableUsers.FieldTypeRec,
                                              QuotedStr('U'), TableUsers.FieldUserName]) );
  ComboUsuario.Items.Append(Const_LogC_Todos);     //BGM
  ListIdUser.Append('0');
  while not DSCMD.eof do
  begin
    ComboUsuario.Items.Append(DSCMD.FieldByName('Nome').asString);
    ListIdUser.Append(DSCMD.FieldByName('idUser').asString);
    DSCMD.Next;
  end;
  DSCMD.Close;
  FreeAndNil(DSCMD);

  ComboUsuario.ItemIndex := 0;


  FTabLog := TUserControl(Owner).LogControl.TableLog;
  with TUserControl(Owner) do
    DSLog := DataConnector.UCGetSQLDataset('Select TabUser.'+TableUsers.FieldUserName+ ' as nome, ' + FTabLog+'.* from '+FTabLog +
                          ' Left outer join '+ TableUsers.TableName + ' TabUser on '+ FTabLog+'.idUser = TabUser.'+TableUsers.FieldUserID+
                          ' Where (data >=' + QuotedStr(FormatDateTime('yyyyMMddhhmmss',data1.DateTime)) + ') and (Data<='+ QuotedStr(FormatDateTime('yyyyMMddhhmmss',data2.DateTime)) +') order by data desc');
  DataSource1.Dataset := DSLog;
end;

procedure TViewLog.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  TempImg : TBitmap;
  FData : TDateTime;
  TempData : String;
begin
  if DSLog.IsEmpty then Exit;
  if LowerCase(Column.FieldName) = 'nivel' then begin
    TempImg := TBitmap.Create;
    imagelist1.GetBitmap( Column.Field.AsInteger , TempImg);
    DbGrid1.Canvas.Draw(rect.Left+5,rect.Top,Tempimg);
    FreeAndNil(TempImg);
  end else if LowerCase(Column.FieldName) = 'data' then begin
    TempData := Column.Field.AsString;
    FData := EncodeDate( StrToInt(Copy(Tempdata,1,4)), StrToInt(Copy(Tempdata,5,2)), StrToInt(Copy(Tempdata,7,2)) ) +
             EncodeTime( StrToInt(Copy(TempData, 9,2)), StrToInt(Copy(TempData,11,2)), StrToInt(Copy(TempData,13,2)),0);
    DbGrid1.Canvas.TextRect(Rect,Rect.Left+2,Rect.Top+2, DateTimeToStr(FData));
  end else DbGrid1.Canvas.TextRect(Rect,Rect.Left+2,Rect.Top+2, Column.Field.AsString);
end;

procedure TViewLog.ComboUsuarioChange(Sender: TObject);
begin
  btFiltro.Enabled := True;
end;

procedure TViewLog.btfechaClick(Sender: TObject);
begin
  Close;
end;

procedure TViewLog.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := caFree;
end;

procedure TViewLog.btexcluiClick(Sender: TObject);
var
  FTabLog, Temp : String;
begin
  if MessageDlg(Const_LogC_ConfirmaExcluir, mtConfirmation, [mbYes,mbNo], 0) <> mrYes then exit;
  btFiltro.Enabled := False;
  FTabLog := TUserControl(Owner).LogControl.TableLog;
  Temp := 'Delete from '+FTabLog +
                        ' Where (data >=' + QuotedStr(FormatDateTime('yyyyMMddhhmmss',data1.DateTime)) + ') and (Data<='+ QuotedStr(FormatDateTime('yyyyMMddhhmmss',data2.DateTime)) +
                        ' ) and nivel >= ' + IntToStr(ComboNivel.ItemIndex);

  if ComboUsuario.ItemIndex > 0 then
    Temp := Temp + ' and '+FTabLog+'.idUser = ' + ListIdUser[ComboUsuario.ItemIndex];

  try
    TUserControl(Owner).DataConnector.UCExecSQL(Temp);
    AplicaFiltro;
    DBGrid1.Repaint;
  except
  end;

  TUserControl(Owner).Log(Format('Efetuada exclus�o de log do sistema : Usu�rio = "%s" | Data = %s a %s | N�vel <= %s',[comboUsuario.text, DateTimeToStr(Data1.datetime), DateTimeToStr(Data2.datetime), ComboNivel.text ]),2);

end;

procedure TViewLog.data1Change(Sender: TObject);
begin
  btFiltro.Enabled := True;
end;

procedure TViewLog.btfiltroClick(Sender: TObject);
begin
  AplicaFiltro;
end;

procedure TViewLog.AplicaFiltro;
var
  FTabUser, FTabLog : String;
  Temp : String;
begin
  btFiltro.Enabled := False;
  DSLog.Close;
  FTabLog := TUserControl(Owner).LogControl.TableLog;
  FTabUser := TUserControl(Owner).TableUsers.TableName;

  Temp := Format('Select TabUser.'+TUserControl(Owner).TableUsers.FieldUserName+ ' as nome, '+FTabLog+'.* from '+FTabLog +
          ' Left outer join %s TabUser on '+ FTabLog+'.idUser = TabUser.%s '+
          ' Where (data >=' + QuotedStr(FormatDateTime('yyyyMMddhhmmss',data1.DateTime)) + ') and (Data<='+ QuotedStr(FormatDateTime('yyyyMMddhhmmss',data2.DateTime)) +
          ' ) and nivel >= ' + IntToStr(ComboNivel.ItemIndex),
          [TUserControl(Owner).TableUsers.TableName, TUserControl(Owner).TableUsers.FieldUserID]);
  if ComboUsuario.ItemIndex > 0 then Temp := Temp + ' and '+FTabLog+'.idUser = ' + ListIdUser[ComboUsuario.ItemIndex];
  Temp := Temp +' order by data desc';

  FreeAndNil(DSLog);
  DataSource1.DataSet := nil;
  DSLog := TUserControl(Owner).DataConnector.UCGetSQLDataset(Temp);
  DataSource1.DataSet := DSLog;
  btexclui.Enabled := not DsLog.IsEmpty;
end;

end.
