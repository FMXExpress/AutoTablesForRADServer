object AutoTablesResource: TAutoTablesResource
  OldCreateOrder = False
  Height = 402
  Width = 604
  object EndpointQuery: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'SELECT * FROM EndPointTable')
    Left = 184
    Top = 104
  end
{#EndPointComponent#}
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 36
    Top = 29
  end
  object FDStanStorageJSONLink1: TFDStanStorageJSONLink
    Left = 418
    Top = 40
  end
  object EndPoints: TBindSourceDB
    DataSet = EndPointTable
    ScopeMappings = <>
    Left = 288
    Top = 48
  end
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 184
    Top = 32
  end
{#EndPointConnection#}
  object AggregateSQL: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 144
    Top = 160
  end
  object FDBatchMoveCSV: TFDBatchMove
    Reader = FDBatchMoveDataSetReader
    Writer = FDBatchMoveTextWriter
    Mappings = <>
    LogFileName = 'Data.log'
    Left = 392
    Top = 192
  end
  object FDBatchMoveTextWriter: TFDBatchMoveTextWriter
    DataDef.Fields = <>
    Encoding = ecUTF8
    Left = 448
    Top = 248
  end
  object FDBatchMoveDataSetReader: TFDBatchMoveDataSetReader
    Left = 496
    Top = 168
  end
end
