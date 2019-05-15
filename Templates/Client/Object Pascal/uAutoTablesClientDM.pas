unit uAutoTablesClientDM;

interface

uses
  System.SysUtils, System.Classes, IPPeerClient, REST.Backend.ServiceTypes,
  System.JSON, REST.Backend.EMSServices, REST.Backend.MetaTypes,
  REST.Backend.BindSource, REST.Backend.ServiceComponents, Data.Bind.Components,
  Data.Bind.ObjectScope, REST.Client, REST.Backend.EndPoint, REST.Types,
  REST.Backend.EMSProvider, FireDAC.Comp.Client, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Stan.StorageJSON, REST.Backend.Providers;

type
  TGetFuncType = procedure of object;
  TPostFuncType = procedure of object;
  TDeleteFuncType = procedure(const ID: String) of object;
  TAutoTablesClientDM = class(TDataModule)
{#CompHeaderList#}
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CallGet(MethodName: string);
    procedure CallPost(MethodName: string);
    procedure CallDelete(MethodName: string; const ID: String);
    function Login(const UserName, Password: String): Boolean;
    procedure Logout;
  published
{#HeaderList#}
  end;

var
  AutoTablesClientDM: TAutoTablesClientDM;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

// https://stackoverflow.com/questions/4186458/delphi-call-a-function-whose-name-is-stored-in-a-string
procedure TAutoTablesClientDM.CallGet(MethodName: string);
var M: System.TMethod;
begin
  M.Code := Self.MethodAddress(MethodName); //find method code
  M.Data := Pointer(Self); //store pointer to object instance
  TGetFuncType(m)();
end;

procedure TAutoTablesClientDM.CallPost(MethodName: string);
var M: System.TMethod;
begin
  M.Code := Self.MethodAddress(MethodName); //find method code
  M.Data := Pointer(Self); //store pointer to object instance
  TPostFuncType(m)();
end;

procedure TAutoTablesClientDM.CallDelete(MethodName: string; const ID: String);
var M: System.TMethod;
begin
  M.Code := Self.MethodAddress(MethodName); //find method code
  M.Data := Pointer(Self); //store pointer to object instance
  TDeleteFuncType(m)(ID);
end;

function TAutoTablesClientDM.Login(const UserName, Password: String): Boolean;
begin
  if not BackendAuth1.LoggedIn then
    begin
      BackendAuth1.UserName := UserName;
      BackendAuth1.Password := Password;
      BackendAuth1.Login;

      if BackendAuth1.LoggedIn then
        begin
          if BackendAuth1.LoggedInToken = '' then
            begin
              BackendAuth1.Authentication := TBackendAuthentication.Default;
              Result := False;
            end
          else
            begin
              BackendAuth1.Authentication := TBackendAuthentication.Session;
              Result := True;
            end;
        end;
    end
  else
    Result := True;
end;

procedure TAutoTablesClientDM.Logout;
begin
  BackendAuth1.Logout;
  BackendAuth1.Authentication := TBackendAuthentication.Default;
end;

{#FunctionList#}

end.
