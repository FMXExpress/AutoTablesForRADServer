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
  FireDAC.Stan.StorageJSON, FireDAC.Stan.StorageBin;

type
  TAutoTablesClientDM = class(TDataModule)
    BackendEndpoint1: TBackendEndpoint;
    RESTResponse1: TRESTResponse;
    getloggerMemTable1: TFDMemTable;
    BackendEndpoint2: TBackendEndpoint;
    RESTResponse2: TRESTResponse;
    postloggerMemTable2: TFDMemTable;
    postloggerPostMemTable2: TFDMemTable;
    BackendEndpoint3: TBackendEndpoint;
    RESTResponse3: TRESTResponse;
    BackendAuth1: TBackendAuth;
    EMSProvider1: TEMSProvider;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure getloggerExecute;
    procedure postloggerExecute;
    procedure deleteloggerExecute(const ID: String);
  end;

var
  AutoTablesClientDM: TAutoTablesClientDM;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}


procedure TAutoTablesClientDM.getloggerExecute;
var
  BS: TBytesStream;
begin
  BackendEndpoint1.Execute;
  if RESTResponse1.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse1.RawBytes);
      getloggerMemTable1.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.postloggerExecute;
var
  BS: TBytesStream;
  SS: TStringStream;
begin
  SS := TStringStream.Create('',TEncoding.UTF8);
  postloggerPostMemTable2.SaveToStream(SS,sfJSON);
  SS.Position := 0;
  BackendEndpoint2.AddBody(SS.DataString, TRESTContentType.ctAPPLICATION_JSON);
  SS.Free;
  BackendEndpoint2.Execute;
  if RESTResponse2.StatusCode<400 then
    begin
      BS := TBytesStream.Create(RESTResponse2.RawBytes);
      postloggerMemTable2.LoadFromStream(BS,sfJSON);
      BS.Free;
    end;
end;

procedure TAutoTablesClientDM.deleteloggerExecute(const ID: String);
begin
  BackendEndpoint3.Params.ParameterByName('ID').Value := ID;
  BackendEndpoint3.Execute;
end;

end.

