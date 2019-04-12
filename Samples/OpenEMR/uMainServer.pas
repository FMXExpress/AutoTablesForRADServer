unit uMainServer;

// EMS Resource Module

interface

uses
  System.SysUtils, System.Classes, System.JSON,
  EMS.Services, EMS.ResourceAPI, EMS.ResourceTypes, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Stan.StorageBin, Data.DB, FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, FireDAC.ConsoleUI.Wait, Data.Bind.EngExt, System.Rtti,
  System.Bindings.Outputs, Data.Bind.Components, Data.Bind.DBScope,
  FireDAC.Stan.StorageJSON, FireDAC.Comp.Client, FireDAC.Phys.SQLiteVDataSet,
  FireDAC.Comp.DataSet, System.Variants, FireDAC.Phys.IBDef, FireDAC.Phys.MySQL,
  FireDAC.Phys.IBBase, FireDAC.Comp.BatchMove.DataSet, FireDAC.Comp.BatchMove,
  FireDAC.Comp.BatchMove.Text, FireDAC.Comp.UI
  {$IFDEF MSWINDOWS}
  , Windows
  {$ENDIF}
  {$IFDEF LINUX}
  , Posix.Base, Posix.Fcntl
  {$ENDIF}
  ;

type
{$IFDEF LINUX}
  TStreamHandle = pointer;
{$ENDIF}
  TMyFuncType = function(AContext: TEndpointContext; ARequest: TEndpointRequest; AResponse: TEndpointResponse): TMemoryStream of object;
  [ResourceName('v1')]
  TAutoTablesResource = class(TDataModule)
    EndpointQuery: TFDQuery;
    EndPointTable: TFDMemTable;
    BindingsList1: TBindingsList;
    FDStanStorageJSONLink1: TFDStanStorageJSONLink;
    EndPoints: TBindSourceDB;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    FDConnection: TFDConnection;
    AggregateSQL: TFDMemTable;
    FDBatchMoveCSV: TFDBatchMove;
    FDBatchMoveTextWriter: TFDBatchMoveTextWriter;
    FDBatchMoveDataSetReader: TFDBatchMoveDataSetReader;
  private

    procedure SaveDataSetToCSV(ADataSet: TFDDataSet; AStream: TStream);
    procedure SaveDataSetToStream(ADataSet: TFDDataSet; AStream: TStream; AContext: TEndpointContext);
    function GetFormatMimeType(AContext: TEndpointContext): String;
    function GetStorageFormat(const AFormat: String): TFDStorageFormat;
    procedure ResolveCustomMacros(const AMacros: String; AQuery: TFDQuery; ARequest: TEndpointRequest);
    procedure ResolveCustomParams(const AParams: String; AQuery: TFDQuery; ARequest: TEndpointRequest);
    procedure ResolveDefaultParams(AQuery: TFDQuery; AContext: TEndpointContext);
    function PermissionsCheck(const AGroups: string; AContext: TEndpointContext): Boolean;    function ProcessRequest(const EndPoint, RequestType: String; AContext: TEndpointContext; ARequest: TEndpointRequest; AResponse: TEndpointResponse): TMemoryStream;
    function ProcessGet(const EndPoint: String; AContext: TEndpointContext; ARequest: TEndpointRequest; AResponse: TEndpointResponse): TMemoryStream;
    function ProcessPost(const EndPoint: String; AContext: TEndpointContext; ARequest: TEndpointRequest; AResponse: TEndpointResponse): TMemoryStream;
    function ProcessDelete(const EndPoint: String; AContext: TEndpointContext; ARequest: TEndpointRequest; AResponse: TEndpointResponse): TMemoryStream;
    procedure SetResponseStatus(StatusResult,StatusMessage: String; var ResponseStream: TMemoryStream);
    function GetTableGenerator(AConnection: TFDConnection; ATableName: String): String;
  published
    function customMethod(AContext: TEndpointContext; ARequest: TEndpointRequest; AResponse: TEndpointResponse): TMemoryStream;
    function Call(MethodName: string; AContext: TEndpointContext; ARequest: TEndpointRequest; AResponse: TEndpointResponse): TMemoryStream;
    [ResourceSuffix('{endpoint}/')]
    procedure Get(const AContext: TEndpointContext; const ARequest: TEndpointRequest; const AResponse: TEndpointResponse);
    [ResourceSuffix('{endpoint}/')]
    procedure Post(const AContext: TEndpointContext; const ARequest: TEndpointRequest; const AResponse: TEndpointResponse);
    [ResourceSuffix('{endpoint}/')]
    procedure DeleteItem(const AContext: TEndpointContext; const ARequest: TEndpointRequest; const AResponse: TEndpointResponse);
  end;
  const
    GET_REQUEST_TYPE = 'GET';
    POST_REQUEST_TYPE = 'POST';
    DELETE_REQUEST_TYPE = 'DELETE';

    CSV_MIME_TYPE = 'text/csv';
    XML_MIME_TYPE = 'application/xml';
    JSON_MIME_TYPE = 'application/json';
    BINARY_MIME_TYPE = 'application/octet-stream';

    CSV_FORMAT = 'CSV';
    XML_FORMAT = 'XML';
    BINARY_FORMAT = 'BINARY';

    FIELD_ENDPOINT = 'EndPoint';
    FIELD_REQUESTTYPE = 'RequestType';
    FIELD_ACTION = 'Action';
    FIELD_TABLENAME = 'TableName';
    FIELD_SQL = 'SQL';
    FIELD_METHOD = 'Method';
    FIELD_PARAMS = 'Params';
    FIELD_MACROS = 'Macros';
    FIELD_GROUPS = 'Groups';
    FIELD_UNIQUEID = 'UniqueID';

{$IFDEF LINUX}
  function popen(const command: MarshaledAString; const _type: MarshaledAString): TStreamHandle; cdecl; external libc name _PU + 'popen';
  function pclose(filehandle: TStreamHandle): int32; cdecl; external libc name _PU + 'pclose';
  function fgets(buffer: pointer; size: int32; Stream: TStreamHAndle): pointer; cdecl; external libc name _PU + 'fgets';
{$ENDIF}
 

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

{$IFDEF MSWINDOWS}
// https://stackoverflow.com/questions/1454501/how-do-i-run-a-command-line-program-in-delphi
function GetDosOutput(CommandLine: string; Work: string = 'C:\'): string;  { Run a DOS program and retrieve its output dynamically while it is running. }
var
  SecAtrrs: TSecurityAttributes;
  StartupInfo: TStartupInfo;
  ProcessInfo: TProcessInformation;
  StdOutPipeRead, StdOutPipeWrite: THandle;
  WasOK: Boolean;
  pCommandLine: array[0..255] of AnsiChar;
  BytesRead: Cardinal;
  WorkDir: string;
  Handle: Boolean;
begin
  Result := '';
  with SecAtrrs do begin
    nLength := SizeOf(SecAtrrs);
    bInheritHandle := True;
    lpSecurityDescriptor := nil;
  end;
  CreatePipe(StdOutPipeRead, StdOutPipeWrite, @SecAtrrs, 0);
  try
    with StartupInfo do
    begin
      FillChar(StartupInfo, SizeOf(StartupInfo), 0);
      cb := SizeOf(StartupInfo);
      dwFlags := STARTF_USESHOWWINDOW or STARTF_USESTDHANDLES;
      wShowWindow := SW_HIDE;
      hStdInput := GetStdHandle(STD_INPUT_HANDLE); // don't redirect stdin
      hStdOutput := StdOutPipeWrite;
      hStdError := StdOutPipeWrite;
    end;
    WorkDir := Work;
    Handle := CreateProcess(nil, PChar('cmd.exe /C ' + CommandLine),
                            nil, nil, True, 0, nil,
                            PChar(WorkDir), StartupInfo, ProcessInfo);
    CloseHandle(StdOutPipeWrite);
    if Handle then
      try
        repeat
          WasOK := windows.ReadFile(StdOutPipeRead, pCommandLine, 255, BytesRead, nil);
          if BytesRead > 0 then
          begin
            pCommandLine[BytesRead] := #0;
            Result := Result + pCommandLine;
          end;
        until not WasOK or (BytesRead = 0);
        WaitForSingleObject(ProcessInfo.hProcess, INFINITE);
      finally
        CloseHandle(ProcessInfo.hThread);
        CloseHandle(ProcessInfo.hProcess);
      end;
  finally
    CloseHandle(StdOutPipeRead);
  end;
end;
{$ENDIF}

{$IFDEF LINUX}
// https://stackoverflow.com/questions/44415054/execute-external-program-from-linux-delphi-10-2-console-application
function GetLinuxOutput(ACommand : string) : TStringList;
var
  Handle: TStreamHandle;
  Data: array[0..511] of uint8;
  M : TMarshaller;
 
begin
  Result := TStringList.Create;
  try
    Handle := popen(M.AsAnsi(PWideChar(ACommand)).ToPointer,'r');
    try
      while fgets(@data[0],Sizeof(Data),Handle)<>nil do begin
        Result.Add(Copy(UTF8ToString(@Data[0]),1,UTF8ToString(@Data[0]).Length -1));//,sizeof(Data)));
      end;
    finally
      pclose(Handle);
    end;
  except
    on E: Exception do
      Result.Add(E.ClassName + ': ' + E.Message);
  end;
end;
{$ENDIF}




function TAutoTablesResource.customMethod(AContext: TEndpointContext; ARequest: TEndpointRequest; AResponse: TEndpointResponse): TMemoryStream;
var
StatusResult, StatusMessage: String;
begin
  try
{$IFDEF MSWINDOWS}
    StatusMessage := GetDosOutput('schtasks','');
{$ENDIF}
  except
    on E: Exception do
     begin
       StatusMessage := E.Message;
     end;
  end;
  Result := TMemoryStream.Create;
  StatusResult := 'ok';
  SetResponseStatus(StatusResult,StatusMessage,Result);
end;

procedure TAutoTablesResource.ResolveCustomMacros(const AMacros: String; AQuery: TFDQuery; ARequest: TEndpointRequest);
var
I: Integer;
SL: TStringList;
begin
  if AMacros<>'' then
    begin
      SL := TStringList.Create;
      SL.StrictDelimiter := True;
      SL.CommaText := AMacros;
      for I := 0 to SL.Count-1 do
        begin
          EndPointQuery.MacroByName(SL[I]).AsRaw := ARequest.Params.Values[SL[I]];
        end;
      SL.Free;
    end;
end;

procedure TAutoTablesResource.ResolveCustomParams(const AParams: String; AQuery: TFDQuery; ARequest: TEndpointRequest);
var
I: Integer;
SL: TStringList;
begin
  if AParams<>'' then
    begin
      SL := TStringList.Create;
      SL.StrictDelimiter := True;
      SL.CommaText := AParams;
      for I := 0 to SL.Count-1 do
        begin
          EndPointQuery.ParamByName(SL[I]).AsString := ARequest.Params.Values[SL[I]];
        end;
      SL.Free;
    end;
end;

procedure TAutoTablesResource.ResolveDefaultParams(AQuery: TFDQuery; AContext: TEndpointContext);
var
AStream: TStringStream;
AUserId, AUsername, ATenantId: String;
begin
  if AContext.User<>nil then
     AUserId := AContext.User.UserId;

  if AContext.User<>nil then
     AUsername := AContext.User.UserName;

  if AContext.Tenant<>nil then
     ATenantId := AContext.Tenant.Id;

  if EndPointQuery.SQL.Text.IndexOf(':UserId')>-1 then
    begin
       AQuery.ParamByName('UserId').AsString := AUserId;
    end;

  if AQuery.SQL.Text.IndexOf(':UserName')>-1 then
    begin
       AQuery.ParamByName('UserName').AsString := AUserName;
    end;

  if AQuery.SQL.Text.IndexOf(':TenantId')>-1 then
    begin
       AQuery.ParamByName('TenantId').AsString := ATenantId;
    end;

  if AQuery.SQL.Text.IndexOf(':Body')>-1 then
    begin
       AStream := TStringStream.Create;
       if AContext.Request.Body.TryGetStream(TStream(AStream)) = True then
         begin
          AStream.Position := 0;
          AQuery.ParamByName('Body').AsString := AStream.DataString;
         end;
       AStream.Free;
    end;

end;

function TAutoTablesResource.PermissionsCheck(const AGroups: string; AContext: TEndpointContext): Boolean;
begin
  Result := False;
  if AGroups<>'' then
    begin
      if AContext.User<>nil then
       if AContext.User.Groups<>nil then
        if (AContext.User.Groups.Contains(AGroups)=True) then
           Result := True;
    end
  else
   begin
     Result := True;
   end;
end;

procedure TAutoTablesResource.SetResponseStatus(StatusResult,StatusMessage: String; var ResponseStream: TMemoryStream);
var
  StrStream: TStringStream;
  JSONStatus: TJSONObject;
begin
  StrStream := TStringStream.Create;
  JSONStatus := TJSONObject.Create;
  JSONStatus.AddPair('status', StatusResult);
  if StatusMessage<>'' then JSONStatus.AddPair('message', StatusMessage);
  StrStream.WriteString(JSONStatus.ToJSON);
  StrStream.Position := 0;
  JSONStatus.Free;
  StrStream.SavetoStream(ResponseStream);
end;

// https://stackoverflow.com/questions/4186458/delphi-call-a-function-whose-name-is-stored-in-a-string
function TAutoTablesResource.Call(MethodName: string; AContext: TEndpointContext; ARequest: TEndpointRequest; AResponse: TEndpointResponse): TMemoryStream;
var M: TMethod;
begin
  M.Code := Self.MethodAddress(MethodName); //find method code
  M.Data := Pointer(Self); //store pointer to object instance
  Result := TMyFuncType(m)(AContext, ARequest, AResponse);
end;

procedure TAutoTablesResource.SaveDataSetToCSV(ADataSet: TFDDataSet; AStream: TStream);
begin
  FDBatchMoveDataSetReader.DataSet := ADataSet;
  FDBatchMoveTextWriter.Stream := TMemoryStream.Create;
  FDBatchMoveCSV.Execute;
  TMemoryStream(FDBatchMoveTextWriter.Stream).Position := 0;
  TMemoryStream(FDBatchMoveTextWriter.Stream).SaveToStream(AStream);
  TMemoryStream(FDBatchMoveTextWriter.Stream).Free;
end;

procedure TAutoTablesResource.SaveDataSetToStream(ADataSet: TFDDataSet; AStream: TStream; AContext: TEndpointContext);
var
AFormat: String;
begin
  AContext.Request.Params.TryGetValue('format',AFormat);
  if SameText(AFormat,CSV_FORMAT) then
    begin
      SaveDataSetToCSV(ADataSet,AStream);
    end
   else
    ADataSet.SaveToStream(AStream,GetStorageFormat(AFormat));
end;

function TAutoTablesResource.ProcessGet(const EndPoint: String; AContext: TEndpointContext; ARequest: TEndpointRequest; AResponse: TEndpointResponse): TMemoryStream;
var
DataTable: TFDTable;
SL: TStringList;
I, II: Integer;
StatusResult,StatusMessage: String;
SQLList: TStringList;
begin
  Result := TMemoryStream.Create;
  if EndPoints.DataSet.Locate('EndPoint;RequestType',VarArrayOf([EndPoint,'GET']),[])=True then
    begin
      if PermissionsCheck(EndPoints.DataSet.FieldByName(FIELD_GROUPS).AsString,AContext)=True then
        begin
{          if EndPoints.DataSet.FieldByName(FIELD_ACTION).AsString='Table' then
            begin
              DataTable := TFDTable.Create(Self);

              DataTable.Connection := FDConnectionIB;
              //DataTable.LocalSQL := FDLocalSQL1;
              DataTable.Open(EndPoints.DataSet.FieldByName(FIELD_TABLENAME).AsString);

              DataTable.SaveToStream(Result,GetStorageFormat(AContext));
              DataTable.Close;
              DataTable.Free;
            end
          else }
          if (EndPoints.DataSet.FieldByName(FIELD_ACTION).AsString='SQL') OR (EndPoints.DataSet.FieldByName(FIELD_ACTION).AsString='Table') then
            begin
              if (EndPoints.DataSet.FieldByName(FIELD_ACTION).AsString='Table') then
                begin
                  EndPointQuery.SQL.Text := 'SELECT * FROM !TableName';
                  EndPointQuery.MacroByName('TableName').AsRaw := EndPoints.DataSet.FieldByName(FIELD_TABLENAME).AsString;
                end
              else
                EndPointQuery.SQL.Text := EndPoints.DataSet.FieldByName(FIELD_SQL).AsString;

              ResolveCustomMacros(EndPoints.DataSet.FieldByName(FIELD_MACROS).AsString, EndPointQuery, ARequest);

              ResolveCustomParams(EndPoints.DataSet.FieldByName(FIELD_PARAMS).AsString, EndPointQuery, ARequest);

              ResolveDefaultParams(EndPointQuery, AContext);

              EndPointQuery.Open;

              SaveDataSetToStream(EndPointQuery,Result,AContext);
            end
          else
          if EndPoints.DataSet.FieldByName(FIELD_ACTION).AsString='AggregateSQL' then
            begin
              SQLList := TStringList.Create;
              SQLList.Text := EndPoints.DataSet.FieldByName(FIELD_SQL).AsString;

              for I := 0 to SQLList.Count-1 do
                begin
                  AggregateSQL.FieldDefs.Add(SQLList.Names[I],ftMemo);
                end;

              AggregateSQL.Open;
              AggregateSQL.Edit;
              for I := 0 to SQLList.Count-1 do
                begin
                  EndPointQuery.SQL.Text := SQLList.ValueFromIndex[I];

                  ResolveCustomMacros(EndPoints.DataSet.FieldByName(FIELD_MACROS).AsString, EndPointQuery, ARequest);

                  ResolveCustomParams(EndPoints.DataSet.FieldByName(FIELD_PARAMS).AsString, EndPointQuery, ARequest);

                  ResolveDefaultParams(EndPointQuery, AContext);

                  EndPointQuery.Open;

                  EndPointQuery.First;

                  AggregateSQL.FieldByName(SQLList.Names[I]).AsString := EndPointQuery.FieldByName(SQLList.Names[I]).AsString;
                  EndPointQuery.Close;
                end;
              AggregateSQL.Post;

              SQLList.Free;

              SaveDataSetToStream(AggregateSQL,Result,AContext);
            end
          else
          if EndPoints.DataSet.FieldByName(FIELD_ACTION).AsString='Method' then
            begin
              try
                Result := Call(EndPoints.DataSet.FieldByName(FIELD_METHOD).AsString, AContext, ARequest, AResponse);
              except
                on E: Exception do
                 begin
                   AResponse.RaiseBadRequest('Bad Request',E.Message);
                 end;
              end;
            end;
        end
       else
        AResponse.RaiseUnauthorized('Unauthorized','Group permissions do not allow access to this endpoint.');
    end
   else
    AResponse.RaiseNotFound('Not Found','Requested endpoint not found.');
end;

function TAutoTablesResource.GetTableGenerator(AConnection: TFDConnection; ATableName: String): String;
var
QuerySource: String;
GenQuery: TFDQuery;
AGenName: String;
begin
  if (AConnection.DriverName='IB') OR (AConnection.DriverName='FB') OR (AConnection.DriverName='IBLITE') then
    begin
      GenQuery := TFDQuery.Create(Self);
      GenQuery.Connection := AConnection;
      GenQuery.Open('SELECT T.RDB$TRIGGER_SOURCE FROM RDB$TRIGGERS T, RDB$TYPES Y'+' WHERE T.RDB$RELATION_NAME=:P1 AND	T.RDB$TRIGGER_NAME NOT LIKE ''CHECK%'' AND Y.RDB$FIELD_NAME=''RDB$TRIGGER_TYPE'' AND Y.RDB$TYPE_NAME=''PRE_STORE'' AND T.RDB$TRIGGER_TYPE=Y.RDB$TYPE',[ATableName]);
      GenQuery.First;
      if GenQuery.FindField('RDB$TRIGGER_SOURCE')<>nil then
        begin
          QuerySource := GenQuery.FieldByName('RDB$TRIGGER_SOURCE').AsWideString;
          AGenName := QuerySource.Substring(QuerySource.IndexOf('GEN_ID(')+7);
          AGenName := AGenName.Replace(AGenName.Substring(AGenName.IndexOf(',')),'');
          Result := AGenName;
        end;
      GenQuery.Close;
      GenQuery.Free;
    end
  else if (AConnection.DriverName='Ora') then
    begin
      // Getting sequence name for Oracle is untested
      //GenQuery := TFDQuery.Create(Self);
      //GenQuery.Connection := AConnection;
      //GenQuery.Open('SELECT trigger_body FROM user_triggers WHERE table_name = :P1 AND triggering_event = 'INSERT' AND UPPER(dbms_metadata.get_ddl ('TRIGGER', trigger_name)) LIKE ''%PROCESO_ID_SEQ%''',[ATableName]);
      //GenQuery.First;
      //if GenQuery.FindField('trigger_body')<>nil then
      //  begin
      //    QuerySource := GenQuery.FieldByName('trigger_body').AsWideString;
      //    AGenName := QuerySource.Substring(QuerySource.IndexOf(' := ')+4);
      //    AGenName := AGenName.Replace(AGenName.Substring(AGenName.IndexOf('.nextval')),'');
      //    Result := AGenName;
      //  end;
      //GenQuery.Close;
      //GenQuery.Free;
    end;
   
end;

function TAutoTablesResource.ProcessPost(const EndPoint: String; AContext: TEndpointContext; ARequest: TEndpointRequest; AResponse: TEndpointResponse): TMemoryStream;
var
I, II: Integer;
AStream: TStream;
ResponseTable: TFDMemTable;
RequestTable: TFDMemTable;
DataTable: TFDQuery;
SL: TStringList;
CanPostData: Boolean;
AggregateSQL: TFDMemTable;
SQLList: TStringList;
AGenName: String;
begin
  Result := TMemoryStream.Create;
  if EndPoints.DataSet.Locate('EndPoint;RequestType',VarArrayOf([EndPoint,'POST']),[])=True then
    begin
      if PermissionsCheck(EndPoints.DataSet.FieldByName(FIELD_GROUPS).AsString,AContext)=True then
        begin
          if EndPoints.DataSet.FieldByName(FIELD_TABLENAME).AsString<>'' then
            begin
              RequestTable := TFDMemTable.Create(Self);
              if ARequest.Body.TryGetStream(AStream)=True then
                begin
                  if ARequest.Body.ContentType='application/json' then
                    RequestTable.LoadFromStream(AStream,TFDStorageFormat.sfJSON)
                  else
                  if (ARequest.Body.ContentType='application/xml') OR (ARequest.Body.ContentType='text/xml') then
                    RequestTable.LoadFromStream(AStream,TFDStorageFormat.sfXML)
                  else
                    RequestTable.LoadFromStream(AStream,TFDStorageFormat.sfBINARY)
                end;
              RequestTable.First;

              DataTable := TFDQuery.Create(Self);

              DataTable.Connection := FDConnection;
              //DataTable.LocalSQL := FDLocalSQL1;
              DataTable.SQL.Text := 'SELECT * FROM ' + EndPoints.DataSet.FieldByName(FIELD_TABLENAME).AsString + ' WHERE ' + EndPoints.DataSet.FieldByName(FIELD_UNIQUEID).AsString + '=&UniqueId';
              DataTable.MacroByName('UniqueId').AsString := RequestTable.FieldByName(EndPoints.DataSet.FieldByName(FIELD_UNIQUEID).AsString).AsString;
              DataTable.Open;

              AGenName := GetTableGenerator(FDConnection, EndPoints.DataSet.FieldByName(FIELD_TABLENAME).AsString);

              ResponseTable := TFDMemTable.Create(Self);
              ResponseTable.FieldDefs.Add(EndPoints.DataSet.FieldByName(FIELD_UNIQUEID).AsString,TFieldType.ftLargeint);
              ResponseTable.Open;

              while not RequestTable.EOF do
                begin
                  CanPostData := False;

                  if RequestTable.FieldByName(EndPoints.DataSet.FieldByName(FIELD_UNIQUEID).AsString).AsInteger=0 then
                    begin
                      DataTable.Append;
                      CanPostData := True;
                    end
                  else
                    begin
                      if DataTable.Locate(EndPoints.DataSet.FieldByName(FIELD_UNIQUEID).AsString,RequestTable.FieldByName(EndPoints.DataSet.FieldByName(FIELD_UNIQUEID).AsString).AsString,[])=True then
                       begin
                        DataTable.Edit;
                        CanPostData := True;
                       end
                      else
                        AResponse.RaiseNotFound('Not Found','Unique ID not found.');
                    end;

                  if CanPostData=True then
                    begin
                      for I := 0 to DataTable.FieldDefs.Count-1 do
                        begin
                          if DataTable.FieldDefs.Items[I].Name.ToUpper=EndPoints.DataSet.FieldByName(FIELD_UNIQUEID).AsString then
                            begin
                              DataTable.FieldByName(DataTable.FieldDefs.Items[I].Name).Required := False;
                            end
                          else
                            begin
                              if RequestTable.FieldDefs.Find(DataTable.FieldDefs.Items[I].Name)<>nil then
                                begin
                                  DataTable.FieldByName(DataTable.FieldDefs.Items[I].Name).AsString := RequestTable.FieldByName(DataTable.FieldDefs.Items[I].Name).AsString;
                                end;
                            end;
                        end;
                      DataTable.Post;
                      if RequestTable.FieldByName(EndPoints.DataSet.FieldByName(FIELD_UNIQUEID).AsString).AsInteger=0 then
                        begin
                          ResponseTable.AppendRecord([VarToStr(FDConnection.GetLastAutoGenValue(AGenName))]);
                        end
                      else
                        ResponseTable.AppendRecord([VarToStr(DataTable.FieldByName(EndPoints.DataSet.FieldByName(FIELD_UNIQUEID).AsString).AsString)]);
                    end;

                  RequestTable.Next;
                end;

              SaveDataSetToStream(ResponseTable,Result,AContext);

              ResponseTable.Free;
              RequestTable.Free;

            end
          else
          if EndPoints.DataSet.FieldByName(FIELD_ACTION).AsString='SQL' then
            begin
              EndPointQuery.SQL.Text := EndPoints.DataSet.FieldByName(FIELD_SQL).AsString;

              ResolveCustomMacros(EndPoints.DataSet.FieldByName(FIELD_MACROS).AsString, EndPointQuery, ARequest);

              ResolveCustomParams(EndPoints.DataSet.FieldByName(FIELD_PARAMS).AsString, EndPointQuery, ARequest);

              ResolveDefaultParams(EndPointQuery, AContext);

              EndPointQuery.Open;

              SaveDataSetToStream(EndPointQuery,Result,AContext);
            end
            else
            if EndPoints.DataSet.FieldByName(FIELD_ACTION).AsString='AggregateSQL' then
              begin
                SQLList := TStringList.Create;
                SQLList.Text := EndPoints.DataSet.FieldByName(FIELD_SQL).AsString;

                for I := 0 to SQLList.Count-1 do
                  begin
                    AggregateSQL.FieldDefs.Add(SQLList.Names[I],ftString,512,False);
                  end;

                AggregateSQL.Open;
                AggregateSQL.Edit;
                for I := 0 to SQLList.Count-1 do
                  begin
                    EndPointQuery.SQL.Text := SQLList.ValueFromIndex[I];

                    ResolveCustomMacros(EndPoints.DataSet.FieldByName(FIELD_MACROS).AsString, EndPointQuery, ARequest);

                    ResolveCustomParams(EndPoints.DataSet.FieldByName(FIELD_PARAMS).AsString, EndPointQuery, ARequest);

                    ResolveDefaultParams(EndPointQuery, AContext);

                    EndPointQuery.Open;

                    EndPointQuery.First;

                    AggregateSQL.FieldByName(SQLList.Names[I]).AsString := EndPointQuery.FieldByName(SQLList.Names[I]).AsString;
                    EndPointQuery.Close;
                  end;
                AggregateSQL.Post;

                SQLList.Free;

                SaveDataSetToStream(AggregateSQL,Result,AContext);
              end
          else
          if EndPoints.DataSet.FieldByName(FIELD_ACTION).AsString='Method' then
              begin
                try
                 Result := Call(EndPoints.DataSet.FieldByName(FIELD_METHOD).AsString, AContext, ARequest, AResponse);
                except
                  on E: Exception do
                   begin
                     AResponse.RaiseBadRequest('Bad Request',E.Message);
                   end;
                end;
              end;


        end
       else
        AResponse.RaiseUnauthorized('Unauthorized','Group permissions do not allow access to this endpoint.');

    end
   else
    AResponse.RaiseNotFound('Not Found','Requested endpoint not found.');
end;

function TAutoTablesResource.ProcessDelete(const EndPoint: String; AContext: TEndpointContext; ARequest: TEndpointRequest; AResponse: TEndpointResponse): TMemoryStream;
var
RowId: String;
RowsAffected: Integer;
ResponseTable: TFDMemTable;
begin
  Result := TMemoryStream.Create;
  if EndPoints.DataSet.Locate('EndPoint;RequestType',VarArrayOf([EndPoint,'DELETE']),[])=True then
    begin
      if PermissionsCheck(EndPoints.DataSet.FieldByName(FIELD_GROUPS).AsString,AContext)=True then
        begin
          if ARequest.Params.TryGetValue(EndPoints.DataSet.FieldByName(FIELD_UNIQUEID).AsString,RowId)=True then
            begin
              if EndPoints.DataSet.FieldByName(FIELD_TABLENAME).AsString<>'' then
                begin
                  EndPointQuery.ExecSQL('DELETE FROM '+EndPoints.DataSet.FieldByName(FIELD_TABLENAME).AsString+' WHERE ID=:P1',[RowId]);
                  RowsAffected := EndPointQuery.RowsAffected;
                end
              else
              if EndPoints.DataSet.FieldByName(FIELD_SQL).AsString<>'' then
                begin
                  EndPointQuery.ExecSQL(EndPoints.DataSet.FieldByName(FIELD_SQL).AsString,[RowId]);
                  RowsAffected := EndPointQuery.RowsAffected;
                end
              else
              if EndPoints.DataSet.FieldByName(FIELD_METHOD).AsString<>'' then
                  begin
                    try
                     Result := Call(EndPoints.DataSet.FieldByName(FIELD_METHOD).AsString, AContext, ARequest, AResponse);
                    except
                      on E: Exception do
                       begin
                         AResponse.RaiseBadRequest('Bad Request',E.Message);
                       end;
                    end;
                  end;

            end;
        end
       else
        AResponse.RaiseUnauthorized('Unauthorized','Group permissions do not allow access to this endpoint.');

      ResponseTable := TFDMemTable.Create(Self);
      ResponseTable.FieldDefs.Add('RowsAffected',TFieldType.ftLargeint);
      ResponseTable.Open;
      ResponseTable.AppendRecord([RowsAffected]);
      SaveDataSetToStream(ResponseTable,Result,AContext);

      ResponseTable.Free;
    end
   else
    AResponse.RaiseNotFound('Not Found','Requested endpoint not found.');
end;

function TAutoTablesResource.GetFormatMimeType(AContext: TEndpointContext): String;
var
AFormat: String;
begin
  AContext.Request.Params.TryGetValue('format',AFormat);
  if SameText(AFormat,CSV_FORMAT) then
   begin
     Result := CSV_MIME_TYPE;
   end
  else
  if SameText(AFormat,XML_FORMAT) then
   begin
     Result := XML_MIME_TYPE;
   end
  else
  if SameText(AFormat,BINARY_FORMAT) then
   begin
     Result := BINARY_MIME_TYPE;
   end
  else
   begin
     Result := JSON_MIME_TYPE;
   end;
end;

function TAutoTablesResource.GetStorageFormat(const AFormat: String): TFDStorageFormat;
begin
  if SameText(AFormat,CSV_FORMAT) then
   begin
     Result := TFDStorageFormat.sfAuto;
   end
  else
  if SameText(AFormat,XML_FORMAT) then
   begin
     Result := TFDStorageFormat.sfXML;
   end
  else
  if SameText(AFormat,BINARY_FORMAT) then
   begin
     Result := TFDStorageFormat.sfBinary;
   end
  else
   begin
     Result := TFDStorageFormat.sfJSON;
   end;
end;

function TAutoTablesResource.ProcessRequest(const EndPoint, RequestType: String; AContext: TEndpointContext; ARequest: TEndpointRequest; AResponse: TEndpointResponse): TMemoryStream;
begin
  if EndpointQuery.Connection=nil then
    EndpointQuery.Connection := FDConnection;

  if GetFormatMimeType(AContext)=CSV_MIME_TYPE then
    AResponse.Headers.SetValue('Content-Disposition', 'attachment;filename=export.csv');

  if RequestType=GET_REQUEST_TYPE then
    begin
      Result := ProcessGet(EndPoint, AContext, ARequest, AResponse);
    end
  else
  if RequestType=POST_REQUEST_TYPE then
    begin
      Result := ProcessPost(EndPoint, AContext, ARequest, AResponse);
    end
  else
  if RequestType=DELETE_REQUEST_TYPE then
    begin
      Result := ProcessDelete(EndPoint, AContext, ARequest, AResponse);
    end;
end;


procedure TAutoTablesResource.Get(const AContext: TEndpointContext; const ARequest: TEndpointRequest; const AResponse: TEndpointResponse);
begin
  // Sample code
  AResponse.Body.SetStream(ProcessRequest(ARequest.Params.Values['endpoint'],GET_REQUEST_TYPE, AContext, ARequest, AResponse),GetFormatMimeType(AContext),True);
end;

procedure TAutoTablesResource.Post(const AContext: TEndpointContext; const ARequest: TEndpointRequest; const AResponse: TEndpointResponse);
begin
  AResponse.Body.SetStream(ProcessRequest(ARequest.Params.Values['endpoint'],POST_REQUEST_TYPE, AContext, ARequest, AResponse),GetFormatMimeType(AContext),True);
end;

procedure TAutoTablesResource.DeleteItem(const AContext: TEndpointContext; const ARequest: TEndpointRequest; const AResponse: TEndpointResponse);
begin
  AResponse.Body.SetStream(ProcessRequest(ARequest.Params.Values['endpoint'],DELETE_REQUEST_TYPE, AContext, ARequest, AResponse),GetFormatMimeType(AContext),True);
end;

procedure Register;
begin
  RegisterResource(TypeInfo(TAutoTablesResource));
end;

initialization
  Register;
end.


