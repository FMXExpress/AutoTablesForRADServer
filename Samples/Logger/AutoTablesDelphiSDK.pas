unit AutoTablesDelphiSDK;

interface

uses
  System.SysUtils, System.Classes, System.JSON, FireDAC.Stan.Intf, System.StrUtils,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, REST.Client, REST.Backend.Endpoint, REST.Types,
  REST.Backend.EMSProvider, REST.Backend.ServiceComponents, REST.Backend.Providers;

type
  TSDKClient = class(TComponent)
  private
    { Private declarations }
    FUserName, FPassword: String;
  public
    { Public declarations }
    FEMSProvider: TEMSProvider;
    FBackendAuth: TBackendAuth;

    constructor Create(AOwner: TComponent);
    destructor Destroy;

    function LoginAPI(const UserName, Password: String): Boolean;
    function GetAPI(const APath: String): TBytesStream;
    function PostAPI(const APath: String; ABytesStream: TBytesStream): TBytesStream;
    function DeleteAPI(const APath: String): TBytesStream;

    function getlogger(Aformat: String = ''): TBytesStream;

    function postlogger(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;

    function deletelogger(AID: String; Aformat: String = ''): TBytesStream;


  published
    property Username: String read FUsername write FUsername;
    property Password: String read FPassword write FPassword;
  end;

implementation


constructor TSDKClient.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FEMSProvider := TEMSProvider.Create(AOwner);
  FBackendAuth := TBackendAuth.Create(AOwner);
  FEMSProvider.URLHost := 'localhost';
  FEMSProvider.URLPort := StrToInt('8080');
  FEMSProvider.URLBasePath := '';
  FEMSProvider.URLProtocol := 'http';
  FBackendAuth.Provider := FEMSProvider;
  FUserName := '';
  FPassword := '';
end;

destructor TSDKClient.Destroy;
begin
  inherited Destroy;
  FBackendAuth.DisposeOf;
end;

function TSDKClient.LoginAPI(const UserName, Password: String): Boolean;
begin
  if not FBackendAuth.LoggedIn then
    begin
      FBackendAuth.UserName := UserName;
      FBackendAuth.Password := Password;
      FBAckendAuth.Login;

      if FBackendAuth.LoggedIn then
        begin
          if FBackendAuth.LoggedInToken = '' then
            begin
              FBackendAuth.Authentication := TBackendAuthentication.Default;
              Result := False;
            end
          else
            begin
              FBackendAuth.Authentication := TBackendAuthentication.Session;
              Result := True;
            end;
        end;
    end
  else
    Result := True;
end;

function TSDKClient.GetAPI(const APath: String): TBytesStream;
var
  EndPoint: TBackendEndpoint;
begin
  Result := TBytesStream.Create;
  EndPoint := TBackendEndpoint.Create(Self);
  EndPoint.Provider := FEMSProvider;
  EndPoint.Auth := FBackendAuth;
  try
    EndPoint.Resource := APath;
    EndPoint.Method := TRESTRequestMethod.rmGET;
    EndPoint.Execute;
    Result := TBytesStream.Create(EndPoint.Response.RawBytes);
    if EndPoint.Response.StatusCode>=400 then
      begin
        raise Exception.Create(EndPoint.Response.StatusText);
      end;
  finally
    EndPoint.DisposeOf;
  end;
end;

function TSDKClient.PostAPI(const APath: String; ABytesStream: TBytesStream): TBytesStream;
var
  EndPoint: TBackendEndpoint;
begin
  EndPoint := TBackendEndpoint.Create(Self);
  EndPoint.Provider := FEMSProvider;
  EndPoint.Auth := FBackendAuth;
  try
    EndPoint.Resource := APath;
    EndPoint.Method := TRESTRequestMethod.rmPOST;
    EndPoint.AddBody(ABytesStream,TRESTContentType.ctAPPLICATION_JSON);
    EndPoint.Execute;
    Result := TBytesStream.Create(EndPoint.Response.RawBytes);
    if EndPoint.Response.StatusCode>=400 then
      begin
        raise Exception.Create(EndPoint.Response.StatusText);
      end;
  finally
    EndPoint.DisposeOf;
  end;
end;

function TSDKClient.DeleteAPI(const APath: String): TBytesStream;
var
  EndPoint: TBackendEndpoint;
begin
  Result := TBytesStream.Create;
  EndPoint := TBackendEndpoint.Create(Self);
  EndPoint.Provider := FEMSProvider;
  EndPoint.Auth := FBackendAuth;
  try
    EndPoint.Resource := APath;
    EndPoint.Method := TRESTRequestMethod.rmDELETE;
    EndPoint.Execute;
    Result := TBytesStream.Create(EndPoint.Response.RawBytes);
    if EndPoint.Response.StatusCode>=400 then
      begin
        raise Exception.Create(EndPoint.Response.StatusText);
      end;
  finally
    EndPoint.DisposeOf;
  end;
end;

function TSDKClient.getlogger(Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.GetAPI('/v1/getlogger/'+IfThen(Aformat<>'','?format='+Aformat,''));
end;

function TSDKClient.postlogger(Aformat: String = ''; ABytesStream: TBytesStream = nil): TBytesStream;
begin
  if Self.LoginAPI(FUserName,FPassword) then
    Result := Self.PostAPI('/v1/postlogger/'+IfThen(Aformat<>'','?format='+Aformat,''),ABytesStream);
end;

function TSDKClient.deletelogger(AID: String; Aformat: String = ''): TBytesStream;
begin
   if Self.LoginAPI(FUserName,FPassword) then
     Result := Self.DeleteAPI('/v1/deletelogger/?ID='+AID+''+IfThen(Aformat<>'','&format='+Aformat,''));
end;



end.
