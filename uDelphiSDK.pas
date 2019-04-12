unit uDelphiSDK;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  System.Actions, FMX.ActnList, FMX.Controls.Presentation, FMX.ScrollBox,
  FMX.Memo, FireDAC.Comp.DataSet, StrUtils, System.IOUtils;

type
  TDelphiSDKFrame = class(TFrame)
    HeaderFunctionMemo: TMemo;
    GetFunctionMemo: TMemo;
    SDKMemo: TMemo;
    ActionList1: TActionList;
    GenerateSDKAction: TAction;
    PostFunctionMemo: TMemo;
    DeleteFunctionMemo: TMemo;
  private
    { Private declarations }
    Host,Port: String;
    EndPointTable: TFDDataSet;
    FDMemTableInfo: TFDDataSet;
    function GetQueryStringList(ADataSet: TFDDataSet): String;
  public
    { Public declarations }
    procedure Initialize(AHost,APort: String; ADataSet: TFDDataSet; AInfoDataSet: TFDDataSet);
    function GenerateSDK(AFileName: String): String;
  end;

implementation

{$R *.fmx}

uses
  uMainForm;

function TDelphiSDKFrame.GetQueryStringList(ADataSet: TFDDataSet): String;
begin
  Result := MainForm.GetQueryStringList(ADataSet);
end;

procedure TDelphiSDKFrame.Initialize(AHost,APort: String; ADataSet: TFDDataSet; AInfoDataSet: TFDDataSet);
begin
    Host := AHost;
    Port := APort;
    EndPointTable := ADataSet;
    FDMemTableInfo := AInfoDataSet;
end;

function TDelphiSDKFrame.GenerateSDK(AFileName: String): String;
var
  I: Integer;
  SL: TStringList;
  QueryString, ParamString: String;
  CompCount: Integer;
  FunctionList, HeaderList: TStringList;
  ATemplatePath: String;
  AOutputPath: String;
begin

    CompCount := 1;
    EndPointTable.DisableControls;
    EndPointTable.First;
    FunctionList := TStringList.Create;
    HeaderList := TStringList.Create;
    SL := TStringList.Create;
    SL.StrictDelimiter := True;
    while not EndPointTable.EOF do
      begin
        QueryString := '';
        ParamString := '';
        SL.Clear;
        SL.CommaText := GetQueryStringList(EndPointTable) + IfThen((EndPointTable.FieldByName('Params').AsString<>'') OR (EndPointTable.FieldByName('Macros').AsString<>''),',format','format');

        for I := 0 to SL.Count-1 do
          begin
            if SL[I]='format' then
              begin
               QueryString := QueryString + '''+IfThen(Aformat<>'''','''+ IfThen(I=0,'?','&') + SL[I] + '=''+A' + SL[I] + IfThen(I=SL.Count-1,'','+''') + ','''')';
              end
             else
              QueryString := QueryString + IfThen(I=0,'?','&') + SL[I] + '=''+A' + SL[I] + IfThen(I=SL.Count-1,'','+''');
            ParamString := ParamString + IfThen(I=0,'','; ') + 'A' + SL[I] + ': String' + IfThen(SL[I]='format',' = ''''','');
          end;
        if EndPointTable.FieldByName('RequestType').AsString='POST' then
          begin
            ParamString := '('+ParamString+IfThen(ParamString<>'',';','')+' ABytesStream: TBytesStream = nil'+')';
          end
        else
          begin
            ParamString := '('+ParamString+')';
          end;
        SL.Clear;

        if EndPointTable.FieldByName('RequestType').AsString='GET' then
          begin
            SL.Append(GetFunctionMemo.Lines.Text
                      .Replace('{#EndPoint#}',EndPointTable.FieldByName('EndPoint').AsString,[rfReplaceAll])
                      .Replace('{#RootSegment#}',FDMemTableInfo.FieldByName('RootSegment').AsString,[rfReplaceAll])
                      .Replace('{#ParamString#}',ParamString,[rfReplaceAll])
                      .Replace('{#QueryString#}',QueryString + IfThen(QueryString='','''',''),[rfReplaceAll]));
          end
        else
        if EndPointTable.FieldByName('RequestType').AsString='POST' then
          begin
            SL.Append(PostFunctionMemo.Lines.Text
                      .Replace('{#EndPoint#}',EndPointTable.FieldByName('EndPoint').AsString,[rfReplaceAll])
                      .Replace('{#RootSegment#}',FDMemTableInfo.FieldByName('RootSegment').AsString,[rfReplaceAll])
                      .Replace('{#ParamString#}',ParamString,[rfReplaceAll])
                      .Replace('{#QueryString#}',QueryString + IfThen(QueryString='','''',''),[rfReplaceAll]));
          end
        else
        if EndPointTable.FieldByName('RequestType').AsString='DELETE' then
          begin
            SL.Append(DeleteFunctionMemo.Lines.Text
                      .Replace('{#EndPoint#}',EndPointTable.FieldByName('EndPoint').AsString,[rfReplaceAll])
                      .Replace('{#RootSegment#}',FDMemTableInfo.FieldByName('RootSegment').AsString,[rfReplaceAll])
                      .Replace('{#ParamString#}',ParamString,[rfReplaceAll])
                      .Replace('{#QueryString#}',QueryString + IfThen(QueryString='','''',''),[rfReplaceAll]));
          end;


        FunctionList.Append(SL.Text);

        SL.Clear;

        SL.Append(HeaderFunctionMemo.Lines.Text.Replace('{#EndPoint#}',EndPointTable.FieldByName('EndPoint').AsString,[rfReplaceAll]).Replace('{#ParamString#}',ParamString,[]));

        HeaderList.Append(SL.Text);

        EndPointTable.Next;
        Inc(CompCount);
      end;
    SL.Free;
  EndPointTable.EnableControls;

  ATemplatePath := TPath.Combine(TPath.Combine(TPath.Combine(ExtractFilePath(ParamStr(0)),TemplatePath),SDKPath),OPLangPath);
  AOutputPath := TPath.Combine(ExtractFilePath(ParamStr(0)),OutputPath);
  if TDirectory.Exists(AOutputPath)=False then
    begin
      TDirectory.CreateDirectory(AOutputPath);
    end;

  SL := TStringList.Create;
  if TFile.Exists(TPath.Combine(ATemplatePath,SDKTemplateFile)) then
    SL.LoadFromFile(TPath.Combine(ATemplatePath,SDKTemplateFile))
  else
    SL.Text := SDKMemo.Lines.Text;
  SL.Text := SL.Text.Replace('sdktemplatefile',AFileName.Replace(ExtractFileExt(AFileName),'',[rfIgnoreCase]));
  SL.Text := SL.Text.Replace('{#Filename#}',AFileName.Replace(ExtractFileExt(AFileName),'',[rfIgnoreCase]));
  SL.Text := SL.Text.Replace('{#URLHost#}',Host);
  SL.Text := SL.Text.Replace('{#URLPort#}',Port);
  SL.Text := SL.Text.Replace('{#Username#}','');
  SL.Text := SL.Text.Replace('{#Password#}','');
  SL.Text := SL.Text.Replace('{#SDKFunctionList#}',FunctionList.Text);
  SL.Text := SL.Text.Replace('{#SDKHeaderList#}',HeaderList.Text);
  SL.SaveToFile(TPath.Combine(AOutputPath,AFileName));

  Result := SL.Text;

  SL.Free;
  FunctionList.Free;
  HeaderList.Free;

end;

end.
