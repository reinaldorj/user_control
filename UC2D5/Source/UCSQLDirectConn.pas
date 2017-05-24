unit UCSQLDirectConn;

interface

uses
  SysUtils, Classes, UCBase, DB, SDEngine, SDCommon, TZUtils, Dialogs;

type
  TUCSQLDirectConn = class(TUCDataConn)
  private
    FConnection : TSDDatabase;
    procedure SetSQLDirectConnection(const Value: TSDDatabase);
  protected
    procedure Notification(AComponent: TComponent; Operation: TOperation);override;
  public
    function GetDBObjectName : String; override;
    function UCFindDataConnection : Boolean; override;
    function UCFindTable(const Tablename : String) : Boolean; override;
    function UCGetSQLDataset(FSQL : String) : TDataset; override;
    procedure UCExecSQL(FSQL: String);override;
  published
    property Connection : TSDDatabase read FConnection write SetSQLDirectConnection;
  end;

implementation

{ TUCSQLDirectConn }


procedure TUCSQLDirectConn.Notification(AComponent: TComponent;
  Operation: TOperation);
begin
  if (Operation = opRemove) and (AComponent = FConnection) then FConnection := nil;
  inherited Notification(AComponent, Operation);
end;

function TUCSQLDirectConn.UCFindTable(const TableName: String): Boolean;
var
  TempList : TStringList;
  I: Integer;
begin
  try
    TempList := TStringList.Create;
    FConnection.GetTableNames('', False, TempList);

    //SQLDirect by default return the name of a table with the name of the owner
    //owner.tablename. Here, we only need the table name, so we remove 'owner.'
    //to get the tablename only.
    for i := (TempList.Count - 1) downto 0 do
    begin
      TempList.Strings[I] := UpperCase(After('.', TempList.Strings[I]));
    end;
    Result := TempList.IndexOf(UpperCase(TableName)) > -1;

//    showmessage(TempList.Text);  //Debug - Delete
  finally
    FreeAndNil(TempList);
  end;
end;

function TUCSQLDirectConn.UCFindDataConnection: Boolean;
begin
    Result := Assigned(FConnection) and (FConnection.Connected);
end;

function TUCSQLDirectConn.GetDBObjectName: String; 
begin
  if Assigned(FConnection) then
  begin
    if Owner = FConnection.Owner then Result := FConnection.Name
    else begin
      Result := FConnection.Owner.Name+'.'+FConnection.Name;
    end;
  end else Result := '';
end;

procedure TUCSQLDirectConn.UCExecSQL(FSQL: String);
begin
  with TSDQuery.Create(nil) do
  begin
    DatabaseName := FConnection.DatabaseName;
    if not FConnection.InTransaction then
      FConnection.StartTransaction;
    SQL.Text := FSQL;
    ExecSQL;
    FConnection.Commit;
    Free;
  end;
end;

function TUCSQLDirectConn.UCGetSQLDataset(FSQL: String): TDataset;
begin
  Result := TSDQuery.Create(nil);
  with Result as TSDQuery do
  begin
    DatabaseName := FConnection.DatabaseName;
    SQL.text := FSQL;
    Open;
  end;
end;

procedure TUCSQLDirectConn.SetSQLDirectConnection(const Value: TSDDatabase);
begin
  if FConnection <> Value then FConnection := Value;
  if FConnection <> nil then FConnection.FreeNotification(Self);
end;


end.
