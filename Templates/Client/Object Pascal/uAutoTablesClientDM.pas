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
  FireDAC.Stan.StorageJSON;

type
  TAutoTablesClientDM = class(TDataModule)
{#CompHeaderList#}
  private
    { Private declarations }
  public
    { Public declarations }
{#HeaderList#}
  end;

var
  AutoTablesClientDM: TAutoTablesClientDM;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

{#FunctionList#}

end.
