unit uOpenAPI;

interface

uses
  System.SysUtils, System.Classes, System.JSON, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TOpenAPIDM = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
    function CreateDoc(ADataSet, AInfoDataSet: TFDDataSet): String;
  end;

var
  OpenAPIDM: TOpenAPIDM;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

uses
  StrUtils,
  REST.JSON,
  Swag.Common.Types,
  Swag.Doc.Path,
  Swag.Doc.Path.Operation,
  Swag.Doc.Path.Operation.RequestParameter,
  Swag.Doc.Path.Operation.Response,
  Swag.Doc.Path.Operation.ResponseHeaders,
  Swag.Doc.Definition,
  Swag.Doc;

function CreateJsonSomeSubType: TJsonObject;
var
  vJsonType: TJsonObject;
  vJsonProperities: TJsonObject;
begin
  Result := TJsonObject.Create;

  Result.AddPair('type','object');

  vJsonType := TJsonObject.Create;
  vJsonType.AddPair('type', 'string');

  vJsonProperities := TJsonObject.Create;
  vJsonProperities.AddPair('id', vJsonType);

  Result.AddPair('properties', vJsonProperities);
end;

function CreateJsonSomeType(pJsonObjectSubType: TJsonObject): TJsonObject;
var
  vJsonId: TJsonObject;
  vJsonCost: TJsonObject;
  vJsonProperities: TJsonObject;
begin
  Result := TJsonObject.Create;
  Result.AddPair('type', 'object');

  vJsonId := TJsonObject.Create;
  vJsonId.AddPair('type', 'integer');
  vJsonId.AddPair('format', 'int64');

  vJsonProperities := TJsonObject.Create;
  vJsonProperities.AddPair('id', vJsonId);

  vJsonProperities.AddPair('subType', pJsonObjectSubType);

  vJsonCost := TJsonObject.Create;
  vJsonCost.AddPair('type', 'string');
  vJsonCost.AddPair('format', 'decimel');
  vJsonCost.AddPair('multipleOf', TJsonNumber.Create(0.01));
  vJsonCost.AddPair('minimum', TJsonNumber.Create(-9999999999.99));
  vJsonCost.AddPair('maximum', TJsonNumber.Create(9999999999.99));
  vJsonCost.AddPair('title', 'Total Cost');
  vJsonCost.AddPair('description', 'Total Cost');
  vJsonCost.AddPair('example', TJsonNumber.Create(9999999999.99));
  vJsonProperities.AddPair('cost', vJsonCost);

  Result.AddPair('properties', vJsonProperities);
end;

function TOpenAPIDM.CreateDoc(ADataSet,AInfoDataSet: TFDDataSet): String;
var
  I: Integer;
  SL: TStringList;
  QueryString: String;
  vSwagDoc: TSwagDoc;
  vPath: TSwagPath;
  vOperation: TSwagPathOperation;
  vParam: TSwagRequestParameter;
  vResponse: TSwagResponse;
  vDefinitionSomeType: TSwagDefinition;
  vDefinitionResponseSomeType: TSwagDefinition;
  vDefinitionSomeSubType: TSwagDefinition;
  vResponseHeader: TSwagHeaders;
begin
  SL := TStringList.Create;
  SL.StrictDelimiter := True;

  vSwagDoc := TSwagDoc.Create;
  try
    vSwagDoc.Info.Title := AInfoDataSet.FieldByName('Title').AsString;
    vSwagDoc.Info.Version := AInfoDataSet.FieldByName('Version').AsString;
    vSwagDoc.Info.TermsOfService := AInfoDataSet.FieldByName('TermsOfService').AsString;
    vSwagDoc.Info.Description := AInfoDataSet.FieldByName('Description').AsString;
    vSwagDoc.Info.Contact.Name := AInfoDataSet.FieldByName('ContactName').AsString;
    vSwagDoc.Info.Contact.Email := AInfoDataSet.FieldByName('ContactEmail').AsString;
    vSwagDoc.Info.Contact.Url := AInfoDataSet.FieldByName('ContactURL').AsString;
    vSwagDoc.Info.License.Name := AInfoDataSet.FieldByName('LicenseName').AsString;
    vSwagDoc.Info.License.Url := AInfoDataSet.FieldByName('LicenseURL').AsString;

    vSwagDoc.Host := 'example.com';
    vSwagDoc.BasePath := '/'+AInfoDataSet.FieldByName('RootSegment').AsString;

    vSwagDoc.Consumes.Add('application/json');

    vSwagDoc.Produces.Add('application/xml');
    vSwagDoc.Produces.Add('application/json');
    vSwagDoc.Produces.Add('application/octet-stream');
    vSwagDoc.Produces.Add('text/csv');

    vSwagDoc.Schemes := [tpsHttp,tpsHttps];

   { vDefinitionSomeSubType := TSwagDefinition.Create;
    vDefinitionSomeSubType.Name := 'SomeSubType';
    vDefinitionSomeSubType.JsonSchema := CreateJsonSomeSubType;
    vSwagDoc.Definitions.Add(vDefinitionSomeSubType);

    vDefinitionSomeType := TSwagDefinition.Create;
    vDefinitionSomeType.Name := 'SomeType';
    vDefinitionSomeType.JsonSchema := CreateJsonSomeType(vDefinitionSomeSubType.GenerateJsonRefDefinition);
    vSwagDoc.Definitions.Add(vDefinitionSomeType);
    }

    ADataSet.First;

    while not ADataSet.Eof do
       begin

          SL.Clear;
          SL.CommaText := ADataSet.FieldByName('Params').AsString;

          QueryString := '';
          for I := 0 to SL.Count-1 do
            begin
              QueryString := QueryString + IfThen(I=0,'?','&') + SL[I] + '={' + SL[I] + '}';
            end;

          //ADataSet.FieldByName('RequestType').AsString + ' ';


          vPath := TSwagPath.Create;
          vPath.Uri := ADataSet.FieldByName('EndPoint').AsString + '/' + IfThen(QueryString<>'',QueryString,'');

          vOperation := TSwagPathOperation.Create;
          if ADataSet.FieldByName('RequestType').AsString='GET' then
            begin
              vOperation.Operation := ohvGet;
              vOperation.OperationId := 'RequestData';
              vOperation.Description := 'Requests some data';
            end
          else
          if ADataSet.FieldByName('RequestType').AsString='POST' then
            begin
              vOperation.Operation := ohvPost;
              vOperation.OperationId := 'AddOrUpdateData';
              vOperation.Description := 'Add or update some data';
            end
          else
          if ADataSet.FieldByName('RequestType').AsString='DELETE' then
            begin
              vOperation.Operation := ohvDelete;
              vOperation.OperationId := 'DeleteData';
              vOperation.Description := 'Delete some data';
            end;


          {vParam := TSwagRequestParameter.Create;
          vParam.Name := 'param1';
          vParam.InLocation := rpiPath;
          vParam.Description := 'A param required';
          vParam.Required := True;
          vParam.TypeParameter := 'string';
          vOperation.Parameters.Add(vParam);
           }

          vParam := TSwagRequestParameter.Create;
          vParam.Name := 'X-Embarcadero-Session-Token';
          vParam.InLocation := rpiHeader;
          vParam.Description := 'EMS User Authentication';
          vParam.Required := False;
          vParam.TypeParameter := 'string';
          vOperation.Parameters.Add(vParam);

          vParam := TSwagRequestParameter.Create;
          vParam.Name := 'X-Embarcadero-Tenant-Id';
          vParam.InLocation := rpiHeader;
          vParam.Description := 'EMS Tenant Id';
          vParam.Required := False;
          vParam.TypeParameter := 'string';
          vOperation.Parameters.Add(vParam);

          vParam := TSwagRequestParameter.Create;
          vParam.Name := 'X-Embarcadero-Tenant-Secret';
          vParam.InLocation := rpiHeader;
          vParam.Description := 'EMS Tenant Secret';
          vParam.Required := False;
          vParam.TypeParameter := 'string';
          vOperation.Parameters.Add(vParam);

          for I := 0 to SL.Count-1 do
            begin
              vParam := TSwagRequestParameter.Create;
              vParam.Name := SL[I];
              vParam.InLocation := rpiQuery;
              vParam.Description := 'A param called '+SL[I];
              vParam.Required := True;
              vParam.TypeParameter := 'string';
              vOperation.Parameters.Add(vParam);
            end;

          if ADataSet.FieldByName('RequestType').AsString='POST' then
            begin
              vParam := TSwagRequestParameter.Create;
              vParam.Name := 'Body';
              vParam.InLocation := rpiBody;
              vParam.Description := 'Post Body';
              vParam.Required := False;
              vParam.TypeParameter := 'string';
              vOperation.Parameters.Add(vParam);
            end;


           {
          vParam := TSwagRequestParameter.Create;
          vParam.Name := 'param3';
          vParam.InLocation := rpiBody;
          vParam.Required := True;
          vParam.Schema.Name := 'SomeType';
          vOperation.Parameters.Add(vParam);
          }

          vResponse := TSwagResponse.Create;
          vResponse.StatusCode := '200';
          vResponse.Description := 'Successfully retrieved data';
          //vResponse.Schema.Name := 'SomeType';
          vOperation.Responses.Add('200', vResponse);

          {vResponseHeader := TSwagHeaders.Create;
          vResponseHeader.Name := 'X-Rate-Limit-Limit';
          vResponseHeader.Description := 'The number of allowed requests in the current period';
          vResponseHeader.ValueType := 'integer';
          vResponse.Headers.Add(vResponseHeader);
          }

          vResponse := TSwagResponse.Create;
          vResponse.StatusCode := 'default';
          vResponse.Description := 'Error occured';

          vOperation.Responses.Add('default',vResponse);

          vOperation.Tags.Add(ADataSet.FieldByName('EndPoint').AsString);

          vPath.Operations.Add(vOperation);
          vSwagDoc.Paths.Add(vPath);

         ADataSet.Next;
       end;

    vSwagDoc.GenerateSwaggerJson;
    Result := REST.Json.TJson.Format(vSwagDoc.SwaggerJson);
  finally
    FreeAndNil(vSwagDoc);
  end;
end;

end.
