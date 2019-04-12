object AutoTablesClientDM: TAutoTablesClientDM
  OldCreateOrder = False
  Height = 484
  Width = 669
    object BackendEndpoint1: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getaddresses/?format={format}'
    Response = RESTResponse1
    Left = 10
    Top = 10
  end
  object RESTResponse1: TRESTResponse
    Left = 12
    Top = 12
  end
object getaddressesMemTable1: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftInteger
    end
    item
      Name = 'line1'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'line2'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'city'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'state'
      DataType = ftString
      Size = 35
    end
    item
      Name = 'zip'
      DataType = ftString
      Size = 10
    end
    item
      Name = 'plus_four'
      DataType = ftString
      Size = 4
    end
    item
      Name = 'country'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'foreign_id'
      DataType = ftInteger
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint2: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postaddresses/'
    Response = RESTResponse2
    Left = 20
    Top = 20
  end
  object RESTResponse2: TRESTResponse
    Left = 24
    Top = 24
  end
object postaddressesPostMemTable2: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftInteger
    end
    item
      Name = 'line1'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'line2'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'city'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'state'
      DataType = ftString
      Size = 35
    end
    item
      Name = 'zip'
      DataType = ftString
      Size = 10
    end
    item
      Name = 'plus_four'
      DataType = ftString
      Size = 4
    end
    item
      Name = 'country'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'foreign_id'
      DataType = ftInteger
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postaddressesMemTable2: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint3: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteaddresses/?id={id}'
    Response = RESTResponse3
    Left = 30
    Top = 30
  end
  object RESTResponse3: TRESTResponse
    Left = 36
    Top = 36
  end

  object BackendEndpoint4: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getamc_misc_data/?format={format}'
    Response = RESTResponse4
    Left = 40
    Top = 40
  end
  object RESTResponse4: TRESTResponse
    Left = 48
    Top = 48
  end
object getamc_misc_dataMemTable4: TFDMemTable
  FieldDefs = <
    item
      Name = 'amc_id'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'pid'
      DataType = ftLargeint
    end
    item
      Name = 'map_category'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'map_id'
      DataType = ftLargeint
    end
    item
      Name = 'date_created'
      DataType = ftDateTime
    end
    item
      Name = 'date_completed'
      DataType = ftDateTime
    end
    item
      Name = 'soc_provided'
      DataType = ftDateTime
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint5: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getamendments/?format={format}'
    Response = RESTResponse5
    Left = 50
    Top = 50
  end
  object RESTResponse5: TRESTResponse
    Left = 60
    Top = 60
  end
object getamendmentsMemTable5: TFDMemTable
  FieldDefs = <
    item
      Name = 'amendment_id'
      DataType = ftAutoInc
    end
    item
      Name = 'amendment_date'
      Attributes = [faRequired]
      DataType = ftDate
    end
    item
      Name = 'amendment_by'
      Attributes = [faRequired]
      DataType = ftString
      Size = 50
    end
    item
      Name = 'amendment_status'
      DataType = ftString
      Size = 50
    end
    item
      Name = 'pid'
      Attributes = [faRequired]
      DataType = ftLargeint
    end
    item
      Name = 'amendment_desc'
      DataType = ftMemo
    end
    item
      Name = 'created_by'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'modified_by'
      DataType = ftInteger
    end
    item
      Name = 'created_time'
      DataType = ftTimeStamp
    end
    item
      Name = 'modified_time'
      DataType = ftTimeStamp
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint6: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postamendments/'
    Response = RESTResponse6
    Left = 60
    Top = 60
  end
  object RESTResponse6: TRESTResponse
    Left = 72
    Top = 72
  end
object postamendmentsPostMemTable6: TFDMemTable
  FieldDefs = <
    item
      Name = 'amendment_id'
      DataType = ftAutoInc
    end
    item
      Name = 'amendment_date'
      Attributes = [faRequired]
      DataType = ftDate
    end
    item
      Name = 'amendment_by'
      Attributes = [faRequired]
      DataType = ftString
      Size = 50
    end
    item
      Name = 'amendment_status'
      DataType = ftString
      Size = 50
    end
    item
      Name = 'pid'
      Attributes = [faRequired]
      DataType = ftLargeint
    end
    item
      Name = 'amendment_desc'
      DataType = ftMemo
    end
    item
      Name = 'created_by'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'modified_by'
      DataType = ftInteger
    end
    item
      Name = 'created_time'
      DataType = ftTimeStamp
    end
    item
      Name = 'modified_time'
      DataType = ftTimeStamp
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postamendmentsMemTable6: TFDMemTable
  FieldDefs = <
    item
      Name = 'amendment_id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint7: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'amendment_id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteamendments/?amendment_id={amendment_id}'
    Response = RESTResponse7
    Left = 70
    Top = 70
  end
  object RESTResponse7: TRESTResponse
    Left = 84
    Top = 84
  end

  object BackendEndpoint8: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getamendments_history/?format={format}'
    Response = RESTResponse8
    Left = 80
    Top = 80
  end
  object RESTResponse8: TRESTResponse
    Left = 96
    Top = 96
  end
object getamendments_historyMemTable8: TFDMemTable
  FieldDefs = <
    item
      Name = 'amendment_id'
      DataType = ftAutoInc
    end
    item
      Name = 'amendment_note'
      DataType = ftMemo
    end
    item
      Name = 'amendment_status'
      DataType = ftString
      Size = 50
    end
    item
      Name = 'created_by'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'created_time'
      DataType = ftTimeStamp
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint9: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getar_activity/?format={format}'
    Response = RESTResponse9
    Left = 90
    Top = 90
  end
  object RESTResponse9: TRESTResponse
    Left = 108
    Top = 108
  end
object getar_activityMemTable9: TFDMemTable
  FieldDefs = <
    item
      Name = 'pid'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'encounter'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'sequence_no'
      Attributes = [faRequired]
      DataType = ftLongWord
    end
    item
      Name = 'code_type'
      DataType = ftString
      Size = 12
    end
    item
      Name = 'code'
      Attributes = [faRequired]
      DataType = ftString
      Size = 20
    end
    item
      Name = 'modifier'
      DataType = ftString
      Size = 12
    end
    item
      Name = 'payer_type'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'post_time'
      Attributes = [faRequired]
      DataType = ftDateTime
    end
    item
      Name = 'post_user'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'session_id'
      Attributes = [faRequired]
      DataType = ftLongWord
    end
    item
      Name = 'memo'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'pay_amount'
      DataType = ftBCD
      Precision = 12
      Size = 2
    end
    item
      Name = 'adj_amount'
      DataType = ftBCD
      Precision = 12
      Size = 2
    end
    item
      Name = 'modified_time'
      Attributes = [faRequired]
      DataType = ftDateTime
    end
    item
      Name = 'follow_up'
      Attributes = [faRequired, faFixed]
      DataType = ftFixedChar
      Size = 1
    end
    item
      Name = 'follow_up_note'
      DataType = ftMemo
    end
    item
      Name = 'account_code'
      Attributes = [faRequired]
      DataType = ftString
      Size = 15
    end
    item
      Name = 'reason_code'
      DataType = ftString
      Size = 255
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint10: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postar_activity/'
    Response = RESTResponse10
    Left = 100
    Top = 100
  end
  object RESTResponse10: TRESTResponse
    Left = 120
    Top = 120
  end
object postar_activityPostMemTable10: TFDMemTable
  FieldDefs = <
    item
      Name = 'pid'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'encounter'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'sequence_no'
      Attributes = [faRequired]
      DataType = ftLongWord
    end
    item
      Name = 'code_type'
      DataType = ftString
      Size = 12
    end
    item
      Name = 'code'
      Attributes = [faRequired]
      DataType = ftString
      Size = 20
    end
    item
      Name = 'modifier'
      DataType = ftString
      Size = 12
    end
    item
      Name = 'payer_type'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'post_time'
      Attributes = [faRequired]
      DataType = ftDateTime
    end
    item
      Name = 'post_user'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'session_id'
      Attributes = [faRequired]
      DataType = ftLongWord
    end
    item
      Name = 'memo'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'pay_amount'
      DataType = ftBCD
      Precision = 12
      Size = 2
    end
    item
      Name = 'adj_amount'
      DataType = ftBCD
      Precision = 12
      Size = 2
    end
    item
      Name = 'modified_time'
      Attributes = [faRequired]
      DataType = ftDateTime
    end
    item
      Name = 'follow_up'
      Attributes = [faRequired, faFixed]
      DataType = ftFixedChar
      Size = 1
    end
    item
      Name = 'follow_up_note'
      DataType = ftMemo
    end
    item
      Name = 'account_code'
      Attributes = [faRequired]
      DataType = ftString
      Size = 15
    end
    item
      Name = 'reason_code'
      DataType = ftString
      Size = 255
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postar_activityMemTable10: TFDMemTable
  FieldDefs = <
    item
      Name = 'pid'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint11: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'pid'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletear_activity/?pid={pid}'
    Response = RESTResponse11
    Left = 110
    Top = 110
  end
  object RESTResponse11: TRESTResponse
    Left = 132
    Top = 132
  end

  object BackendEndpoint12: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getar_session/?format={format}'
    Response = RESTResponse12
    Left = 120
    Top = 120
  end
  object RESTResponse12: TRESTResponse
    Left = 144
    Top = 144
  end
object getar_sessionMemTable12: TFDMemTable
  FieldDefs = <
    item
      Name = 'session_id'
      DataType = ftAutoInc
    end
    item
      Name = 'payer_id'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'user_id'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'closed'
      DataType = ftBoolean
    end
    item
      Name = 'reference'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'check_date'
      DataType = ftDate
    end
    item
      Name = 'deposit_date'
      DataType = ftDate
    end
    item
      Name = 'pay_total'
      DataType = ftBCD
      Precision = 12
      Size = 2
    end
    item
      Name = 'created_time'
      DataType = ftTimeStamp
    end
    item
      Name = 'modified_time'
      Attributes = [faRequired]
      DataType = ftDateTime
    end
    item
      Name = 'global_amount'
      Attributes = [faRequired]
      DataType = ftBCD
      Precision = 12
      Size = 2
    end
    item
      Name = 'payment_type'
      Attributes = [faRequired]
      DataType = ftString
      Size = 50
    end
    item
      Name = 'description'
      DataType = ftMemo
    end
    item
      Name = 'adjustment_code'
      Attributes = [faRequired]
      DataType = ftString
      Size = 50
    end
    item
      Name = 'post_to_date'
      Attributes = [faRequired]
      DataType = ftDate
    end
    item
      Name = 'patient_id'
      Attributes = [faRequired]
      DataType = ftLargeint
    end
    item
      Name = 'payment_method'
      Attributes = [faRequired]
      DataType = ftString
      Size = 25
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint13: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postar_session/'
    Response = RESTResponse13
    Left = 130
    Top = 130
  end
  object RESTResponse13: TRESTResponse
    Left = 156
    Top = 156
  end
object postar_sessionPostMemTable13: TFDMemTable
  FieldDefs = <
    item
      Name = 'session_id'
      DataType = ftAutoInc
    end
    item
      Name = 'payer_id'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'user_id'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'closed'
      DataType = ftBoolean
    end
    item
      Name = 'reference'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'check_date'
      DataType = ftDate
    end
    item
      Name = 'deposit_date'
      DataType = ftDate
    end
    item
      Name = 'pay_total'
      DataType = ftBCD
      Precision = 12
      Size = 2
    end
    item
      Name = 'created_time'
      DataType = ftTimeStamp
    end
    item
      Name = 'modified_time'
      Attributes = [faRequired]
      DataType = ftDateTime
    end
    item
      Name = 'global_amount'
      Attributes = [faRequired]
      DataType = ftBCD
      Precision = 12
      Size = 2
    end
    item
      Name = 'payment_type'
      Attributes = [faRequired]
      DataType = ftString
      Size = 50
    end
    item
      Name = 'description'
      DataType = ftMemo
    end
    item
      Name = 'adjustment_code'
      Attributes = [faRequired]
      DataType = ftString
      Size = 50
    end
    item
      Name = 'post_to_date'
      Attributes = [faRequired]
      DataType = ftDate
    end
    item
      Name = 'patient_id'
      Attributes = [faRequired]
      DataType = ftLargeint
    end
    item
      Name = 'payment_method'
      Attributes = [faRequired]
      DataType = ftString
      Size = 25
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postar_sessionMemTable13: TFDMemTable
  FieldDefs = <
    item
      Name = 'session_id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint14: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'session_id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletear_session/?session_id={session_id}'
    Response = RESTResponse14
    Left = 140
    Top = 140
  end
  object RESTResponse14: TRESTResponse
    Left = 168
    Top = 168
  end

  object BackendEndpoint15: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getarray/?format={format}'
    Response = RESTResponse15
    Left = 150
    Top = 150
  end
  object RESTResponse15: TRESTResponse
    Left = 180
    Top = 180
  end
object getarrayMemTable15: TFDMemTable
  FieldDefs = <
    item
      Name = 'array_key'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'array_value'
      DataType = ftMemo
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint16: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getaudit_details/?format={format}'
    Response = RESTResponse16
    Left = 160
    Top = 160
  end
  object RESTResponse16: TRESTResponse
    Left = 192
    Top = 192
  end
object getaudit_detailsMemTable16: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'table_name'
      Attributes = [faRequired]
      DataType = ftString
      Size = 100
    end
    item
      Name = 'field_name'
      Attributes = [faRequired]
      DataType = ftString
      Size = 100
    end
    item
      Name = 'field_value'
      DataType = ftMemo
    end
    item
      Name = 'audit_master_id'
      Attributes = [faRequired]
      DataType = ftLargeint
    end
    item
      Name = 'entry_identification'
      DataType = ftString
      Size = 255
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint17: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postaudit_details/'
    Response = RESTResponse17
    Left = 170
    Top = 170
  end
  object RESTResponse17: TRESTResponse
    Left = 204
    Top = 204
  end
object postaudit_detailsPostMemTable17: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'table_name'
      Attributes = [faRequired]
      DataType = ftString
      Size = 100
    end
    item
      Name = 'field_name'
      Attributes = [faRequired]
      DataType = ftString
      Size = 100
    end
    item
      Name = 'field_value'
      DataType = ftMemo
    end
    item
      Name = 'audit_master_id'
      Attributes = [faRequired]
      DataType = ftLargeint
    end
    item
      Name = 'entry_identification'
      DataType = ftString
      Size = 255
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postaudit_detailsMemTable17: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint18: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteaudit_details/?id={id}'
    Response = RESTResponse18
    Left = 180
    Top = 180
  end
  object RESTResponse18: TRESTResponse
    Left = 216
    Top = 216
  end

  object BackendEndpoint19: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getaudit_master/?format={format}'
    Response = RESTResponse19
    Left = 190
    Top = 190
  end
  object RESTResponse19: TRESTResponse
    Left = 228
    Top = 228
  end
object getaudit_masterMemTable19: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'pid'
      Attributes = [faRequired]
      DataType = ftLargeint
    end
    item
      Name = 'user_id'
      Attributes = [faRequired]
      DataType = ftLargeint
    end
    item
      Name = 'approval_status'
      Attributes = [faRequired]
      DataType = ftShortint
    end
    item
      Name = 'comments'
      DataType = ftMemo
    end
    item
      Name = 'created_time'
      DataType = ftTimeStamp
    end
    item
      Name = 'modified_time'
      Attributes = [faRequired]
      DataType = ftDateTime
    end
    item
      Name = 'ip_address'
      Attributes = [faRequired]
      DataType = ftString
      Size = 100
    end
    item
      Name = 'type'
      Attributes = [faRequired]
      DataType = ftShortint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint20: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postaudit_master/'
    Response = RESTResponse20
    Left = 200
    Top = 200
  end
  object RESTResponse20: TRESTResponse
    Left = 240
    Top = 240
  end
object postaudit_masterPostMemTable20: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'pid'
      Attributes = [faRequired]
      DataType = ftLargeint
    end
    item
      Name = 'user_id'
      Attributes = [faRequired]
      DataType = ftLargeint
    end
    item
      Name = 'approval_status'
      Attributes = [faRequired]
      DataType = ftShortint
    end
    item
      Name = 'comments'
      DataType = ftMemo
    end
    item
      Name = 'created_time'
      DataType = ftTimeStamp
    end
    item
      Name = 'modified_time'
      Attributes = [faRequired]
      DataType = ftDateTime
    end
    item
      Name = 'ip_address'
      Attributes = [faRequired]
      DataType = ftString
      Size = 100
    end
    item
      Name = 'type'
      Attributes = [faRequired]
      DataType = ftShortint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postaudit_masterMemTable20: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint21: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteaudit_master/?id={id}'
    Response = RESTResponse21
    Left = 210
    Top = 210
  end
  object RESTResponse21: TRESTResponse
    Left = 252
    Top = 252
  end

  object BackendEndpoint22: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getautomatic_notification/?format={format}'
    Response = RESTResponse22
    Left = 220
    Top = 220
  end
  object RESTResponse22: TRESTResponse
    Left = 264
    Top = 264
  end
object getautomatic_notificationMemTable22: TFDMemTable
  FieldDefs = <
    item
      Name = 'notification_id'
      DataType = ftAutoInc
    end
    item
      Name = 'sms_gateway_type'
      Attributes = [faRequired]
      DataType = ftString
      Size = 255
    end
    item
      Name = 'next_app_date'
      Attributes = [faRequired]
      DataType = ftDate
    end
    item
      Name = 'next_app_time'
      Attributes = [faRequired]
      DataType = ftString
      Size = 10
    end
    item
      Name = 'provider_name'
      Attributes = [faRequired]
      DataType = ftString
      Size = 100
    end
    item
      Name = 'message'
      DataType = ftMemo
    end
    item
      Name = 'email_sender'
      Attributes = [faRequired]
      DataType = ftString
      Size = 100
    end
    item
      Name = 'email_subject'
      Attributes = [faRequired]
      DataType = ftString
      Size = 100
    end
    item
      Name = 'type'
      Attributes = [faFixed]
      DataType = ftFixedChar
      Size = 5
    end
    item
      Name = 'notification_sent_date'
      Attributes = [faRequired]
      DataType = ftDateTime
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint23: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postautomatic_notification/'
    Response = RESTResponse23
    Left = 230
    Top = 230
  end
  object RESTResponse23: TRESTResponse
    Left = 276
    Top = 276
  end
object postautomatic_notificationPostMemTable23: TFDMemTable
  FieldDefs = <
    item
      Name = 'notification_id'
      DataType = ftAutoInc
    end
    item
      Name = 'sms_gateway_type'
      Attributes = [faRequired]
      DataType = ftString
      Size = 255
    end
    item
      Name = 'next_app_date'
      Attributes = [faRequired]
      DataType = ftDate
    end
    item
      Name = 'next_app_time'
      Attributes = [faRequired]
      DataType = ftString
      Size = 10
    end
    item
      Name = 'provider_name'
      Attributes = [faRequired]
      DataType = ftString
      Size = 100
    end
    item
      Name = 'message'
      DataType = ftMemo
    end
    item
      Name = 'email_sender'
      Attributes = [faRequired]
      DataType = ftString
      Size = 100
    end
    item
      Name = 'email_subject'
      Attributes = [faRequired]
      DataType = ftString
      Size = 100
    end
    item
      Name = 'type'
      Attributes = [faFixed]
      DataType = ftFixedChar
      Size = 5
    end
    item
      Name = 'notification_sent_date'
      Attributes = [faRequired]
      DataType = ftDateTime
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postautomatic_notificationMemTable23: TFDMemTable
  FieldDefs = <
    item
      Name = 'notification_id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint24: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'notification_id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteautomatic_notification/?notification_id={notification_id}'
    Response = RESTResponse24
    Left = 240
    Top = 240
  end
  object RESTResponse24: TRESTResponse
    Left = 288
    Top = 288
  end

  object BackendEndpoint25: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getbackground_services/?format={format}'
    Response = RESTResponse25
    Left = 250
    Top = 250
  end
  object RESTResponse25: TRESTResponse
    Left = 300
    Top = 300
  end
object getbackground_servicesMemTable25: TFDMemTable
  FieldDefs = <
    item
      Name = 'name'
      Attributes = [faRequired]
      DataType = ftString
      Size = 31
    end
    item
      Name = 'title'
      Attributes = [faRequired]
      DataType = ftString
      Size = 127
    end
    item
      Name = 'active'
      DataType = ftBoolean
    end
    item
      Name = 'running'
      DataType = ftBoolean
    end
    item
      Name = 'next_run'
      DataType = ftTimeStamp
    end
    item
      Name = 'execute_interval'
      DataType = ftInteger
    end
    item
      Name = 'function'
      Attributes = [faRequired]
      DataType = ftString
      Size = 127
    end
    item
      Name = 'require_once'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'sort_order'
      DataType = ftInteger
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint26: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postbackground_services/'
    Response = RESTResponse26
    Left = 260
    Top = 260
  end
  object RESTResponse26: TRESTResponse
    Left = 312
    Top = 312
  end
object postbackground_servicesPostMemTable26: TFDMemTable
  FieldDefs = <
    item
      Name = 'name'
      Attributes = [faRequired]
      DataType = ftString
      Size = 31
    end
    item
      Name = 'title'
      Attributes = [faRequired]
      DataType = ftString
      Size = 127
    end
    item
      Name = 'active'
      DataType = ftBoolean
    end
    item
      Name = 'running'
      DataType = ftBoolean
    end
    item
      Name = 'next_run'
      DataType = ftTimeStamp
    end
    item
      Name = 'execute_interval'
      DataType = ftInteger
    end
    item
      Name = 'function'
      Attributes = [faRequired]
      DataType = ftString
      Size = 127
    end
    item
      Name = 'require_once'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'sort_order'
      DataType = ftInteger
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postbackground_servicesMemTable26: TFDMemTable
  FieldDefs = <
    item
      Name = 'name'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint27: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'name'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletebackground_services/?name={name}'
    Response = RESTResponse27
    Left = 270
    Top = 270
  end
  object RESTResponse27: TRESTResponse
    Left = 324
    Top = 324
  end

  object BackendEndpoint28: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getbatchcom/?format={format}'
    Response = RESTResponse28
    Left = 280
    Top = 280
  end
  object RESTResponse28: TRESTResponse
    Left = 336
    Top = 336
  end
object getbatchcomMemTable28: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'patient_id'
      DataType = ftLargeint
    end
    item
      Name = 'sent_by'
      DataType = ftLargeint
    end
    item
      Name = 'msg_type'
      DataType = ftString
      Size = 60
    end
    item
      Name = 'msg_subject'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'msg_text'
      DataType = ftMemo
    end
    item
      Name = 'msg_date_sent'
      DataType = ftDateTime
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint29: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postbatchcom/'
    Response = RESTResponse29
    Left = 290
    Top = 290
  end
  object RESTResponse29: TRESTResponse
    Left = 348
    Top = 348
  end
object postbatchcomPostMemTable29: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'patient_id'
      DataType = ftLargeint
    end
    item
      Name = 'sent_by'
      DataType = ftLargeint
    end
    item
      Name = 'msg_type'
      DataType = ftString
      Size = 60
    end
    item
      Name = 'msg_subject'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'msg_text'
      DataType = ftMemo
    end
    item
      Name = 'msg_date_sent'
      DataType = ftDateTime
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postbatchcomMemTable29: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint30: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletebatchcom/?id={id}'
    Response = RESTResponse30
    Left = 300
    Top = 300
  end
  object RESTResponse30: TRESTResponse
    Left = 360
    Top = 360
  end

  object BackendEndpoint31: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getbilling/?format={format}'
    Response = RESTResponse31
    Left = 310
    Top = 310
  end
  object RESTResponse31: TRESTResponse
    Left = 372
    Top = 372
  end
object getbillingMemTable31: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftAutoInc
    end
    item
      Name = 'date'
      DataType = ftDateTime
    end
    item
      Name = 'code_type'
      DataType = ftString
      Size = 15
    end
    item
      Name = 'code'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'pid'
      DataType = ftLargeint
    end
    item
      Name = 'provider_id'
      DataType = ftInteger
    end
    item
      Name = 'user'
      DataType = ftInteger
    end
    item
      Name = 'groupname'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'authorized'
      DataType = ftBoolean
    end
    item
      Name = 'encounter'
      DataType = ftInteger
    end
    item
      Name = 'code_text'
      DataType = ftMemo
    end
    item
      Name = 'billed'
      DataType = ftBoolean
    end
    item
      Name = 'activity'
      DataType = ftBoolean
    end
    item
      Name = 'payer_id'
      DataType = ftInteger
    end
    item
      Name = 'bill_process'
      DataType = ftShortint
    end
    item
      Name = 'bill_date'
      DataType = ftDateTime
    end
    item
      Name = 'process_date'
      DataType = ftDateTime
    end
    item
      Name = 'process_file'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'modifier'
      DataType = ftString
      Size = 12
    end
    item
      Name = 'units'
      DataType = ftInteger
    end
    item
      Name = 'fee'
      DataType = ftBCD
      Precision = 12
      Size = 2
    end
    item
      Name = 'justify'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'target'
      DataType = ftString
      Size = 30
    end
    item
      Name = 'x12_partner_id'
      DataType = ftInteger
    end
    item
      Name = 'ndc_info'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'notecodes'
      DataType = ftString
      Size = 25
    end
    item
      Name = 'external_id'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'pricelevel'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'revenue_code'
      DataType = ftString
      Size = 6
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint32: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postbilling/'
    Response = RESTResponse32
    Left = 320
    Top = 320
  end
  object RESTResponse32: TRESTResponse
    Left = 384
    Top = 384
  end
object postbillingPostMemTable32: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftAutoInc
    end
    item
      Name = 'date'
      DataType = ftDateTime
    end
    item
      Name = 'code_type'
      DataType = ftString
      Size = 15
    end
    item
      Name = 'code'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'pid'
      DataType = ftLargeint
    end
    item
      Name = 'provider_id'
      DataType = ftInteger
    end
    item
      Name = 'user'
      DataType = ftInteger
    end
    item
      Name = 'groupname'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'authorized'
      DataType = ftBoolean
    end
    item
      Name = 'encounter'
      DataType = ftInteger
    end
    item
      Name = 'code_text'
      DataType = ftMemo
    end
    item
      Name = 'billed'
      DataType = ftBoolean
    end
    item
      Name = 'activity'
      DataType = ftBoolean
    end
    item
      Name = 'payer_id'
      DataType = ftInteger
    end
    item
      Name = 'bill_process'
      DataType = ftShortint
    end
    item
      Name = 'bill_date'
      DataType = ftDateTime
    end
    item
      Name = 'process_date'
      DataType = ftDateTime
    end
    item
      Name = 'process_file'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'modifier'
      DataType = ftString
      Size = 12
    end
    item
      Name = 'units'
      DataType = ftInteger
    end
    item
      Name = 'fee'
      DataType = ftBCD
      Precision = 12
      Size = 2
    end
    item
      Name = 'justify'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'target'
      DataType = ftString
      Size = 30
    end
    item
      Name = 'x12_partner_id'
      DataType = ftInteger
    end
    item
      Name = 'ndc_info'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'notecodes'
      DataType = ftString
      Size = 25
    end
    item
      Name = 'external_id'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'pricelevel'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'revenue_code'
      DataType = ftString
      Size = 6
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postbillingMemTable32: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint33: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletebilling/?id={id}'
    Response = RESTResponse33
    Left = 330
    Top = 330
  end
  object RESTResponse33: TRESTResponse
    Left = 396
    Top = 396
  end

  object BackendEndpoint34: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getcalendar_external/?format={format}'
    Response = RESTResponse34
    Left = 340
    Top = 340
  end
  object RESTResponse34: TRESTResponse
    Left = 408
    Top = 408
  end
object getcalendar_externalMemTable34: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftAutoInc
    end
    item
      Name = 'date'
      Attributes = [faRequired]
      DataType = ftDate
    end
    item
      Name = 'description'
      Attributes = [faRequired]
      DataType = ftString
      Size = 45
    end
    item
      Name = 'source'
      DataType = ftString
      Size = 45
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint35: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postcalendar_external/'
    Response = RESTResponse35
    Left = 350
    Top = 350
  end
  object RESTResponse35: TRESTResponse
    Left = 420
    Top = 420
  end
object postcalendar_externalPostMemTable35: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftAutoInc
    end
    item
      Name = 'date'
      Attributes = [faRequired]
      DataType = ftDate
    end
    item
      Name = 'description'
      Attributes = [faRequired]
      DataType = ftString
      Size = 45
    end
    item
      Name = 'source'
      DataType = ftString
      Size = 45
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postcalendar_externalMemTable35: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint36: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletecalendar_external/?id={id}'
    Response = RESTResponse36
    Left = 360
    Top = 360
  end
  object RESTResponse36: TRESTResponse
    Left = 432
    Top = 432
  end

  object BackendEndpoint37: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getcategories/?format={format}'
    Response = RESTResponse37
    Left = 370
    Top = 370
  end
  object RESTResponse37: TRESTResponse
    Left = 444
    Top = 444
  end
object getcategoriesMemTable37: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftInteger
    end
    item
      Name = 'name'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'value'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'parent'
      DataType = ftInteger
    end
    item
      Name = 'lft'
      DataType = ftInteger
    end
    item
      Name = 'rght'
      DataType = ftInteger
    end
    item
      Name = 'aco_spec'
      DataType = ftString
      Size = 63
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint38: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postcategories/'
    Response = RESTResponse38
    Left = 380
    Top = 380
  end
  object RESTResponse38: TRESTResponse
    Left = 456
    Top = 456
  end
object postcategoriesPostMemTable38: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftInteger
    end
    item
      Name = 'name'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'value'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'parent'
      DataType = ftInteger
    end
    item
      Name = 'lft'
      DataType = ftInteger
    end
    item
      Name = 'rght'
      DataType = ftInteger
    end
    item
      Name = 'aco_spec'
      DataType = ftString
      Size = 63
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postcategoriesMemTable38: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint39: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletecategories/?id={id}'
    Response = RESTResponse39
    Left = 390
    Top = 390
  end
  object RESTResponse39: TRESTResponse
    Left = 468
    Top = 468
  end

  object BackendEndpoint40: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getcategories_seq/?format={format}'
    Response = RESTResponse40
    Left = 400
    Top = 400
  end
  object RESTResponse40: TRESTResponse
    Left = 480
    Top = 480
  end
object getcategories_seqMemTable40: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftInteger
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint41: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postcategories_seq/'
    Response = RESTResponse41
    Left = 410
    Top = 410
  end
  object RESTResponse41: TRESTResponse
    Left = 492
    Top = 492
  end
object postcategories_seqPostMemTable41: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftInteger
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postcategories_seqMemTable41: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint42: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletecategories_seq/?id={id}'
    Response = RESTResponse42
    Left = 420
    Top = 420
  end
  object RESTResponse42: TRESTResponse
    Left = 504
    Top = 504
  end

  object BackendEndpoint43: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getcategories_to_documents/?format={format}'
    Response = RESTResponse43
    Left = 430
    Top = 430
  end
  object RESTResponse43: TRESTResponse
    Left = 516
    Top = 516
  end
object getcategories_to_documentsMemTable43: TFDMemTable
  FieldDefs = <
    item
      Name = 'category_id'
      DataType = ftInteger
    end
    item
      Name = 'document_id'
      DataType = ftInteger
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint44: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postcategories_to_documents/'
    Response = RESTResponse44
    Left = 440
    Top = 440
  end
  object RESTResponse44: TRESTResponse
    Left = 528
    Top = 528
  end
object postcategories_to_documentsPostMemTable44: TFDMemTable
  FieldDefs = <
    item
      Name = 'category_id'
      DataType = ftInteger
    end
    item
      Name = 'document_id'
      DataType = ftInteger
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postcategories_to_documentsMemTable44: TFDMemTable
  FieldDefs = <
    item
      Name = 'category_id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint45: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'category_id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletecategories_to_documents/?category_id={category_id}'
    Response = RESTResponse45
    Left = 450
    Top = 450
  end
  object RESTResponse45: TRESTResponse
    Left = 540
    Top = 540
  end

  object BackendEndpoint46: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getccda/?format={format}'
    Response = RESTResponse46
    Left = 460
    Top = 460
  end
  object RESTResponse46: TRESTResponse
    Left = 552
    Top = 552
  end
object getccdaMemTable46: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftAutoInc
    end
    item
      Name = 'pid'
      DataType = ftLargeint
    end
    item
      Name = 'encounter'
      DataType = ftLargeint
    end
    item
      Name = 'ccda_data'
      DataType = ftMemo
    end
    item
      Name = 'time'
      DataType = ftString
      Size = 50
    end
    item
      Name = 'status'
      DataType = ftSmallint
    end
    item
      Name = 'updated_date'
      DataType = ftTimeStamp
    end
    item
      Name = 'user_id'
      DataType = ftString
      Size = 50
    end
    item
      Name = 'couch_docid'
      DataType = ftString
      Size = 100
    end
    item
      Name = 'couch_revid'
      DataType = ftString
      Size = 100
    end
    item
      Name = 'view'
      DataType = ftShortint
    end
    item
      Name = 'transfer'
      DataType = ftShortint
    end
    item
      Name = 'emr_transfer'
      DataType = ftShortint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint47: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postccda/'
    Response = RESTResponse47
    Left = 470
    Top = 470
  end
  object RESTResponse47: TRESTResponse
    Left = 564
    Top = 564
  end
object postccdaPostMemTable47: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftAutoInc
    end
    item
      Name = 'pid'
      DataType = ftLargeint
    end
    item
      Name = 'encounter'
      DataType = ftLargeint
    end
    item
      Name = 'ccda_data'
      DataType = ftMemo
    end
    item
      Name = 'time'
      DataType = ftString
      Size = 50
    end
    item
      Name = 'status'
      DataType = ftSmallint
    end
    item
      Name = 'updated_date'
      DataType = ftTimeStamp
    end
    item
      Name = 'user_id'
      DataType = ftString
      Size = 50
    end
    item
      Name = 'couch_docid'
      DataType = ftString
      Size = 100
    end
    item
      Name = 'couch_revid'
      DataType = ftString
      Size = 100
    end
    item
      Name = 'view'
      DataType = ftShortint
    end
    item
      Name = 'transfer'
      DataType = ftShortint
    end
    item
      Name = 'emr_transfer'
      DataType = ftShortint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postccdaMemTable47: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint48: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteccda/?id={id}'
    Response = RESTResponse48
    Left = 480
    Top = 480
  end
  object RESTResponse48: TRESTResponse
    Left = 576
    Top = 576
  end

  object BackendEndpoint49: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getccda_components/?format={format}'
    Response = RESTResponse49
    Left = 490
    Top = 490
  end
  object RESTResponse49: TRESTResponse
    Left = 588
    Top = 588
  end
object getccda_componentsMemTable49: TFDMemTable
  FieldDefs = <
    item
      Name = 'ccda_components_id'
      DataType = ftAutoInc
    end
    item
      Name = 'ccda_components_field'
      DataType = ftString
      Size = 100
    end
    item
      Name = 'ccda_components_name'
      DataType = ftString
      Size = 100
    end
    item
      Name = 'ccda_type'
      Attributes = [faRequired]
      DataType = ftInteger
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint50: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postccda_components/'
    Response = RESTResponse50
    Left = 500
    Top = 500
  end
  object RESTResponse50: TRESTResponse
    Left = 600
    Top = 600
  end
object postccda_componentsPostMemTable50: TFDMemTable
  FieldDefs = <
    item
      Name = 'ccda_components_id'
      DataType = ftAutoInc
    end
    item
      Name = 'ccda_components_field'
      DataType = ftString
      Size = 100
    end
    item
      Name = 'ccda_components_name'
      DataType = ftString
      Size = 100
    end
    item
      Name = 'ccda_type'
      Attributes = [faRequired]
      DataType = ftInteger
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postccda_componentsMemTable50: TFDMemTable
  FieldDefs = <
    item
      Name = 'ccda_components_id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint51: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'ccda_components_id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteccda_components/?ccda_components_id={ccda_components_id}'
    Response = RESTResponse51
    Left = 510
    Top = 510
  end
  object RESTResponse51: TRESTResponse
    Left = 612
    Top = 612
  end

  object BackendEndpoint52: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getccda_field_mapping/?format={format}'
    Response = RESTResponse52
    Left = 520
    Top = 520
  end
  object RESTResponse52: TRESTResponse
    Left = 624
    Top = 624
  end
object getccda_field_mappingMemTable52: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftAutoInc
    end
    item
      Name = 'table_id'
      DataType = ftInteger
    end
    item
      Name = 'ccda_field'
      DataType = ftString
      Size = 100
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint53: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postccda_field_mapping/'
    Response = RESTResponse53
    Left = 530
    Top = 530
  end
  object RESTResponse53: TRESTResponse
    Left = 636
    Top = 636
  end
object postccda_field_mappingPostMemTable53: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftAutoInc
    end
    item
      Name = 'table_id'
      DataType = ftInteger
    end
    item
      Name = 'ccda_field'
      DataType = ftString
      Size = 100
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postccda_field_mappingMemTable53: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint54: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteccda_field_mapping/?id={id}'
    Response = RESTResponse54
    Left = 540
    Top = 540
  end
  object RESTResponse54: TRESTResponse
    Left = 648
    Top = 648
  end

  object BackendEndpoint55: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getccda_sections/?format={format}'
    Response = RESTResponse55
    Left = 550
    Top = 550
  end
  object RESTResponse55: TRESTResponse
    Left = 660
    Top = 660
  end
object getccda_sectionsMemTable55: TFDMemTable
  FieldDefs = <
    item
      Name = 'ccda_sections_id'
      DataType = ftAutoInc
    end
    item
      Name = 'ccda_components_id'
      DataType = ftInteger
    end
    item
      Name = 'ccda_sections_field'
      DataType = ftString
      Size = 100
    end
    item
      Name = 'ccda_sections_name'
      DataType = ftString
      Size = 100
    end
    item
      Name = 'ccda_sections_req_mapping'
      DataType = ftShortint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint56: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postccda_sections/'
    Response = RESTResponse56
    Left = 560
    Top = 560
  end
  object RESTResponse56: TRESTResponse
    Left = 672
    Top = 672
  end
object postccda_sectionsPostMemTable56: TFDMemTable
  FieldDefs = <
    item
      Name = 'ccda_sections_id'
      DataType = ftAutoInc
    end
    item
      Name = 'ccda_components_id'
      DataType = ftInteger
    end
    item
      Name = 'ccda_sections_field'
      DataType = ftString
      Size = 100
    end
    item
      Name = 'ccda_sections_name'
      DataType = ftString
      Size = 100
    end
    item
      Name = 'ccda_sections_req_mapping'
      DataType = ftShortint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postccda_sectionsMemTable56: TFDMemTable
  FieldDefs = <
    item
      Name = 'ccda_sections_id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint57: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'ccda_sections_id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteccda_sections/?ccda_sections_id={ccda_sections_id}'
    Response = RESTResponse57
    Left = 570
    Top = 570
  end
  object RESTResponse57: TRESTResponse
    Left = 684
    Top = 684
  end

  object BackendEndpoint58: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getccda_table_mapping/?format={format}'
    Response = RESTResponse58
    Left = 580
    Top = 580
  end
  object RESTResponse58: TRESTResponse
    Left = 696
    Top = 696
  end
object getccda_table_mappingMemTable58: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftAutoInc
    end
    item
      Name = 'ccda_component'
      DataType = ftString
      Size = 100
    end
    item
      Name = 'ccda_component_section'
      DataType = ftString
      Size = 100
    end
    item
      Name = 'form_dir'
      DataType = ftString
      Size = 100
    end
    item
      Name = 'form_type'
      DataType = ftSmallint
    end
    item
      Name = 'form_table'
      DataType = ftString
      Size = 100
    end
    item
      Name = 'user_id'
      DataType = ftInteger
    end
    item
      Name = 'deleted'
      DataType = ftShortint
    end
    item
      Name = 'timestamp'
      DataType = ftTimeStamp
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint59: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postccda_table_mapping/'
    Response = RESTResponse59
    Left = 590
    Top = 590
  end
  object RESTResponse59: TRESTResponse
    Left = 708
    Top = 708
  end
object postccda_table_mappingPostMemTable59: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftAutoInc
    end
    item
      Name = 'ccda_component'
      DataType = ftString
      Size = 100
    end
    item
      Name = 'ccda_component_section'
      DataType = ftString
      Size = 100
    end
    item
      Name = 'form_dir'
      DataType = ftString
      Size = 100
    end
    item
      Name = 'form_type'
      DataType = ftSmallint
    end
    item
      Name = 'form_table'
      DataType = ftString
      Size = 100
    end
    item
      Name = 'user_id'
      DataType = ftInteger
    end
    item
      Name = 'deleted'
      DataType = ftShortint
    end
    item
      Name = 'timestamp'
      DataType = ftTimeStamp
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postccda_table_mappingMemTable59: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint60: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteccda_table_mapping/?id={id}'
    Response = RESTResponse60
    Left = 600
    Top = 600
  end
  object RESTResponse60: TRESTResponse
    Left = 720
    Top = 720
  end

  object BackendEndpoint61: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getchart_tracker/?format={format}'
    Response = RESTResponse61
    Left = 610
    Top = 610
  end
  object RESTResponse61: TRESTResponse
    Left = 732
    Top = 732
  end
object getchart_trackerMemTable61: TFDMemTable
  FieldDefs = <
    item
      Name = 'ct_pid'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'ct_when'
      Attributes = [faRequired]
      DataType = ftDateTime
    end
    item
      Name = 'ct_userid'
      DataType = ftLargeint
    end
    item
      Name = 'ct_location'
      DataType = ftString
      Size = 31
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint62: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postchart_tracker/'
    Response = RESTResponse62
    Left = 620
    Top = 620
  end
  object RESTResponse62: TRESTResponse
    Left = 744
    Top = 744
  end
object postchart_trackerPostMemTable62: TFDMemTable
  FieldDefs = <
    item
      Name = 'ct_pid'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'ct_when'
      Attributes = [faRequired]
      DataType = ftDateTime
    end
    item
      Name = 'ct_userid'
      DataType = ftLargeint
    end
    item
      Name = 'ct_location'
      DataType = ftString
      Size = 31
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postchart_trackerMemTable62: TFDMemTable
  FieldDefs = <
    item
      Name = 'ct_pid'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint63: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'ct_pid'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletechart_tracker/?ct_pid={ct_pid}'
    Response = RESTResponse63
    Left = 630
    Top = 630
  end
  object RESTResponse63: TRESTResponse
    Left = 756
    Top = 756
  end

  object BackendEndpoint64: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getclaims/?format={format}'
    Response = RESTResponse64
    Left = 640
    Top = 640
  end
  object RESTResponse64: TRESTResponse
    Left = 768
    Top = 768
  end
object getclaimsMemTable64: TFDMemTable
  FieldDefs = <
    item
      Name = 'patient_id'
      Attributes = [faRequired]
      DataType = ftLargeint
    end
    item
      Name = 'encounter_id'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'version'
      Attributes = [faRequired]
      DataType = ftLongWord
    end
    item
      Name = 'payer_id'
      DataType = ftInteger
    end
    item
      Name = 'status'
      DataType = ftShortint
    end
    item
      Name = 'payer_type'
      DataType = ftShortint
    end
    item
      Name = 'bill_process'
      DataType = ftShortint
    end
    item
      Name = 'bill_time'
      DataType = ftDateTime
    end
    item
      Name = 'process_time'
      DataType = ftDateTime
    end
    item
      Name = 'process_file'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'target'
      DataType = ftString
      Size = 30
    end
    item
      Name = 'x12_partner_id'
      DataType = ftInteger
    end
    item
      Name = 'submitted_claim'
      DataType = ftMemo
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint65: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postclaims/'
    Response = RESTResponse65
    Left = 650
    Top = 650
  end
  object RESTResponse65: TRESTResponse
    Left = 780
    Top = 780
  end
object postclaimsPostMemTable65: TFDMemTable
  FieldDefs = <
    item
      Name = 'patient_id'
      Attributes = [faRequired]
      DataType = ftLargeint
    end
    item
      Name = 'encounter_id'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'version'
      Attributes = [faRequired]
      DataType = ftLongWord
    end
    item
      Name = 'payer_id'
      DataType = ftInteger
    end
    item
      Name = 'status'
      DataType = ftShortint
    end
    item
      Name = 'payer_type'
      DataType = ftShortint
    end
    item
      Name = 'bill_process'
      DataType = ftShortint
    end
    item
      Name = 'bill_time'
      DataType = ftDateTime
    end
    item
      Name = 'process_time'
      DataType = ftDateTime
    end
    item
      Name = 'process_file'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'target'
      DataType = ftString
      Size = 30
    end
    item
      Name = 'x12_partner_id'
      DataType = ftInteger
    end
    item
      Name = 'submitted_claim'
      DataType = ftMemo
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postclaimsMemTable65: TFDMemTable
  FieldDefs = <
    item
      Name = 'patient_id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint66: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'patient_id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteclaims/?patient_id={patient_id}'
    Response = RESTResponse66
    Left = 660
    Top = 660
  end
  object RESTResponse66: TRESTResponse
    Left = 792
    Top = 792
  end

  object BackendEndpoint67: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getclinical_plans/?format={format}'
    Response = RESTResponse67
    Left = 670
    Top = 670
  end
  object RESTResponse67: TRESTResponse
    Left = 804
    Top = 804
  end
object getclinical_plansMemTable67: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'pid'
      DataType = ftLargeint
    end
    item
      Name = 'normal_flag'
      DataType = ftBoolean
    end
    item
      Name = 'cqm_flag'
      DataType = ftBoolean
    end
    item
      Name = 'cqm_2011_flag'
      DataType = ftBoolean
    end
    item
      Name = 'cqm_2014_flag'
      DataType = ftBoolean
    end
    item
      Name = 'cqm_measure_group'
      DataType = ftString
      Size = 10
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint68: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postclinical_plans/'
    Response = RESTResponse68
    Left = 680
    Top = 680
  end
  object RESTResponse68: TRESTResponse
    Left = 816
    Top = 816
  end
object postclinical_plansPostMemTable68: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'pid'
      DataType = ftLargeint
    end
    item
      Name = 'normal_flag'
      DataType = ftBoolean
    end
    item
      Name = 'cqm_flag'
      DataType = ftBoolean
    end
    item
      Name = 'cqm_2011_flag'
      DataType = ftBoolean
    end
    item
      Name = 'cqm_2014_flag'
      DataType = ftBoolean
    end
    item
      Name = 'cqm_measure_group'
      DataType = ftString
      Size = 10
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postclinical_plansMemTable68: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint69: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteclinical_plans/?id={id}'
    Response = RESTResponse69
    Left = 690
    Top = 690
  end
  object RESTResponse69: TRESTResponse
    Left = 828
    Top = 828
  end

  object BackendEndpoint70: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getclinical_plans_rules/?format={format}'
    Response = RESTResponse70
    Left = 700
    Top = 700
  end
  object RESTResponse70: TRESTResponse
    Left = 840
    Top = 840
  end
object getclinical_plans_rulesMemTable70: TFDMemTable
  FieldDefs = <
    item
      Name = 'plan_id'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'rule_id'
      DataType = ftString
      Size = 31
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint71: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postclinical_plans_rules/'
    Response = RESTResponse71
    Left = 710
    Top = 710
  end
  object RESTResponse71: TRESTResponse
    Left = 852
    Top = 852
  end
object postclinical_plans_rulesPostMemTable71: TFDMemTable
  FieldDefs = <
    item
      Name = 'plan_id'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'rule_id'
      DataType = ftString
      Size = 31
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postclinical_plans_rulesMemTable71: TFDMemTable
  FieldDefs = <
    item
      Name = 'plan_id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint72: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'plan_id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteclinical_plans_rules/?plan_id={plan_id}'
    Response = RESTResponse72
    Left = 720
    Top = 720
  end
  object RESTResponse72: TRESTResponse
    Left = 864
    Top = 864
  end

  object BackendEndpoint73: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getclinical_rules/?format={format}'
    Response = RESTResponse73
    Left = 730
    Top = 730
  end
  object RESTResponse73: TRESTResponse
    Left = 876
    Top = 876
  end
object getclinical_rulesMemTable73: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'pid'
      DataType = ftLargeint
    end
    item
      Name = 'active_alert_flag'
      DataType = ftBoolean
    end
    item
      Name = 'passive_alert_flag'
      DataType = ftBoolean
    end
    item
      Name = 'cqm_flag'
      DataType = ftBoolean
    end
    item
      Name = 'cqm_2011_flag'
      DataType = ftBoolean
    end
    item
      Name = 'cqm_2014_flag'
      DataType = ftBoolean
    end
    item
      Name = 'cqm_nqf_code'
      DataType = ftString
      Size = 10
    end
    item
      Name = 'cqm_pqri_code'
      DataType = ftString
      Size = 10
    end
    item
      Name = 'amc_flag'
      DataType = ftBoolean
    end
    item
      Name = 'amc_2011_flag'
      DataType = ftBoolean
    end
    item
      Name = 'amc_2014_flag'
      DataType = ftBoolean
    end
    item
      Name = 'amc_code'
      DataType = ftString
      Size = 10
    end
    item
      Name = 'amc_code_2014'
      DataType = ftString
      Size = 30
    end
    item
      Name = 'amc_2014_stage1_flag'
      DataType = ftBoolean
    end
    item
      Name = 'amc_2014_stage2_flag'
      DataType = ftBoolean
    end
    item
      Name = 'patient_reminder_flag'
      DataType = ftBoolean
    end
    item
      Name = 'developer'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'funding_source'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'release_version'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'web_reference'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'access_control'
      DataType = ftString
      Size = 255
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint74: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postclinical_rules/'
    Response = RESTResponse74
    Left = 740
    Top = 740
  end
  object RESTResponse74: TRESTResponse
    Left = 888
    Top = 888
  end
object postclinical_rulesPostMemTable74: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'pid'
      DataType = ftLargeint
    end
    item
      Name = 'active_alert_flag'
      DataType = ftBoolean
    end
    item
      Name = 'passive_alert_flag'
      DataType = ftBoolean
    end
    item
      Name = 'cqm_flag'
      DataType = ftBoolean
    end
    item
      Name = 'cqm_2011_flag'
      DataType = ftBoolean
    end
    item
      Name = 'cqm_2014_flag'
      DataType = ftBoolean
    end
    item
      Name = 'cqm_nqf_code'
      DataType = ftString
      Size = 10
    end
    item
      Name = 'cqm_pqri_code'
      DataType = ftString
      Size = 10
    end
    item
      Name = 'amc_flag'
      DataType = ftBoolean
    end
    item
      Name = 'amc_2011_flag'
      DataType = ftBoolean
    end
    item
      Name = 'amc_2014_flag'
      DataType = ftBoolean
    end
    item
      Name = 'amc_code'
      DataType = ftString
      Size = 10
    end
    item
      Name = 'amc_code_2014'
      DataType = ftString
      Size = 30
    end
    item
      Name = 'amc_2014_stage1_flag'
      DataType = ftBoolean
    end
    item
      Name = 'amc_2014_stage2_flag'
      DataType = ftBoolean
    end
    item
      Name = 'patient_reminder_flag'
      DataType = ftBoolean
    end
    item
      Name = 'developer'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'funding_source'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'release_version'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'web_reference'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'access_control'
      DataType = ftString
      Size = 255
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postclinical_rulesMemTable74: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint75: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteclinical_rules/?id={id}'
    Response = RESTResponse75
    Left = 750
    Top = 750
  end
  object RESTResponse75: TRESTResponse
    Left = 900
    Top = 900
  end

  object BackendEndpoint76: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getclinical_rules_log/?format={format}'
    Response = RESTResponse76
    Left = 760
    Top = 760
  end
  object RESTResponse76: TRESTResponse
    Left = 912
    Top = 912
  end
object getclinical_rules_logMemTable76: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'date'
      DataType = ftDateTime
    end
    item
      Name = 'pid'
      DataType = ftLargeint
    end
    item
      Name = 'uid'
      DataType = ftLargeint
    end
    item
      Name = 'category'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'value'
      DataType = ftMemo
    end
    item
      Name = 'new_value'
      DataType = ftMemo
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint77: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postclinical_rules_log/'
    Response = RESTResponse77
    Left = 770
    Top = 770
  end
  object RESTResponse77: TRESTResponse
    Left = 924
    Top = 924
  end
object postclinical_rules_logPostMemTable77: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'date'
      DataType = ftDateTime
    end
    item
      Name = 'pid'
      DataType = ftLargeint
    end
    item
      Name = 'uid'
      DataType = ftLargeint
    end
    item
      Name = 'category'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'value'
      DataType = ftMemo
    end
    item
      Name = 'new_value'
      DataType = ftMemo
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postclinical_rules_logMemTable77: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint78: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteclinical_rules_log/?id={id}'
    Response = RESTResponse78
    Left = 780
    Top = 780
  end
  object RESTResponse78: TRESTResponse
    Left = 936
    Top = 936
  end

  object BackendEndpoint79: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getcode_types/?format={format}'
    Response = RESTResponse79
    Left = 790
    Top = 790
  end
  object RESTResponse79: TRESTResponse
    Left = 948
    Top = 948
  end
object getcode_typesMemTable79: TFDMemTable
  FieldDefs = <
    item
      Name = 'ct_key'
      Attributes = [faRequired]
      DataType = ftString
      Size = 15
    end
    item
      Name = 'ct_id'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'ct_seq'
      DataType = ftInteger
    end
    item
      Name = 'ct_mod'
      DataType = ftInteger
    end
    item
      Name = 'ct_just'
      DataType = ftString
      Size = 15
    end
    item
      Name = 'ct_mask'
      DataType = ftString
      Size = 9
    end
    item
      Name = 'ct_fee'
      DataType = ftBoolean
    end
    item
      Name = 'ct_rel'
      DataType = ftBoolean
    end
    item
      Name = 'ct_nofs'
      DataType = ftBoolean
    end
    item
      Name = 'ct_diag'
      DataType = ftBoolean
    end
    item
      Name = 'ct_active'
      DataType = ftBoolean
    end
    item
      Name = 'ct_label'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'ct_external'
      DataType = ftBoolean
    end
    item
      Name = 'ct_claim'
      DataType = ftBoolean
    end
    item
      Name = 'ct_proc'
      DataType = ftBoolean
    end
    item
      Name = 'ct_term'
      DataType = ftBoolean
    end
    item
      Name = 'ct_problem'
      DataType = ftBoolean
    end
    item
      Name = 'ct_drug'
      DataType = ftBoolean
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint80: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postcode_types/'
    Response = RESTResponse80
    Left = 800
    Top = 800
  end
  object RESTResponse80: TRESTResponse
    Left = 960
    Top = 960
  end
object postcode_typesPostMemTable80: TFDMemTable
  FieldDefs = <
    item
      Name = 'ct_key'
      Attributes = [faRequired]
      DataType = ftString
      Size = 15
    end
    item
      Name = 'ct_id'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'ct_seq'
      DataType = ftInteger
    end
    item
      Name = 'ct_mod'
      DataType = ftInteger
    end
    item
      Name = 'ct_just'
      DataType = ftString
      Size = 15
    end
    item
      Name = 'ct_mask'
      DataType = ftString
      Size = 9
    end
    item
      Name = 'ct_fee'
      DataType = ftBoolean
    end
    item
      Name = 'ct_rel'
      DataType = ftBoolean
    end
    item
      Name = 'ct_nofs'
      DataType = ftBoolean
    end
    item
      Name = 'ct_diag'
      DataType = ftBoolean
    end
    item
      Name = 'ct_active'
      DataType = ftBoolean
    end
    item
      Name = 'ct_label'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'ct_external'
      DataType = ftBoolean
    end
    item
      Name = 'ct_claim'
      DataType = ftBoolean
    end
    item
      Name = 'ct_proc'
      DataType = ftBoolean
    end
    item
      Name = 'ct_term'
      DataType = ftBoolean
    end
    item
      Name = 'ct_problem'
      DataType = ftBoolean
    end
    item
      Name = 'ct_drug'
      DataType = ftBoolean
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postcode_typesMemTable80: TFDMemTable
  FieldDefs = <
    item
      Name = 'ct_key'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint81: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'ct_key'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletecode_types/?ct_key={ct_key}'
    Response = RESTResponse81
    Left = 810
    Top = 810
  end
  object RESTResponse81: TRESTResponse
    Left = 972
    Top = 972
  end

  object BackendEndpoint82: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getcodes/?format={format}'
    Response = RESTResponse82
    Left = 820
    Top = 820
  end
  object RESTResponse82: TRESTResponse
    Left = 984
    Top = 984
  end
object getcodesMemTable82: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftAutoInc
    end
    item
      Name = 'code_text'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'code_text_short'
      DataType = ftString
      Size = 24
    end
    item
      Name = 'code'
      DataType = ftString
      Size = 25
    end
    item
      Name = 'code_type'
      DataType = ftSmallint
    end
    item
      Name = 'modifier'
      DataType = ftString
      Size = 12
    end
    item
      Name = 'units'
      DataType = ftInteger
    end
    item
      Name = 'fee'
      DataType = ftBCD
      Precision = 12
      Size = 2
    end
    item
      Name = 'superbill'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'related_code'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'taxrates'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'cyp_factor'
      DataType = ftSingle
      Precision = 12
    end
    item
      Name = 'active'
      DataType = ftBoolean
    end
    item
      Name = 'reportable'
      DataType = ftBoolean
    end
    item
      Name = 'financial_reporting'
      DataType = ftBoolean
    end
    item
      Name = 'revenue_code'
      DataType = ftString
      Size = 6
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint83: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postcodes/'
    Response = RESTResponse83
    Left = 830
    Top = 830
  end
  object RESTResponse83: TRESTResponse
    Left = 996
    Top = 996
  end
object postcodesPostMemTable83: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftAutoInc
    end
    item
      Name = 'code_text'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'code_text_short'
      DataType = ftString
      Size = 24
    end
    item
      Name = 'code'
      DataType = ftString
      Size = 25
    end
    item
      Name = 'code_type'
      DataType = ftSmallint
    end
    item
      Name = 'modifier'
      DataType = ftString
      Size = 12
    end
    item
      Name = 'units'
      DataType = ftInteger
    end
    item
      Name = 'fee'
      DataType = ftBCD
      Precision = 12
      Size = 2
    end
    item
      Name = 'superbill'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'related_code'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'taxrates'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'cyp_factor'
      DataType = ftSingle
      Precision = 12
    end
    item
      Name = 'active'
      DataType = ftBoolean
    end
    item
      Name = 'reportable'
      DataType = ftBoolean
    end
    item
      Name = 'financial_reporting'
      DataType = ftBoolean
    end
    item
      Name = 'revenue_code'
      DataType = ftString
      Size = 6
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postcodesMemTable83: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint84: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletecodes/?id={id}'
    Response = RESTResponse84
    Left = 840
    Top = 840
  end
  object RESTResponse84: TRESTResponse
    Left = 1008
    Top = 1008
  end

  object BackendEndpoint85: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getconfig/?format={format}'
    Response = RESTResponse85
    Left = 850
    Top = 850
  end
  object RESTResponse85: TRESTResponse
    Left = 1020
    Top = 1020
  end
object getconfigMemTable85: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftInteger
    end
    item
      Name = 'name'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'value'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'parent'
      DataType = ftInteger
    end
    item
      Name = 'lft'
      DataType = ftInteger
    end
    item
      Name = 'rght'
      DataType = ftInteger
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint86: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postconfig/'
    Response = RESTResponse86
    Left = 860
    Top = 860
  end
  object RESTResponse86: TRESTResponse
    Left = 1032
    Top = 1032
  end
object postconfigPostMemTable86: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftInteger
    end
    item
      Name = 'name'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'value'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'parent'
      DataType = ftInteger
    end
    item
      Name = 'lft'
      DataType = ftInteger
    end
    item
      Name = 'rght'
      DataType = ftInteger
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postconfigMemTable86: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint87: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteconfig/?id={id}'
    Response = RESTResponse87
    Left = 870
    Top = 870
  end
  object RESTResponse87: TRESTResponse
    Left = 1044
    Top = 1044
  end

  object BackendEndpoint88: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getconfig_seq/?format={format}'
    Response = RESTResponse88
    Left = 880
    Top = 880
  end
  object RESTResponse88: TRESTResponse
    Left = 1056
    Top = 1056
  end
object getconfig_seqMemTable88: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftInteger
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint89: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postconfig_seq/'
    Response = RESTResponse89
    Left = 890
    Top = 890
  end
  object RESTResponse89: TRESTResponse
    Left = 1068
    Top = 1068
  end
object postconfig_seqPostMemTable89: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftInteger
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postconfig_seqMemTable89: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint90: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteconfig_seq/?id={id}'
    Response = RESTResponse90
    Left = 900
    Top = 900
  end
  object RESTResponse90: TRESTResponse
    Left = 1080
    Top = 1080
  end

  object BackendEndpoint91: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getcustomlists/?format={format}'
    Response = RESTResponse91
    Left = 910
    Top = 910
  end
  object RESTResponse91: TRESTResponse
    Left = 1092
    Top = 1092
  end
object getcustomlistsMemTable91: TFDMemTable
  FieldDefs = <
    item
      Name = 'cl_list_slno'
      DataType = ftAutoInc
    end
    item
      Name = 'cl_list_id'
      Attributes = [faRequired]
      DataType = ftLongWord
    end
    item
      Name = 'cl_list_item_id'
      DataType = ftLongWord
    end
    item
      Name = 'cl_list_type'
      Attributes = [faRequired]
      DataType = ftLongWord
    end
    item
      Name = 'cl_list_item_short'
      DataType = ftString
      Size = 10
    end
    item
      Name = 'cl_list_item_long'
      DataType = ftMemo
    end
    item
      Name = 'cl_list_item_level'
      DataType = ftInteger
    end
    item
      Name = 'cl_order'
      DataType = ftInteger
    end
    item
      Name = 'cl_deleted'
      DataType = ftBoolean
    end
    item
      Name = 'cl_creator'
      DataType = ftInteger
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint92: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postcustomlists/'
    Response = RESTResponse92
    Left = 920
    Top = 920
  end
  object RESTResponse92: TRESTResponse
    Left = 1104
    Top = 1104
  end
object postcustomlistsPostMemTable92: TFDMemTable
  FieldDefs = <
    item
      Name = 'cl_list_slno'
      DataType = ftAutoInc
    end
    item
      Name = 'cl_list_id'
      Attributes = [faRequired]
      DataType = ftLongWord
    end
    item
      Name = 'cl_list_item_id'
      DataType = ftLongWord
    end
    item
      Name = 'cl_list_type'
      Attributes = [faRequired]
      DataType = ftLongWord
    end
    item
      Name = 'cl_list_item_short'
      DataType = ftString
      Size = 10
    end
    item
      Name = 'cl_list_item_long'
      DataType = ftMemo
    end
    item
      Name = 'cl_list_item_level'
      DataType = ftInteger
    end
    item
      Name = 'cl_order'
      DataType = ftInteger
    end
    item
      Name = 'cl_deleted'
      DataType = ftBoolean
    end
    item
      Name = 'cl_creator'
      DataType = ftInteger
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postcustomlistsMemTable92: TFDMemTable
  FieldDefs = <
    item
      Name = 'cl_list_slno'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint93: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'cl_list_slno'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletecustomlists/?cl_list_slno={cl_list_slno}'
    Response = RESTResponse93
    Left = 930
    Top = 930
  end
  object RESTResponse93: TRESTResponse
    Left = 1116
    Top = 1116
  end

  object BackendEndpoint94: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getdated_reminders/?format={format}'
    Response = RESTResponse94
    Left = 940
    Top = 940
  end
  object RESTResponse94: TRESTResponse
    Left = 1128
    Top = 1128
  end
object getdated_remindersMemTable94: TFDMemTable
  FieldDefs = <
    item
      Name = 'dr_id'
      DataType = ftAutoInc
    end
    item
      Name = 'dr_from_ID'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'dr_message_text'
      Attributes = [faRequired]
      DataType = ftString
      Size = 160
    end
    item
      Name = 'dr_message_sent_date'
      Attributes = [faRequired]
      DataType = ftDateTime
    end
    item
      Name = 'dr_message_due_date'
      Attributes = [faRequired]
      DataType = ftDate
    end
    item
      Name = 'pid'
      Attributes = [faRequired]
      DataType = ftLargeint
    end
    item
      Name = 'message_priority'
      Attributes = [faRequired]
      DataType = ftBoolean
    end
    item
      Name = 'message_processed'
      DataType = ftBoolean
    end
    item
      Name = 'processed_date'
      DataType = ftTimeStamp
    end
    item
      Name = 'dr_processed_by'
      Attributes = [faRequired]
      DataType = ftInteger
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint95: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postdated_reminders/'
    Response = RESTResponse95
    Left = 950
    Top = 950
  end
  object RESTResponse95: TRESTResponse
    Left = 1140
    Top = 1140
  end
object postdated_remindersPostMemTable95: TFDMemTable
  FieldDefs = <
    item
      Name = 'dr_id'
      DataType = ftAutoInc
    end
    item
      Name = 'dr_from_ID'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'dr_message_text'
      Attributes = [faRequired]
      DataType = ftString
      Size = 160
    end
    item
      Name = 'dr_message_sent_date'
      Attributes = [faRequired]
      DataType = ftDateTime
    end
    item
      Name = 'dr_message_due_date'
      Attributes = [faRequired]
      DataType = ftDate
    end
    item
      Name = 'pid'
      Attributes = [faRequired]
      DataType = ftLargeint
    end
    item
      Name = 'message_priority'
      Attributes = [faRequired]
      DataType = ftBoolean
    end
    item
      Name = 'message_processed'
      DataType = ftBoolean
    end
    item
      Name = 'processed_date'
      DataType = ftTimeStamp
    end
    item
      Name = 'dr_processed_by'
      Attributes = [faRequired]
      DataType = ftInteger
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postdated_remindersMemTable95: TFDMemTable
  FieldDefs = <
    item
      Name = 'dr_id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint96: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'dr_id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletedated_reminders/?dr_id={dr_id}'
    Response = RESTResponse96
    Left = 960
    Top = 960
  end
  object RESTResponse96: TRESTResponse
    Left = 1152
    Top = 1152
  end

  object BackendEndpoint97: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getdated_reminders_link/?format={format}'
    Response = RESTResponse97
    Left = 970
    Top = 970
  end
  object RESTResponse97: TRESTResponse
    Left = 1164
    Top = 1164
  end
object getdated_reminders_linkMemTable97: TFDMemTable
  FieldDefs = <
    item
      Name = 'dr_link_id'
      DataType = ftAutoInc
    end
    item
      Name = 'dr_id'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'to_id'
      Attributes = [faRequired]
      DataType = ftInteger
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint98: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postdated_reminders_link/'
    Response = RESTResponse98
    Left = 980
    Top = 980
  end
  object RESTResponse98: TRESTResponse
    Left = 1176
    Top = 1176
  end
object postdated_reminders_linkPostMemTable98: TFDMemTable
  FieldDefs = <
    item
      Name = 'dr_link_id'
      DataType = ftAutoInc
    end
    item
      Name = 'dr_id'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'to_id'
      Attributes = [faRequired]
      DataType = ftInteger
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postdated_reminders_linkMemTable98: TFDMemTable
  FieldDefs = <
    item
      Name = 'dr_link_id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint99: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'dr_link_id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletedated_reminders_link/?dr_link_id={dr_link_id}'
    Response = RESTResponse99
    Left = 990
    Top = 990
  end
  object RESTResponse99: TRESTResponse
    Left = 1188
    Top = 1188
  end

  object BackendEndpoint100: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getdirect_message_log/?format={format}'
    Response = RESTResponse100
    Left = 1000
    Top = 1000
  end
  object RESTResponse100: TRESTResponse
    Left = 1200
    Top = 1200
  end
object getdirect_message_logMemTable100: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'msg_type'
      Attributes = [faRequired, faFixed]
      DataType = ftFixedChar
      Size = 1
    end
    item
      Name = 'msg_id'
      Attributes = [faRequired]
      DataType = ftString
      Size = 127
    end
    item
      Name = 'sender'
      Attributes = [faRequired]
      DataType = ftString
      Size = 255
    end
    item
      Name = 'recipient'
      Attributes = [faRequired]
      DataType = ftString
      Size = 255
    end
    item
      Name = 'create_ts'
      DataType = ftTimeStamp
    end
    item
      Name = 'status'
      Attributes = [faRequired, faFixed]
      DataType = ftFixedChar
      Size = 1
    end
    item
      Name = 'status_info'
      DataType = ftString
      Size = 511
    end
    item
      Name = 'status_ts'
      DataType = ftTimeStamp
    end
    item
      Name = 'patient_id'
      DataType = ftLargeint
    end
    item
      Name = 'user_id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint101: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postdirect_message_log/'
    Response = RESTResponse101
    Left = 1010
    Top = 1010
  end
  object RESTResponse101: TRESTResponse
    Left = 1212
    Top = 1212
  end
object postdirect_message_logPostMemTable101: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'msg_type'
      Attributes = [faRequired, faFixed]
      DataType = ftFixedChar
      Size = 1
    end
    item
      Name = 'msg_id'
      Attributes = [faRequired]
      DataType = ftString
      Size = 127
    end
    item
      Name = 'sender'
      Attributes = [faRequired]
      DataType = ftString
      Size = 255
    end
    item
      Name = 'recipient'
      Attributes = [faRequired]
      DataType = ftString
      Size = 255
    end
    item
      Name = 'create_ts'
      DataType = ftTimeStamp
    end
    item
      Name = 'status'
      Attributes = [faRequired, faFixed]
      DataType = ftFixedChar
      Size = 1
    end
    item
      Name = 'status_info'
      DataType = ftString
      Size = 511
    end
    item
      Name = 'status_ts'
      DataType = ftTimeStamp
    end
    item
      Name = 'patient_id'
      DataType = ftLargeint
    end
    item
      Name = 'user_id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postdirect_message_logMemTable101: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint102: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletedirect_message_log/?id={id}'
    Response = RESTResponse102
    Left = 1020
    Top = 1020
  end
  object RESTResponse102: TRESTResponse
    Left = 1224
    Top = 1224
  end

  object BackendEndpoint103: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getdocuments/?format={format}'
    Response = RESTResponse103
    Left = 1030
    Top = 1030
  end
  object RESTResponse103: TRESTResponse
    Left = 1236
    Top = 1236
  end
object getdocumentsMemTable103: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftInteger
    end
    item
      Name = 'type'
      Attributes = [faFixed]
      DataType = ftFixedChar
      Size = 8
    end
    item
      Name = 'size'
      DataType = ftInteger
    end
    item
      Name = 'date'
      DataType = ftDateTime
    end
    item
      Name = 'url'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'thumb_url'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'mimetype'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'pages'
      DataType = ftInteger
    end
    item
      Name = 'owner'
      DataType = ftInteger
    end
    item
      Name = 'revision'
      DataType = ftTimeStamp
    end
    item
      Name = 'foreign_id'
      DataType = ftLargeint
    end
    item
      Name = 'docdate'
      DataType = ftDate
    end
    item
      Name = 'hash'
      DataType = ftString
      Size = 40
    end
    item
      Name = 'list_id'
      DataType = ftLargeint
    end
    item
      Name = 'couch_docid'
      DataType = ftString
      Size = 100
    end
    item
      Name = 'couch_revid'
      DataType = ftString
      Size = 100
    end
    item
      Name = 'storagemethod'
      DataType = ftShortint
    end
    item
      Name = 'path_depth'
      DataType = ftShortint
    end
    item
      Name = 'imported'
      DataType = ftShortint
    end
    item
      Name = 'encounter_id'
      DataType = ftLargeint
    end
    item
      Name = 'encounter_check'
      DataType = ftBoolean
    end
    item
      Name = 'audit_master_approval_status'
      DataType = ftShortint
    end
    item
      Name = 'audit_master_id'
      DataType = ftInteger
    end
    item
      Name = 'documentationOf'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'encrypted'
      DataType = ftShortint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint104: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postdocuments/'
    Response = RESTResponse104
    Left = 1040
    Top = 1040
  end
  object RESTResponse104: TRESTResponse
    Left = 1248
    Top = 1248
  end
object postdocumentsPostMemTable104: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftInteger
    end
    item
      Name = 'type'
      Attributes = [faFixed]
      DataType = ftFixedChar
      Size = 8
    end
    item
      Name = 'size'
      DataType = ftInteger
    end
    item
      Name = 'date'
      DataType = ftDateTime
    end
    item
      Name = 'url'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'thumb_url'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'mimetype'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'pages'
      DataType = ftInteger
    end
    item
      Name = 'owner'
      DataType = ftInteger
    end
    item
      Name = 'revision'
      DataType = ftTimeStamp
    end
    item
      Name = 'foreign_id'
      DataType = ftLargeint
    end
    item
      Name = 'docdate'
      DataType = ftDate
    end
    item
      Name = 'hash'
      DataType = ftString
      Size = 40
    end
    item
      Name = 'list_id'
      DataType = ftLargeint
    end
    item
      Name = 'couch_docid'
      DataType = ftString
      Size = 100
    end
    item
      Name = 'couch_revid'
      DataType = ftString
      Size = 100
    end
    item
      Name = 'storagemethod'
      DataType = ftShortint
    end
    item
      Name = 'path_depth'
      DataType = ftShortint
    end
    item
      Name = 'imported'
      DataType = ftShortint
    end
    item
      Name = 'encounter_id'
      DataType = ftLargeint
    end
    item
      Name = 'encounter_check'
      DataType = ftBoolean
    end
    item
      Name = 'audit_master_approval_status'
      DataType = ftShortint
    end
    item
      Name = 'audit_master_id'
      DataType = ftInteger
    end
    item
      Name = 'documentationOf'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'encrypted'
      DataType = ftShortint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postdocumentsMemTable104: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint105: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletedocuments/?id={id}'
    Response = RESTResponse105
    Left = 1050
    Top = 1050
  end
  object RESTResponse105: TRESTResponse
    Left = 1260
    Top = 1260
  end

  object BackendEndpoint106: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getdocuments_legal_categories/?format={format}'
    Response = RESTResponse106
    Left = 1060
    Top = 1060
  end
  object RESTResponse106: TRESTResponse
    Left = 1272
    Top = 1272
  end
object getdocuments_legal_categoriesMemTable106: TFDMemTable
  FieldDefs = <
    item
      Name = 'dlc_id'
      DataType = ftAutoInc
    end
    item
      Name = 'dlc_category_type'
      Attributes = [faRequired]
      DataType = ftLongWord
    end
    item
      Name = 'dlc_category_name'
      Attributes = [faRequired]
      DataType = ftString
      Size = 45
    end
    item
      Name = 'dlc_category_parent'
      DataType = ftLongWord
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint107: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postdocuments_legal_categories/'
    Response = RESTResponse107
    Left = 1070
    Top = 1070
  end
  object RESTResponse107: TRESTResponse
    Left = 1284
    Top = 1284
  end
object postdocuments_legal_categoriesPostMemTable107: TFDMemTable
  FieldDefs = <
    item
      Name = 'dlc_id'
      DataType = ftAutoInc
    end
    item
      Name = 'dlc_category_type'
      Attributes = [faRequired]
      DataType = ftLongWord
    end
    item
      Name = 'dlc_category_name'
      Attributes = [faRequired]
      DataType = ftString
      Size = 45
    end
    item
      Name = 'dlc_category_parent'
      DataType = ftLongWord
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postdocuments_legal_categoriesMemTable107: TFDMemTable
  FieldDefs = <
    item
      Name = 'dlc_id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint108: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'dlc_id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletedocuments_legal_categories/?dlc_id={dlc_id}'
    Response = RESTResponse108
    Left = 1080
    Top = 1080
  end
  object RESTResponse108: TRESTResponse
    Left = 1296
    Top = 1296
  end

  object BackendEndpoint109: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getdocuments_legal_detail/?format={format}'
    Response = RESTResponse109
    Left = 1090
    Top = 1090
  end
  object RESTResponse109: TRESTResponse
    Left = 1308
    Top = 1308
  end
object getdocuments_legal_detailMemTable109: TFDMemTable
  FieldDefs = <
    item
      Name = 'dld_id'
      DataType = ftAutoInc
    end
    item
      Name = 'dld_pid'
      DataType = ftLongWord
    end
    item
      Name = 'dld_facility'
      DataType = ftLongWord
    end
    item
      Name = 'dld_provider'
      DataType = ftLongWord
    end
    item
      Name = 'dld_encounter'
      DataType = ftLongWord
    end
    item
      Name = 'dld_master_docid'
      Attributes = [faRequired]
      DataType = ftLongWord
    end
    item
      Name = 'dld_signed'
      Attributes = [faRequired]
      DataType = ftWord
    end
    item
      Name = 'dld_signed_time'
      DataType = ftTimeStamp
    end
    item
      Name = 'dld_filepath'
      DataType = ftString
      Size = 75
    end
    item
      Name = 'dld_filename'
      Attributes = [faRequired]
      DataType = ftString
      Size = 45
    end
    item
      Name = 'dld_signing_person'
      Attributes = [faRequired]
      DataType = ftString
      Size = 50
    end
    item
      Name = 'dld_sign_level'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'dld_content'
      Attributes = [faRequired]
      DataType = ftString
      Size = 50
    end
    item
      Name = 'dld_file_for_pdf_generation'
      Attributes = [faRequired]
      DataType = ftBlob
    end
    item
      Name = 'dld_denial_reason'
      DataType = ftMemo
    end
    item
      Name = 'dld_moved'
      DataType = ftShortint
    end
    item
      Name = 'dld_patient_comments'
      DataType = ftMemo
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint110: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postdocuments_legal_detail/'
    Response = RESTResponse110
    Left = 1100
    Top = 1100
  end
  object RESTResponse110: TRESTResponse
    Left = 1320
    Top = 1320
  end
object postdocuments_legal_detailPostMemTable110: TFDMemTable
  FieldDefs = <
    item
      Name = 'dld_id'
      DataType = ftAutoInc
    end
    item
      Name = 'dld_pid'
      DataType = ftLongWord
    end
    item
      Name = 'dld_facility'
      DataType = ftLongWord
    end
    item
      Name = 'dld_provider'
      DataType = ftLongWord
    end
    item
      Name = 'dld_encounter'
      DataType = ftLongWord
    end
    item
      Name = 'dld_master_docid'
      Attributes = [faRequired]
      DataType = ftLongWord
    end
    item
      Name = 'dld_signed'
      Attributes = [faRequired]
      DataType = ftWord
    end
    item
      Name = 'dld_signed_time'
      DataType = ftTimeStamp
    end
    item
      Name = 'dld_filepath'
      DataType = ftString
      Size = 75
    end
    item
      Name = 'dld_filename'
      Attributes = [faRequired]
      DataType = ftString
      Size = 45
    end
    item
      Name = 'dld_signing_person'
      Attributes = [faRequired]
      DataType = ftString
      Size = 50
    end
    item
      Name = 'dld_sign_level'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'dld_content'
      Attributes = [faRequired]
      DataType = ftString
      Size = 50
    end
    item
      Name = 'dld_file_for_pdf_generation'
      Attributes = [faRequired]
      DataType = ftBlob
    end
    item
      Name = 'dld_denial_reason'
      DataType = ftMemo
    end
    item
      Name = 'dld_moved'
      DataType = ftShortint
    end
    item
      Name = 'dld_patient_comments'
      DataType = ftMemo
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postdocuments_legal_detailMemTable110: TFDMemTable
  FieldDefs = <
    item
      Name = 'dld_id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint111: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'dld_id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletedocuments_legal_detail/?dld_id={dld_id}'
    Response = RESTResponse111
    Left = 1110
    Top = 1110
  end
  object RESTResponse111: TRESTResponse
    Left = 1332
    Top = 1332
  end

  object BackendEndpoint112: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getdocuments_legal_master/?format={format}'
    Response = RESTResponse112
    Left = 1120
    Top = 1120
  end
  object RESTResponse112: TRESTResponse
    Left = 1344
    Top = 1344
  end
object getdocuments_legal_masterMemTable112: TFDMemTable
  FieldDefs = <
    item
      Name = 'dlm_category'
      DataType = ftLongWord
    end
    item
      Name = 'dlm_subcategory'
      DataType = ftLongWord
    end
    item
      Name = 'dlm_document_id'
      DataType = ftAutoInc
    end
    item
      Name = 'dlm_document_name'
      Attributes = [faRequired]
      DataType = ftString
      Size = 75
    end
    item
      Name = 'dlm_filepath'
      Attributes = [faRequired]
      DataType = ftString
      Size = 75
    end
    item
      Name = 'dlm_facility'
      DataType = ftLongWord
    end
    item
      Name = 'dlm_provider'
      DataType = ftLongWord
    end
    item
      Name = 'dlm_sign_height'
      Attributes = [faRequired]
      DataType = ftFloat
      Precision = 22
    end
    item
      Name = 'dlm_sign_width'
      Attributes = [faRequired]
      DataType = ftFloat
      Precision = 22
    end
    item
      Name = 'dlm_filename'
      Attributes = [faRequired]
      DataType = ftString
      Size = 45
    end
    item
      Name = 'dlm_effective_date'
      Attributes = [faRequired]
      DataType = ftDateTime
    end
    item
      Name = 'dlm_version'
      Attributes = [faRequired]
      DataType = ftLongWord
    end
    item
      Name = 'content'
      Attributes = [faRequired]
      DataType = ftString
      Size = 255
    end
    item
      Name = 'dlm_savedsign'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'dlm_review'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'dlm_upload_type'
      DataType = ftShortint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint113: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postdocuments_legal_master/'
    Response = RESTResponse113
    Left = 1130
    Top = 1130
  end
  object RESTResponse113: TRESTResponse
    Left = 1356
    Top = 1356
  end
object postdocuments_legal_masterPostMemTable113: TFDMemTable
  FieldDefs = <
    item
      Name = 'dlm_category'
      DataType = ftLongWord
    end
    item
      Name = 'dlm_subcategory'
      DataType = ftLongWord
    end
    item
      Name = 'dlm_document_id'
      DataType = ftAutoInc
    end
    item
      Name = 'dlm_document_name'
      Attributes = [faRequired]
      DataType = ftString
      Size = 75
    end
    item
      Name = 'dlm_filepath'
      Attributes = [faRequired]
      DataType = ftString
      Size = 75
    end
    item
      Name = 'dlm_facility'
      DataType = ftLongWord
    end
    item
      Name = 'dlm_provider'
      DataType = ftLongWord
    end
    item
      Name = 'dlm_sign_height'
      Attributes = [faRequired]
      DataType = ftFloat
      Precision = 22
    end
    item
      Name = 'dlm_sign_width'
      Attributes = [faRequired]
      DataType = ftFloat
      Precision = 22
    end
    item
      Name = 'dlm_filename'
      Attributes = [faRequired]
      DataType = ftString
      Size = 45
    end
    item
      Name = 'dlm_effective_date'
      Attributes = [faRequired]
      DataType = ftDateTime
    end
    item
      Name = 'dlm_version'
      Attributes = [faRequired]
      DataType = ftLongWord
    end
    item
      Name = 'content'
      Attributes = [faRequired]
      DataType = ftString
      Size = 255
    end
    item
      Name = 'dlm_savedsign'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'dlm_review'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'dlm_upload_type'
      DataType = ftShortint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postdocuments_legal_masterMemTable113: TFDMemTable
  FieldDefs = <
    item
      Name = 'dlm_document_id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint114: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'dlm_document_id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletedocuments_legal_master/?dlm_document_id={dlm_document_id}'
    Response = RESTResponse114
    Left = 1140
    Top = 1140
  end
  object RESTResponse114: TRESTResponse
    Left = 1368
    Top = 1368
  end

  object BackendEndpoint115: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getdrug_inventory/?format={format}'
    Response = RESTResponse115
    Left = 1150
    Top = 1150
  end
  object RESTResponse115: TRESTResponse
    Left = 1380
    Top = 1380
  end
object getdrug_inventoryMemTable115: TFDMemTable
  FieldDefs = <
    item
      Name = 'inventory_id'
      DataType = ftAutoInc
    end
    item
      Name = 'drug_id'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'lot_number'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'expiration'
      DataType = ftDate
    end
    item
      Name = 'manufacturer'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'on_hand'
      DataType = ftInteger
    end
    item
      Name = 'warehouse_id'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'vendor_id'
      DataType = ftLargeint
    end
    item
      Name = 'last_notify'
      DataType = ftDate
    end
    item
      Name = 'destroy_date'
      DataType = ftDate
    end
    item
      Name = 'destroy_method'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'destroy_witness'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'destroy_notes'
      DataType = ftString
      Size = 255
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint116: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postdrug_inventory/'
    Response = RESTResponse116
    Left = 1160
    Top = 1160
  end
  object RESTResponse116: TRESTResponse
    Left = 1392
    Top = 1392
  end
object postdrug_inventoryPostMemTable116: TFDMemTable
  FieldDefs = <
    item
      Name = 'inventory_id'
      DataType = ftAutoInc
    end
    item
      Name = 'drug_id'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'lot_number'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'expiration'
      DataType = ftDate
    end
    item
      Name = 'manufacturer'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'on_hand'
      DataType = ftInteger
    end
    item
      Name = 'warehouse_id'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'vendor_id'
      DataType = ftLargeint
    end
    item
      Name = 'last_notify'
      DataType = ftDate
    end
    item
      Name = 'destroy_date'
      DataType = ftDate
    end
    item
      Name = 'destroy_method'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'destroy_witness'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'destroy_notes'
      DataType = ftString
      Size = 255
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postdrug_inventoryMemTable116: TFDMemTable
  FieldDefs = <
    item
      Name = 'inventory_id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint117: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'inventory_id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletedrug_inventory/?inventory_id={inventory_id}'
    Response = RESTResponse117
    Left = 1170
    Top = 1170
  end
  object RESTResponse117: TRESTResponse
    Left = 1404
    Top = 1404
  end

  object BackendEndpoint118: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getdrug_sales/?format={format}'
    Response = RESTResponse118
    Left = 1180
    Top = 1180
  end
  object RESTResponse118: TRESTResponse
    Left = 1416
    Top = 1416
  end
object getdrug_salesMemTable118: TFDMemTable
  FieldDefs = <
    item
      Name = 'sale_id'
      DataType = ftAutoInc
    end
    item
      Name = 'drug_id'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'inventory_id'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'prescription_id'
      DataType = ftInteger
    end
    item
      Name = 'pid'
      DataType = ftLargeint
    end
    item
      Name = 'encounter'
      DataType = ftInteger
    end
    item
      Name = 'user'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'sale_date'
      Attributes = [faRequired]
      DataType = ftDate
    end
    item
      Name = 'quantity'
      DataType = ftInteger
    end
    item
      Name = 'fee'
      DataType = ftBCD
      Precision = 12
      Size = 2
    end
    item
      Name = 'billed'
      DataType = ftBoolean
    end
    item
      Name = 'xfer_inventory_id'
      DataType = ftInteger
    end
    item
      Name = 'distributor_id'
      DataType = ftLargeint
    end
    item
      Name = 'notes'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'bill_date'
      DataType = ftDateTime
    end
    item
      Name = 'pricelevel'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'selector'
      DataType = ftString
      Size = 255
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint119: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postdrug_sales/'
    Response = RESTResponse119
    Left = 1190
    Top = 1190
  end
  object RESTResponse119: TRESTResponse
    Left = 1428
    Top = 1428
  end
object postdrug_salesPostMemTable119: TFDMemTable
  FieldDefs = <
    item
      Name = 'sale_id'
      DataType = ftAutoInc
    end
    item
      Name = 'drug_id'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'inventory_id'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'prescription_id'
      DataType = ftInteger
    end
    item
      Name = 'pid'
      DataType = ftLargeint
    end
    item
      Name = 'encounter'
      DataType = ftInteger
    end
    item
      Name = 'user'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'sale_date'
      Attributes = [faRequired]
      DataType = ftDate
    end
    item
      Name = 'quantity'
      DataType = ftInteger
    end
    item
      Name = 'fee'
      DataType = ftBCD
      Precision = 12
      Size = 2
    end
    item
      Name = 'billed'
      DataType = ftBoolean
    end
    item
      Name = 'xfer_inventory_id'
      DataType = ftInteger
    end
    item
      Name = 'distributor_id'
      DataType = ftLargeint
    end
    item
      Name = 'notes'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'bill_date'
      DataType = ftDateTime
    end
    item
      Name = 'pricelevel'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'selector'
      DataType = ftString
      Size = 255
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postdrug_salesMemTable119: TFDMemTable
  FieldDefs = <
    item
      Name = 'sale_id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint120: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'sale_id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletedrug_sales/?sale_id={sale_id}'
    Response = RESTResponse120
    Left = 1200
    Top = 1200
  end
  object RESTResponse120: TRESTResponse
    Left = 1440
    Top = 1440
  end

  object BackendEndpoint121: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getdrug_templates/?format={format}'
    Response = RESTResponse121
    Left = 1210
    Top = 1210
  end
  object RESTResponse121: TRESTResponse
    Left = 1452
    Top = 1452
  end
object getdrug_templatesMemTable121: TFDMemTable
  FieldDefs = <
    item
      Name = 'drug_id'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'selector'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'dosage'
      DataType = ftString
      Size = 10
    end
    item
      Name = 'period'
      DataType = ftInteger
    end
    item
      Name = 'quantity'
      DataType = ftInteger
    end
    item
      Name = 'refills'
      DataType = ftInteger
    end
    item
      Name = 'taxrates'
      DataType = ftString
      Size = 255
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint122: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postdrug_templates/'
    Response = RESTResponse122
    Left = 1220
    Top = 1220
  end
  object RESTResponse122: TRESTResponse
    Left = 1464
    Top = 1464
  end
object postdrug_templatesPostMemTable122: TFDMemTable
  FieldDefs = <
    item
      Name = 'drug_id'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'selector'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'dosage'
      DataType = ftString
      Size = 10
    end
    item
      Name = 'period'
      DataType = ftInteger
    end
    item
      Name = 'quantity'
      DataType = ftInteger
    end
    item
      Name = 'refills'
      DataType = ftInteger
    end
    item
      Name = 'taxrates'
      DataType = ftString
      Size = 255
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postdrug_templatesMemTable122: TFDMemTable
  FieldDefs = <
    item
      Name = 'drug_id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint123: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'drug_id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletedrug_templates/?drug_id={drug_id}'
    Response = RESTResponse123
    Left = 1230
    Top = 1230
  end
  object RESTResponse123: TRESTResponse
    Left = 1476
    Top = 1476
  end

  object BackendEndpoint124: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getdrugs/?format={format}'
    Response = RESTResponse124
    Left = 1240
    Top = 1240
  end
  object RESTResponse124: TRESTResponse
    Left = 1488
    Top = 1488
  end
object getdrugsMemTable124: TFDMemTable
  FieldDefs = <
    item
      Name = 'drug_id'
      DataType = ftAutoInc
    end
    item
      Name = 'name'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'ndc_number'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'on_order'
      DataType = ftInteger
    end
    item
      Name = 'reorder_point'
      DataType = ftSingle
      Precision = 12
    end
    item
      Name = 'max_level'
      DataType = ftSingle
      Precision = 12
    end
    item
      Name = 'last_notify'
      DataType = ftDate
    end
    item
      Name = 'reactions'
      DataType = ftMemo
    end
    item
      Name = 'form'
      DataType = ftInteger
    end
    item
      Name = 'size'
      DataType = ftString
      Size = 25
    end
    item
      Name = 'unit'
      DataType = ftInteger
    end
    item
      Name = 'route'
      DataType = ftInteger
    end
    item
      Name = 'substitute'
      DataType = ftInteger
    end
    item
      Name = 'related_code'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'cyp_factor'
      DataType = ftSingle
      Precision = 12
    end
    item
      Name = 'active'
      DataType = ftBoolean
    end
    item
      Name = 'allow_combining'
      DataType = ftBoolean
    end
    item
      Name = 'allow_multiple'
      DataType = ftBoolean
    end
    item
      Name = 'drug_code'
      DataType = ftString
      Size = 25
    end
    item
      Name = 'consumable'
      DataType = ftBoolean
    end
    item
      Name = 'dispensable'
      DataType = ftBoolean
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint125: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postdrugs/'
    Response = RESTResponse125
    Left = 1250
    Top = 1250
  end
  object RESTResponse125: TRESTResponse
    Left = 1500
    Top = 1500
  end
object postdrugsPostMemTable125: TFDMemTable
  FieldDefs = <
    item
      Name = 'drug_id'
      DataType = ftAutoInc
    end
    item
      Name = 'name'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'ndc_number'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'on_order'
      DataType = ftInteger
    end
    item
      Name = 'reorder_point'
      DataType = ftSingle
      Precision = 12
    end
    item
      Name = 'max_level'
      DataType = ftSingle
      Precision = 12
    end
    item
      Name = 'last_notify'
      DataType = ftDate
    end
    item
      Name = 'reactions'
      DataType = ftMemo
    end
    item
      Name = 'form'
      DataType = ftInteger
    end
    item
      Name = 'size'
      DataType = ftString
      Size = 25
    end
    item
      Name = 'unit'
      DataType = ftInteger
    end
    item
      Name = 'route'
      DataType = ftInteger
    end
    item
      Name = 'substitute'
      DataType = ftInteger
    end
    item
      Name = 'related_code'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'cyp_factor'
      DataType = ftSingle
      Precision = 12
    end
    item
      Name = 'active'
      DataType = ftBoolean
    end
    item
      Name = 'allow_combining'
      DataType = ftBoolean
    end
    item
      Name = 'allow_multiple'
      DataType = ftBoolean
    end
    item
      Name = 'drug_code'
      DataType = ftString
      Size = 25
    end
    item
      Name = 'consumable'
      DataType = ftBoolean
    end
    item
      Name = 'dispensable'
      DataType = ftBoolean
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postdrugsMemTable125: TFDMemTable
  FieldDefs = <
    item
      Name = 'drug_id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint126: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'drug_id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletedrugs/?drug_id={drug_id}'
    Response = RESTResponse126
    Left = 1260
    Top = 1260
  end
  object RESTResponse126: TRESTResponse
    Left = 1512
    Top = 1512
  end

  object BackendEndpoint127: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/geteligibility_response/?format={format}'
    Response = RESTResponse127
    Left = 1270
    Top = 1270
  end
  object RESTResponse127: TRESTResponse
    Left = 1524
    Top = 1524
  end
object geteligibility_responseMemTable127: TFDMemTable
  FieldDefs = <
    item
      Name = 'response_id'
      DataType = ftLargeint
    end
    item
      Name = 'response_description'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'response_status'
      Attributes = [faFixed]
      DataType = ftFixedChar
      Size = 1
    end
    item
      Name = 'response_vendor_id'
      DataType = ftLargeint
    end
    item
      Name = 'response_create_date'
      DataType = ftDate
    end
    item
      Name = 'response_modify_date'
      DataType = ftDate
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint128: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/posteligibility_response/'
    Response = RESTResponse128
    Left = 1280
    Top = 1280
  end
  object RESTResponse128: TRESTResponse
    Left = 1536
    Top = 1536
  end
object posteligibility_responsePostMemTable128: TFDMemTable
  FieldDefs = <
    item
      Name = 'response_id'
      DataType = ftLargeint
    end
    item
      Name = 'response_description'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'response_status'
      Attributes = [faFixed]
      DataType = ftFixedChar
      Size = 1
    end
    item
      Name = 'response_vendor_id'
      DataType = ftLargeint
    end
    item
      Name = 'response_create_date'
      DataType = ftDate
    end
    item
      Name = 'response_modify_date'
      DataType = ftDate
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object posteligibility_responseMemTable128: TFDMemTable
  FieldDefs = <
    item
      Name = 'response_id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint129: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'response_id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteeligibility_response/?response_id={response_id}'
    Response = RESTResponse129
    Left = 1290
    Top = 1290
  end
  object RESTResponse129: TRESTResponse
    Left = 1548
    Top = 1548
  end

  object BackendEndpoint130: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/geteligibility_verification/?format={format}'
    Response = RESTResponse130
    Left = 1300
    Top = 1300
  end
  object RESTResponse130: TRESTResponse
    Left = 1560
    Top = 1560
  end
object geteligibility_verificationMemTable130: TFDMemTable
  FieldDefs = <
    item
      Name = 'verification_id'
      DataType = ftLargeint
    end
    item
      Name = 'response_id'
      DataType = ftLargeint
    end
    item
      Name = 'insurance_id'
      DataType = ftLargeint
    end
    item
      Name = 'eligibility_check_date'
      DataType = ftDateTime
    end
    item
      Name = 'copay'
      DataType = ftInteger
    end
    item
      Name = 'deductible'
      DataType = ftInteger
    end
    item
      Name = 'deductiblemet'
      Attributes = [faFixed]
      DataType = ftFixedChar
      Size = 1
    end
    item
      Name = 'create_date'
      DataType = ftDate
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint131: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/posteligibility_verification/'
    Response = RESTResponse131
    Left = 1310
    Top = 1310
  end
  object RESTResponse131: TRESTResponse
    Left = 1572
    Top = 1572
  end
object posteligibility_verificationPostMemTable131: TFDMemTable
  FieldDefs = <
    item
      Name = 'verification_id'
      DataType = ftLargeint
    end
    item
      Name = 'response_id'
      DataType = ftLargeint
    end
    item
      Name = 'insurance_id'
      DataType = ftLargeint
    end
    item
      Name = 'eligibility_check_date'
      DataType = ftDateTime
    end
    item
      Name = 'copay'
      DataType = ftInteger
    end
    item
      Name = 'deductible'
      DataType = ftInteger
    end
    item
      Name = 'deductiblemet'
      Attributes = [faFixed]
      DataType = ftFixedChar
      Size = 1
    end
    item
      Name = 'create_date'
      DataType = ftDate
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object posteligibility_verificationMemTable131: TFDMemTable
  FieldDefs = <
    item
      Name = 'verification_id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint132: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'verification_id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteeligibility_verification/?verification_id={verification_id}'
    Response = RESTResponse132
    Left = 1320
    Top = 1320
  end
  object RESTResponse132: TRESTResponse
    Left = 1584
    Top = 1584
  end

  object BackendEndpoint133: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getemployer_data/?format={format}'
    Response = RESTResponse133
    Left = 1330
    Top = 1330
  end
  object RESTResponse133: TRESTResponse
    Left = 1596
    Top = 1596
  end
object getemployer_dataMemTable133: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'name'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'street'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'postal_code'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'city'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'state'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'country'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'date'
      DataType = ftDateTime
    end
    item
      Name = 'pid'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint134: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postemployer_data/'
    Response = RESTResponse134
    Left = 1340
    Top = 1340
  end
  object RESTResponse134: TRESTResponse
    Left = 1608
    Top = 1608
  end
object postemployer_dataPostMemTable134: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'name'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'street'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'postal_code'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'city'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'state'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'country'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'date'
      DataType = ftDateTime
    end
    item
      Name = 'pid'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postemployer_dataMemTable134: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint135: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteemployer_data/?id={id}'
    Response = RESTResponse135
    Left = 1350
    Top = 1350
  end
  object RESTResponse135: TRESTResponse
    Left = 1620
    Top = 1620
  end

  object BackendEndpoint136: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getenc_category_map/?format={format}'
    Response = RESTResponse136
    Left = 1360
    Top = 1360
  end
  object RESTResponse136: TRESTResponse
    Left = 1632
    Top = 1632
  end
object getenc_category_mapMemTable136: TFDMemTable
  FieldDefs = <
    item
      Name = 'rule_enc_id'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'main_cat_id'
      DataType = ftInteger
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint137: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/geterx_drug_paid/?format={format}'
    Response = RESTResponse137
    Left = 1370
    Top = 1370
  end
  object RESTResponse137: TRESTResponse
    Left = 1644
    Top = 1644
  end
object geterx_drug_paidMemTable137: TFDMemTable
  FieldDefs = <
    item
      Name = 'drugid'
      DataType = ftAutoInc
    end
    item
      Name = 'drug_label_name'
      Attributes = [faRequired]
      DataType = ftString
      Size = 45
    end
    item
      Name = 'ahfs_descr'
      Attributes = [faRequired]
      DataType = ftString
      Size = 45
    end
    item
      Name = 'ndc'
      Attributes = [faRequired]
      DataType = ftLargeint
    end
    item
      Name = 'price_per_unit'
      Attributes = [faRequired]
      DataType = ftBCD
      Precision = 5
      Size = 2
    end
    item
      Name = 'avg_price'
      Attributes = [faRequired]
      DataType = ftBCD
      Precision = 6
      Size = 2
    end
    item
      Name = 'avg_price_paid'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'avg_savings'
      Attributes = [faRequired]
      DataType = ftBCD
      Precision = 6
      Size = 2
    end
    item
      Name = 'avg_percent'
      Attributes = [faRequired]
      DataType = ftBCD
      Precision = 6
      Size = 2
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint138: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/posterx_drug_paid/'
    Response = RESTResponse138
    Left = 1380
    Top = 1380
  end
  object RESTResponse138: TRESTResponse
    Left = 1656
    Top = 1656
  end
object posterx_drug_paidPostMemTable138: TFDMemTable
  FieldDefs = <
    item
      Name = 'drugid'
      DataType = ftAutoInc
    end
    item
      Name = 'drug_label_name'
      Attributes = [faRequired]
      DataType = ftString
      Size = 45
    end
    item
      Name = 'ahfs_descr'
      Attributes = [faRequired]
      DataType = ftString
      Size = 45
    end
    item
      Name = 'ndc'
      Attributes = [faRequired]
      DataType = ftLargeint
    end
    item
      Name = 'price_per_unit'
      Attributes = [faRequired]
      DataType = ftBCD
      Precision = 5
      Size = 2
    end
    item
      Name = 'avg_price'
      Attributes = [faRequired]
      DataType = ftBCD
      Precision = 6
      Size = 2
    end
    item
      Name = 'avg_price_paid'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'avg_savings'
      Attributes = [faRequired]
      DataType = ftBCD
      Precision = 6
      Size = 2
    end
    item
      Name = 'avg_percent'
      Attributes = [faRequired]
      DataType = ftBCD
      Precision = 6
      Size = 2
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object posterx_drug_paidMemTable138: TFDMemTable
  FieldDefs = <
    item
      Name = 'drugid'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint139: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'drugid'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteerx_drug_paid/?drugid={drugid}'
    Response = RESTResponse139
    Left = 1390
    Top = 1390
  end
  object RESTResponse139: TRESTResponse
    Left = 1668
    Top = 1668
  end

  object BackendEndpoint140: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/geterx_narcotics/?format={format}'
    Response = RESTResponse140
    Left = 1400
    Top = 1400
  end
  object RESTResponse140: TRESTResponse
    Left = 1680
    Top = 1680
  end
object geterx_narcoticsMemTable140: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftAutoInc
    end
    item
      Name = 'drug'
      Attributes = [faRequired]
      DataType = ftString
      Size = 255
    end
    item
      Name = 'dea_number'
      Attributes = [faRequired]
      DataType = ftString
      Size = 5
    end
    item
      Name = 'csa_sch'
      Attributes = [faRequired]
      DataType = ftString
      Size = 2
    end
    item
      Name = 'narc'
      Attributes = [faRequired]
      DataType = ftString
      Size = 2
    end
    item
      Name = 'other_names'
      Attributes = [faRequired]
      DataType = ftString
      Size = 255
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint141: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/posterx_narcotics/'
    Response = RESTResponse141
    Left = 1410
    Top = 1410
  end
  object RESTResponse141: TRESTResponse
    Left = 1692
    Top = 1692
  end
object posterx_narcoticsPostMemTable141: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftAutoInc
    end
    item
      Name = 'drug'
      Attributes = [faRequired]
      DataType = ftString
      Size = 255
    end
    item
      Name = 'dea_number'
      Attributes = [faRequired]
      DataType = ftString
      Size = 5
    end
    item
      Name = 'csa_sch'
      Attributes = [faRequired]
      DataType = ftString
      Size = 2
    end
    item
      Name = 'narc'
      Attributes = [faRequired]
      DataType = ftString
      Size = 2
    end
    item
      Name = 'other_names'
      Attributes = [faRequired]
      DataType = ftString
      Size = 255
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object posterx_narcoticsMemTable141: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint142: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteerx_narcotics/?id={id}'
    Response = RESTResponse142
    Left = 1420
    Top = 1420
  end
  object RESTResponse142: TRESTResponse
    Left = 1704
    Top = 1704
  end

  object BackendEndpoint143: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/geterx_rx_log/?format={format}'
    Response = RESTResponse143
    Left = 1430
    Top = 1430
  end
  object RESTResponse143: TRESTResponse
    Left = 1716
    Top = 1716
  end
object geterx_rx_logMemTable143: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftAutoInc
    end
    item
      Name = 'prescription_id'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'date'
      Attributes = [faRequired]
      DataType = ftString
      Size = 25
    end
    item
      Name = 'time'
      Attributes = [faRequired]
      DataType = ftString
      Size = 15
    end
    item
      Name = 'code'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'status'
      DataType = ftMemo
    end
    item
      Name = 'message_id'
      DataType = ftString
      Size = 100
    end
    item
      Name = 'read'
      DataType = ftInteger
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint144: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/posterx_rx_log/'
    Response = RESTResponse144
    Left = 1440
    Top = 1440
  end
  object RESTResponse144: TRESTResponse
    Left = 1728
    Top = 1728
  end
object posterx_rx_logPostMemTable144: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftAutoInc
    end
    item
      Name = 'prescription_id'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'date'
      Attributes = [faRequired]
      DataType = ftString
      Size = 25
    end
    item
      Name = 'time'
      Attributes = [faRequired]
      DataType = ftString
      Size = 15
    end
    item
      Name = 'code'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'status'
      DataType = ftMemo
    end
    item
      Name = 'message_id'
      DataType = ftString
      Size = 100
    end
    item
      Name = 'read'
      DataType = ftInteger
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object posterx_rx_logMemTable144: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint145: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteerx_rx_log/?id={id}'
    Response = RESTResponse145
    Left = 1450
    Top = 1450
  end
  object RESTResponse145: TRESTResponse
    Left = 1740
    Top = 1740
  end

  object BackendEndpoint146: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/geterx_ttl_touch/?format={format}'
    Response = RESTResponse146
    Left = 1460
    Top = 1460
  end
  object RESTResponse146: TRESTResponse
    Left = 1752
    Top = 1752
  end
object geterx_ttl_touchMemTable146: TFDMemTable
  FieldDefs = <
    item
      Name = 'patient_id'
      Attributes = [faRequired]
      DataType = ftLargeint
    end
    item
      Name = 'process'
      Attributes = [faRequired, faFixed]
      DataType = ftFixedChar
      Size = 11
    end
    item
      Name = 'updated'
      Attributes = [faRequired]
      DataType = ftDateTime
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint147: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/posterx_ttl_touch/'
    Response = RESTResponse147
    Left = 1470
    Top = 1470
  end
  object RESTResponse147: TRESTResponse
    Left = 1764
    Top = 1764
  end
object posterx_ttl_touchPostMemTable147: TFDMemTable
  FieldDefs = <
    item
      Name = 'patient_id'
      Attributes = [faRequired]
      DataType = ftLargeint
    end
    item
      Name = 'process'
      Attributes = [faRequired, faFixed]
      DataType = ftFixedChar
      Size = 11
    end
    item
      Name = 'updated'
      Attributes = [faRequired]
      DataType = ftDateTime
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object posterx_ttl_touchMemTable147: TFDMemTable
  FieldDefs = <
    item
      Name = 'patient_id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint148: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'patient_id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteerx_ttl_touch/?patient_id={patient_id}'
    Response = RESTResponse148
    Left = 1480
    Top = 1480
  end
  object RESTResponse148: TRESTResponse
    Left = 1776
    Top = 1776
  end

  object BackendEndpoint149: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getesign_signatures/?format={format}'
    Response = RESTResponse149
    Left = 1490
    Top = 1490
  end
  object RESTResponse149: TRESTResponse
    Left = 1788
    Top = 1788
  end
object getesign_signaturesMemTable149: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftAutoInc
    end
    item
      Name = 'tid'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'table'
      Attributes = [faRequired]
      DataType = ftString
      Size = 255
    end
    item
      Name = 'uid'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'datetime'
      Attributes = [faRequired]
      DataType = ftDateTime
    end
    item
      Name = 'is_lock'
      DataType = ftBoolean
    end
    item
      Name = 'amendment'
      DataType = ftMemo
    end
    item
      Name = 'hash'
      Attributes = [faRequired]
      DataType = ftString
      Size = 255
    end
    item
      Name = 'signature_hash'
      Attributes = [faRequired]
      DataType = ftString
      Size = 255
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint150: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postesign_signatures/'
    Response = RESTResponse150
    Left = 1500
    Top = 1500
  end
  object RESTResponse150: TRESTResponse
    Left = 1800
    Top = 1800
  end
object postesign_signaturesPostMemTable150: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftAutoInc
    end
    item
      Name = 'tid'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'table'
      Attributes = [faRequired]
      DataType = ftString
      Size = 255
    end
    item
      Name = 'uid'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'datetime'
      Attributes = [faRequired]
      DataType = ftDateTime
    end
    item
      Name = 'is_lock'
      DataType = ftBoolean
    end
    item
      Name = 'amendment'
      DataType = ftMemo
    end
    item
      Name = 'hash'
      Attributes = [faRequired]
      DataType = ftString
      Size = 255
    end
    item
      Name = 'signature_hash'
      Attributes = [faRequired]
      DataType = ftString
      Size = 255
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postesign_signaturesMemTable150: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint151: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteesign_signatures/?id={id}'
    Response = RESTResponse151
    Left = 1510
    Top = 1510
  end
  object RESTResponse151: TRESTResponse
    Left = 1812
    Top = 1812
  end

  object BackendEndpoint152: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getextended_log/?format={format}'
    Response = RESTResponse152
    Left = 1520
    Top = 1520
  end
  object RESTResponse152: TRESTResponse
    Left = 1824
    Top = 1824
  end
object getextended_logMemTable152: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'date'
      DataType = ftDateTime
    end
    item
      Name = 'event'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'user'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'recipient'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'description'
      DataType = ftMemo
    end
    item
      Name = 'patient_id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint153: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postextended_log/'
    Response = RESTResponse153
    Left = 1530
    Top = 1530
  end
  object RESTResponse153: TRESTResponse
    Left = 1836
    Top = 1836
  end
object postextended_logPostMemTable153: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'date'
      DataType = ftDateTime
    end
    item
      Name = 'event'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'user'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'recipient'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'description'
      DataType = ftMemo
    end
    item
      Name = 'patient_id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postextended_logMemTable153: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint154: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteextended_log/?id={id}'
    Response = RESTResponse154
    Left = 1540
    Top = 1540
  end
  object RESTResponse154: TRESTResponse
    Left = 1848
    Top = 1848
  end

  object BackendEndpoint155: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getexternal_encounters/?format={format}'
    Response = RESTResponse155
    Left = 1550
    Top = 1550
  end
  object RESTResponse155: TRESTResponse
    Left = 1860
    Top = 1860
  end
object getexternal_encountersMemTable155: TFDMemTable
  FieldDefs = <
    item
      Name = 'ee_id'
      DataType = ftAutoInc
    end
    item
      Name = 'ee_date'
      DataType = ftDate
    end
    item
      Name = 'ee_pid'
      DataType = ftInteger
    end
    item
      Name = 'ee_provider_id'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'ee_facility_id'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'ee_encounter_diagnosis'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'ee_external_id'
      DataType = ftString
      Size = 255
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint156: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postexternal_encounters/'
    Response = RESTResponse156
    Left = 1560
    Top = 1560
  end
  object RESTResponse156: TRESTResponse
    Left = 1872
    Top = 1872
  end
object postexternal_encountersPostMemTable156: TFDMemTable
  FieldDefs = <
    item
      Name = 'ee_id'
      DataType = ftAutoInc
    end
    item
      Name = 'ee_date'
      DataType = ftDate
    end
    item
      Name = 'ee_pid'
      DataType = ftInteger
    end
    item
      Name = 'ee_provider_id'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'ee_facility_id'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'ee_encounter_diagnosis'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'ee_external_id'
      DataType = ftString
      Size = 255
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postexternal_encountersMemTable156: TFDMemTable
  FieldDefs = <
    item
      Name = 'ee_id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint157: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'ee_id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteexternal_encounters/?ee_id={ee_id}'
    Response = RESTResponse157
    Left = 1570
    Top = 1570
  end
  object RESTResponse157: TRESTResponse
    Left = 1884
    Top = 1884
  end

  object BackendEndpoint158: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getexternal_procedures/?format={format}'
    Response = RESTResponse158
    Left = 1580
    Top = 1580
  end
  object RESTResponse158: TRESTResponse
    Left = 1896
    Top = 1896
  end
object getexternal_proceduresMemTable158: TFDMemTable
  FieldDefs = <
    item
      Name = 'ep_id'
      DataType = ftAutoInc
    end
    item
      Name = 'ep_date'
      DataType = ftDate
    end
    item
      Name = 'ep_code_type'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'ep_code'
      DataType = ftString
      Size = 9
    end
    item
      Name = 'ep_pid'
      DataType = ftInteger
    end
    item
      Name = 'ep_encounter'
      DataType = ftInteger
    end
    item
      Name = 'ep_code_text'
      DataType = ftMemo
    end
    item
      Name = 'ep_facility_id'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'ep_external_id'
      DataType = ftString
      Size = 255
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint159: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postexternal_procedures/'
    Response = RESTResponse159
    Left = 1590
    Top = 1590
  end
  object RESTResponse159: TRESTResponse
    Left = 1908
    Top = 1908
  end
object postexternal_proceduresPostMemTable159: TFDMemTable
  FieldDefs = <
    item
      Name = 'ep_id'
      DataType = ftAutoInc
    end
    item
      Name = 'ep_date'
      DataType = ftDate
    end
    item
      Name = 'ep_code_type'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'ep_code'
      DataType = ftString
      Size = 9
    end
    item
      Name = 'ep_pid'
      DataType = ftInteger
    end
    item
      Name = 'ep_encounter'
      DataType = ftInteger
    end
    item
      Name = 'ep_code_text'
      DataType = ftMemo
    end
    item
      Name = 'ep_facility_id'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'ep_external_id'
      DataType = ftString
      Size = 255
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postexternal_proceduresMemTable159: TFDMemTable
  FieldDefs = <
    item
      Name = 'ep_id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint160: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'ep_id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteexternal_procedures/?ep_id={ep_id}'
    Response = RESTResponse160
    Left = 1600
    Top = 1600
  end
  object RESTResponse160: TRESTResponse
    Left = 1920
    Top = 1920
  end

  object BackendEndpoint161: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getfacility/?format={format}'
    Response = RESTResponse161
    Left = 1610
    Top = 1610
  end
  object RESTResponse161: TRESTResponse
    Left = 1932
    Top = 1932
  end
object getfacilityMemTable161: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftAutoInc
    end
    item
      Name = 'name'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'phone'
      DataType = ftString
      Size = 30
    end
    item
      Name = 'fax'
      DataType = ftString
      Size = 30
    end
    item
      Name = 'street'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'city'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'state'
      DataType = ftString
      Size = 50
    end
    item
      Name = 'postal_code'
      DataType = ftString
      Size = 11
    end
    item
      Name = 'country_code'
      DataType = ftString
      Size = 30
    end
    item
      Name = 'federal_ein'
      DataType = ftString
      Size = 15
    end
    item
      Name = 'website'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'email'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'service_location'
      DataType = ftBoolean
    end
    item
      Name = 'billing_location'
      DataType = ftBoolean
    end
    item
      Name = 'accepts_assignment'
      DataType = ftBoolean
    end
    item
      Name = 'pos_code'
      DataType = ftShortint
    end
    item
      Name = 'x12_sender_id'
      DataType = ftString
      Size = 25
    end
    item
      Name = 'attn'
      DataType = ftString
      Size = 65
    end
    item
      Name = 'domain_identifier'
      DataType = ftString
      Size = 60
    end
    item
      Name = 'facility_npi'
      DataType = ftString
      Size = 15
    end
    item
      Name = 'facility_taxonomy'
      DataType = ftString
      Size = 15
    end
    item
      Name = 'tax_id_type'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'color'
      DataType = ftString
      Size = 7
    end
    item
      Name = 'primary_business_entity'
      DataType = ftInteger
    end
    item
      Name = 'facility_code'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'extra_validation'
      DataType = ftBoolean
    end
    item
      Name = 'mail_street'
      DataType = ftString
      Size = 30
    end
    item
      Name = 'mail_street2'
      DataType = ftString
      Size = 30
    end
    item
      Name = 'mail_city'
      DataType = ftString
      Size = 50
    end
    item
      Name = 'mail_state'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'mail_zip'
      DataType = ftString
      Size = 10
    end
    item
      Name = 'oid'
      DataType = ftString
      Size = 255
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint162: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postfacility/'
    Response = RESTResponse162
    Left = 1620
    Top = 1620
  end
  object RESTResponse162: TRESTResponse
    Left = 1944
    Top = 1944
  end
object postfacilityPostMemTable162: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftAutoInc
    end
    item
      Name = 'name'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'phone'
      DataType = ftString
      Size = 30
    end
    item
      Name = 'fax'
      DataType = ftString
      Size = 30
    end
    item
      Name = 'street'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'city'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'state'
      DataType = ftString
      Size = 50
    end
    item
      Name = 'postal_code'
      DataType = ftString
      Size = 11
    end
    item
      Name = 'country_code'
      DataType = ftString
      Size = 30
    end
    item
      Name = 'federal_ein'
      DataType = ftString
      Size = 15
    end
    item
      Name = 'website'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'email'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'service_location'
      DataType = ftBoolean
    end
    item
      Name = 'billing_location'
      DataType = ftBoolean
    end
    item
      Name = 'accepts_assignment'
      DataType = ftBoolean
    end
    item
      Name = 'pos_code'
      DataType = ftShortint
    end
    item
      Name = 'x12_sender_id'
      DataType = ftString
      Size = 25
    end
    item
      Name = 'attn'
      DataType = ftString
      Size = 65
    end
    item
      Name = 'domain_identifier'
      DataType = ftString
      Size = 60
    end
    item
      Name = 'facility_npi'
      DataType = ftString
      Size = 15
    end
    item
      Name = 'facility_taxonomy'
      DataType = ftString
      Size = 15
    end
    item
      Name = 'tax_id_type'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'color'
      DataType = ftString
      Size = 7
    end
    item
      Name = 'primary_business_entity'
      DataType = ftInteger
    end
    item
      Name = 'facility_code'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'extra_validation'
      DataType = ftBoolean
    end
    item
      Name = 'mail_street'
      DataType = ftString
      Size = 30
    end
    item
      Name = 'mail_street2'
      DataType = ftString
      Size = 30
    end
    item
      Name = 'mail_city'
      DataType = ftString
      Size = 50
    end
    item
      Name = 'mail_state'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'mail_zip'
      DataType = ftString
      Size = 10
    end
    item
      Name = 'oid'
      DataType = ftString
      Size = 255
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postfacilityMemTable162: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint163: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletefacility/?id={id}'
    Response = RESTResponse163
    Left = 1630
    Top = 1630
  end
  object RESTResponse163: TRESTResponse
    Left = 1956
    Top = 1956
  end

  object BackendEndpoint164: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getfacility_user_ids/?format={format}'
    Response = RESTResponse164
    Left = 1640
    Top = 1640
  end
  object RESTResponse164: TRESTResponse
    Left = 1968
    Top = 1968
  end
object getfacility_user_idsMemTable164: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'uid'
      DataType = ftLargeint
    end
    item
      Name = 'facility_id'
      DataType = ftLargeint
    end
    item
      Name = 'field_id'
      Attributes = [faRequired]
      DataType = ftString
      Size = 31
    end
    item
      Name = 'field_value'
      DataType = ftMemo
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint165: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postfacility_user_ids/'
    Response = RESTResponse165
    Left = 1650
    Top = 1650
  end
  object RESTResponse165: TRESTResponse
    Left = 1980
    Top = 1980
  end
object postfacility_user_idsPostMemTable165: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'uid'
      DataType = ftLargeint
    end
    item
      Name = 'facility_id'
      DataType = ftLargeint
    end
    item
      Name = 'field_id'
      Attributes = [faRequired]
      DataType = ftString
      Size = 31
    end
    item
      Name = 'field_value'
      DataType = ftMemo
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postfacility_user_idsMemTable165: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint166: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletefacility_user_ids/?id={id}'
    Response = RESTResponse166
    Left = 1660
    Top = 1660
  end
  object RESTResponse166: TRESTResponse
    Left = 1992
    Top = 1992
  end

  object BackendEndpoint167: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getfee_sheet_options/?format={format}'
    Response = RESTResponse167
    Left = 1670
    Top = 1670
  end
  object RESTResponse167: TRESTResponse
    Left = 2004
    Top = 2004
  end
object getfee_sheet_optionsMemTable167: TFDMemTable
  FieldDefs = <
    item
      Name = 'fs_category'
      DataType = ftString
      Size = 63
    end
    item
      Name = 'fs_option'
      DataType = ftString
      Size = 63
    end
    item
      Name = 'fs_codes'
      DataType = ftString
      Size = 255
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint168: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getform_care_plan/?format={format}'
    Response = RESTResponse168
    Left = 1680
    Top = 1680
  end
  object RESTResponse168: TRESTResponse
    Left = 2016
    Top = 2016
  end
object getform_care_planMemTable168: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      Attributes = [faRequired]
      DataType = ftLargeint
    end
    item
      Name = 'date'
      DataType = ftDate
    end
    item
      Name = 'pid'
      DataType = ftLargeint
    end
    item
      Name = 'encounter'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'user'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'groupname'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'authorized'
      DataType = ftShortint
    end
    item
      Name = 'activity'
      DataType = ftShortint
    end
    item
      Name = 'code'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'codetext'
      DataType = ftMemo
    end
    item
      Name = 'description'
      DataType = ftMemo
    end
    item
      Name = 'external_id'
      DataType = ftString
      Size = 30
    end
    item
      Name = 'care_plan_type'
      DataType = ftString
      Size = 30
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint169: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getform_clinical_instructions/?format={format}'
    Response = RESTResponse169
    Left = 1690
    Top = 1690
  end
  object RESTResponse169: TRESTResponse
    Left = 2028
    Top = 2028
  end
object getform_clinical_instructionsMemTable169: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftAutoInc
    end
    item
      Name = 'pid'
      DataType = ftLargeint
    end
    item
      Name = 'encounter'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'user'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'instruction'
      DataType = ftMemo
    end
    item
      Name = 'date'
      DataType = ftTimeStamp
    end
    item
      Name = 'activity'
      DataType = ftShortint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint170: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postform_clinical_instructions/'
    Response = RESTResponse170
    Left = 1700
    Top = 1700
  end
  object RESTResponse170: TRESTResponse
    Left = 2040
    Top = 2040
  end
object postform_clinical_instructionsPostMemTable170: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftAutoInc
    end
    item
      Name = 'pid'
      DataType = ftLargeint
    end
    item
      Name = 'encounter'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'user'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'instruction'
      DataType = ftMemo
    end
    item
      Name = 'date'
      DataType = ftTimeStamp
    end
    item
      Name = 'activity'
      DataType = ftShortint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postform_clinical_instructionsMemTable170: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint171: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteform_clinical_instructions/?id={id}'
    Response = RESTResponse171
    Left = 1710
    Top = 1710
  end
  object RESTResponse171: TRESTResponse
    Left = 2052
    Top = 2052
  end

  object BackendEndpoint172: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getform_dictation/?format={format}'
    Response = RESTResponse172
    Left = 1720
    Top = 1720
  end
  object RESTResponse172: TRESTResponse
    Left = 2064
    Top = 2064
  end
object getform_dictationMemTable172: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'date'
      DataType = ftDateTime
    end
    item
      Name = 'pid'
      DataType = ftLargeint
    end
    item
      Name = 'user'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'groupname'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'authorized'
      DataType = ftShortint
    end
    item
      Name = 'activity'
      DataType = ftShortint
    end
    item
      Name = 'dictation'
      DataType = ftMemo
    end
    item
      Name = 'additional_notes'
      DataType = ftMemo
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint173: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postform_dictation/'
    Response = RESTResponse173
    Left = 1730
    Top = 1730
  end
  object RESTResponse173: TRESTResponse
    Left = 2076
    Top = 2076
  end
object postform_dictationPostMemTable173: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'date'
      DataType = ftDateTime
    end
    item
      Name = 'pid'
      DataType = ftLargeint
    end
    item
      Name = 'user'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'groupname'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'authorized'
      DataType = ftShortint
    end
    item
      Name = 'activity'
      DataType = ftShortint
    end
    item
      Name = 'dictation'
      DataType = ftMemo
    end
    item
      Name = 'additional_notes'
      DataType = ftMemo
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postform_dictationMemTable173: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint174: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteform_dictation/?id={id}'
    Response = RESTResponse174
    Left = 1740
    Top = 1740
  end
  object RESTResponse174: TRESTResponse
    Left = 2088
    Top = 2088
  end

  object BackendEndpoint175: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getform_encounter/?format={format}'
    Response = RESTResponse175
    Left = 1750
    Top = 1750
  end
  object RESTResponse175: TRESTResponse
    Left = 2100
    Top = 2100
  end
object getform_encounterMemTable175: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'date'
      DataType = ftDateTime
    end
    item
      Name = 'reason'
      DataType = ftMemo
    end
    item
      Name = 'facility'
      DataType = ftMemo
    end
    item
      Name = 'facility_id'
      DataType = ftInteger
    end
    item
      Name = 'pid'
      DataType = ftLargeint
    end
    item
      Name = 'encounter'
      DataType = ftLargeint
    end
    item
      Name = 'onset_date'
      DataType = ftDateTime
    end
    item
      Name = 'sensitivity'
      DataType = ftString
      Size = 30
    end
    item
      Name = 'billing_note'
      DataType = ftMemo
    end
    item
      Name = 'pc_catid'
      DataType = ftInteger
    end
    item
      Name = 'last_level_billed'
      DataType = ftInteger
    end
    item
      Name = 'last_level_closed'
      DataType = ftInteger
    end
    item
      Name = 'last_stmt_date'
      DataType = ftDate
    end
    item
      Name = 'stmt_count'
      DataType = ftInteger
    end
    item
      Name = 'provider_id'
      DataType = ftInteger
    end
    item
      Name = 'supervisor_id'
      DataType = ftInteger
    end
    item
      Name = 'invoice_refno'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'referral_source'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'billing_facility'
      DataType = ftInteger
    end
    item
      Name = 'external_id'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'pos_code'
      DataType = ftShortint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint176: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postform_encounter/'
    Response = RESTResponse176
    Left = 1760
    Top = 1760
  end
  object RESTResponse176: TRESTResponse
    Left = 2112
    Top = 2112
  end
object postform_encounterPostMemTable176: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'date'
      DataType = ftDateTime
    end
    item
      Name = 'reason'
      DataType = ftMemo
    end
    item
      Name = 'facility'
      DataType = ftMemo
    end
    item
      Name = 'facility_id'
      DataType = ftInteger
    end
    item
      Name = 'pid'
      DataType = ftLargeint
    end
    item
      Name = 'encounter'
      DataType = ftLargeint
    end
    item
      Name = 'onset_date'
      DataType = ftDateTime
    end
    item
      Name = 'sensitivity'
      DataType = ftString
      Size = 30
    end
    item
      Name = 'billing_note'
      DataType = ftMemo
    end
    item
      Name = 'pc_catid'
      DataType = ftInteger
    end
    item
      Name = 'last_level_billed'
      DataType = ftInteger
    end
    item
      Name = 'last_level_closed'
      DataType = ftInteger
    end
    item
      Name = 'last_stmt_date'
      DataType = ftDate
    end
    item
      Name = 'stmt_count'
      DataType = ftInteger
    end
    item
      Name = 'provider_id'
      DataType = ftInteger
    end
    item
      Name = 'supervisor_id'
      DataType = ftInteger
    end
    item
      Name = 'invoice_refno'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'referral_source'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'billing_facility'
      DataType = ftInteger
    end
    item
      Name = 'external_id'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'pos_code'
      DataType = ftShortint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postform_encounterMemTable176: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint177: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteform_encounter/?id={id}'
    Response = RESTResponse177
    Left = 1770
    Top = 1770
  end
  object RESTResponse177: TRESTResponse
    Left = 2124
    Top = 2124
  end

  object BackendEndpoint178: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getform_eye_mag_dispense/?format={format}'
    Response = RESTResponse178
    Left = 1780
    Top = 1780
  end
  object RESTResponse178: TRESTResponse
    Left = 2136
    Top = 2136
  end
object getform_eye_mag_dispenseMemTable178: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'date'
      DataType = ftTimeStamp
    end
    item
      Name = 'encounter'
      DataType = ftLargeint
    end
    item
      Name = 'pid'
      DataType = ftLargeint
    end
    item
      Name = 'user'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'groupname'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'authorized'
      DataType = ftShortint
    end
    item
      Name = 'activity'
      DataType = ftShortint
    end
    item
      Name = 'REFDATE'
      DataType = ftDateTime
    end
    item
      Name = 'REFTYPE'
      DataType = ftString
      Size = 10
    end
    item
      Name = 'RXTYPE'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'ODSPH'
      DataType = ftString
      Size = 10
    end
    item
      Name = 'ODCYL'
      DataType = ftString
      Size = 10
    end
    item
      Name = 'ODAXIS'
      DataType = ftString
      Size = 10
    end
    item
      Name = 'OSSPH'
      DataType = ftString
      Size = 10
    end
    item
      Name = 'OSCYL'
      DataType = ftString
      Size = 10
    end
    item
      Name = 'OSAXIS'
      DataType = ftString
      Size = 10
    end
    item
      Name = 'ODMIDADD'
      DataType = ftString
      Size = 10
    end
    item
      Name = 'OSMIDADD'
      DataType = ftString
      Size = 10
    end
    item
      Name = 'ODADD'
      DataType = ftString
      Size = 10
    end
    item
      Name = 'OSADD'
      DataType = ftString
      Size = 10
    end
    item
      Name = 'ODHPD'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'ODHBASE'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'ODVPD'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'ODVBASE'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'ODSLABOFF'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'ODVERTEXDIST'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'OSHPD'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'OSHBASE'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'OSVPD'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'OSVBASE'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'OSSLABOFF'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'OSVERTEXDIST'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'ODMPDD'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'ODMPDN'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'OSMPDD'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'OSMPDN'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'BPDD'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'BPDN'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'LENS_MATERIAL'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'LENS_TREATMENTS'
      DataType = ftString
      Size = 100
    end
    item
      Name = 'CTLMANUFACTUREROD'
      DataType = ftString
      Size = 25
    end
    item
      Name = 'CTLMANUFACTUREROS'
      DataType = ftString
      Size = 25
    end
    item
      Name = 'CTLSUPPLIEROD'
      DataType = ftString
      Size = 25
    end
    item
      Name = 'CTLSUPPLIEROS'
      DataType = ftString
      Size = 25
    end
    item
      Name = 'CTLBRANDOD'
      DataType = ftString
      Size = 50
    end
    item
      Name = 'CTLBRANDOS'
      DataType = ftString
      Size = 50
    end
    item
      Name = 'CTLODQUANTITY'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'CTLOSQUANTITY'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'ODDIAM'
      DataType = ftString
      Size = 50
    end
    item
      Name = 'ODBC'
      DataType = ftString
      Size = 50
    end
    item
      Name = 'OSDIAM'
      DataType = ftString
      Size = 50
    end
    item
      Name = 'OSBC'
      DataType = ftString
      Size = 50
    end
    item
      Name = 'RXCOMMENTS'
      DataType = ftMemo
    end
    item
      Name = 'COMMENTS'
      DataType = ftMemo
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint179: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postform_eye_mag_dispense/'
    Response = RESTResponse179
    Left = 1790
    Top = 1790
  end
  object RESTResponse179: TRESTResponse
    Left = 2148
    Top = 2148
  end
object postform_eye_mag_dispensePostMemTable179: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'date'
      DataType = ftTimeStamp
    end
    item
      Name = 'encounter'
      DataType = ftLargeint
    end
    item
      Name = 'pid'
      DataType = ftLargeint
    end
    item
      Name = 'user'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'groupname'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'authorized'
      DataType = ftShortint
    end
    item
      Name = 'activity'
      DataType = ftShortint
    end
    item
      Name = 'REFDATE'
      DataType = ftDateTime
    end
    item
      Name = 'REFTYPE'
      DataType = ftString
      Size = 10
    end
    item
      Name = 'RXTYPE'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'ODSPH'
      DataType = ftString
      Size = 10
    end
    item
      Name = 'ODCYL'
      DataType = ftString
      Size = 10
    end
    item
      Name = 'ODAXIS'
      DataType = ftString
      Size = 10
    end
    item
      Name = 'OSSPH'
      DataType = ftString
      Size = 10
    end
    item
      Name = 'OSCYL'
      DataType = ftString
      Size = 10
    end
    item
      Name = 'OSAXIS'
      DataType = ftString
      Size = 10
    end
    item
      Name = 'ODMIDADD'
      DataType = ftString
      Size = 10
    end
    item
      Name = 'OSMIDADD'
      DataType = ftString
      Size = 10
    end
    item
      Name = 'ODADD'
      DataType = ftString
      Size = 10
    end
    item
      Name = 'OSADD'
      DataType = ftString
      Size = 10
    end
    item
      Name = 'ODHPD'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'ODHBASE'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'ODVPD'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'ODVBASE'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'ODSLABOFF'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'ODVERTEXDIST'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'OSHPD'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'OSHBASE'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'OSVPD'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'OSVBASE'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'OSSLABOFF'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'OSVERTEXDIST'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'ODMPDD'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'ODMPDN'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'OSMPDD'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'OSMPDN'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'BPDD'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'BPDN'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'LENS_MATERIAL'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'LENS_TREATMENTS'
      DataType = ftString
      Size = 100
    end
    item
      Name = 'CTLMANUFACTUREROD'
      DataType = ftString
      Size = 25
    end
    item
      Name = 'CTLMANUFACTUREROS'
      DataType = ftString
      Size = 25
    end
    item
      Name = 'CTLSUPPLIEROD'
      DataType = ftString
      Size = 25
    end
    item
      Name = 'CTLSUPPLIEROS'
      DataType = ftString
      Size = 25
    end
    item
      Name = 'CTLBRANDOD'
      DataType = ftString
      Size = 50
    end
    item
      Name = 'CTLBRANDOS'
      DataType = ftString
      Size = 50
    end
    item
      Name = 'CTLODQUANTITY'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'CTLOSQUANTITY'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'ODDIAM'
      DataType = ftString
      Size = 50
    end
    item
      Name = 'ODBC'
      DataType = ftString
      Size = 50
    end
    item
      Name = 'OSDIAM'
      DataType = ftString
      Size = 50
    end
    item
      Name = 'OSBC'
      DataType = ftString
      Size = 50
    end
    item
      Name = 'RXCOMMENTS'
      DataType = ftMemo
    end
    item
      Name = 'COMMENTS'
      DataType = ftMemo
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postform_eye_mag_dispenseMemTable179: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint180: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteform_eye_mag_dispense/?id={id}'
    Response = RESTResponse180
    Left = 1800
    Top = 1800
  end
  object RESTResponse180: TRESTResponse
    Left = 2160
    Top = 2160
  end

  object BackendEndpoint181: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getform_eye_mag_prefs/?format={format}'
    Response = RESTResponse181
    Left = 1810
    Top = 1810
  end
  object RESTResponse181: TRESTResponse
    Left = 2172
    Top = 2172
  end
object getform_eye_mag_prefsMemTable181: TFDMemTable
  FieldDefs = <
    item
      Name = 'PEZONE'
      DataType = ftString
      Size = 25
    end
    item
      Name = 'LOCATION'
      DataType = ftString
      Size = 25
    end
    item
      Name = 'LOCATION_text'
      Attributes = [faRequired]
      DataType = ftString
      Size = 25
    end
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'selection'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'ZONE_ORDER'
      DataType = ftInteger
    end
    item
      Name = 'GOVALUE'
      DataType = ftString
      Size = 10
    end
    item
      Name = 'ordering'
      DataType = ftShortint
    end
    item
      Name = 'FILL_ACTION'
      DataType = ftString
      Size = 10
    end
    item
      Name = 'GORIGHT'
      Attributes = [faRequired]
      DataType = ftString
      Size = 50
    end
    item
      Name = 'GOLEFT'
      Attributes = [faRequired]
      DataType = ftString
      Size = 50
    end
    item
      Name = 'UNSPEC'
      Attributes = [faRequired]
      DataType = ftString
      Size = 50
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint182: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getform_functional_cognitive_status/?format={format}'
    Response = RESTResponse182
    Left = 1820
    Top = 1820
  end
  object RESTResponse182: TRESTResponse
    Left = 2184
    Top = 2184
  end
object getform_functional_cognitive_statusMemTable182: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      Attributes = [faRequired]
      DataType = ftLargeint
    end
    item
      Name = 'date'
      DataType = ftDate
    end
    item
      Name = 'pid'
      DataType = ftLargeint
    end
    item
      Name = 'encounter'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'user'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'groupname'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'authorized'
      DataType = ftShortint
    end
    item
      Name = 'activity'
      DataType = ftShortint
    end
    item
      Name = 'code'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'codetext'
      DataType = ftMemo
    end
    item
      Name = 'description'
      DataType = ftMemo
    end
    item
      Name = 'external_id'
      DataType = ftString
      Size = 30
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint183: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getform_misc_billing_options/?format={format}'
    Response = RESTResponse183
    Left = 1830
    Top = 1830
  end
  object RESTResponse183: TRESTResponse
    Left = 2196
    Top = 2196
  end
object getform_misc_billing_optionsMemTable183: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'date'
      DataType = ftDateTime
    end
    item
      Name = 'pid'
      DataType = ftLargeint
    end
    item
      Name = 'user'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'groupname'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'authorized'
      DataType = ftShortint
    end
    item
      Name = 'activity'
      DataType = ftShortint
    end
    item
      Name = 'employment_related'
      DataType = ftBoolean
    end
    item
      Name = 'auto_accident'
      DataType = ftBoolean
    end
    item
      Name = 'accident_state'
      DataType = ftString
      Size = 2
    end
    item
      Name = 'other_accident'
      DataType = ftBoolean
    end
    item
      Name = 'medicaid_referral_code'
      DataType = ftString
      Size = 2
    end
    item
      Name = 'epsdt_flag'
      DataType = ftBoolean
    end
    item
      Name = 'provider_qualifier_code'
      DataType = ftString
      Size = 2
    end
    item
      Name = 'provider_id'
      DataType = ftInteger
    end
    item
      Name = 'outside_lab'
      DataType = ftBoolean
    end
    item
      Name = 'lab_amount'
      DataType = ftBCD
      Precision = 5
      Size = 2
    end
    item
      Name = 'is_unable_to_work'
      DataType = ftBoolean
    end
    item
      Name = 'onset_date'
      DataType = ftDate
    end
    item
      Name = 'date_initial_treatment'
      DataType = ftDate
    end
    item
      Name = 'off_work_from'
      DataType = ftDate
    end
    item
      Name = 'off_work_to'
      DataType = ftDate
    end
    item
      Name = 'is_hospitalized'
      DataType = ftBoolean
    end
    item
      Name = 'hospitalization_date_from'
      DataType = ftDate
    end
    item
      Name = 'hospitalization_date_to'
      DataType = ftDate
    end
    item
      Name = 'medicaid_resubmission_code'
      DataType = ftString
      Size = 10
    end
    item
      Name = 'medicaid_original_reference'
      DataType = ftString
      Size = 15
    end
    item
      Name = 'prior_auth_number'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'comments'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'replacement_claim'
      DataType = ftBoolean
    end
    item
      Name = 'icn_resubmission_number'
      DataType = ftString
      Size = 35
    end
    item
      Name = 'box_14_date_qual'
      Attributes = [faFixed]
      DataType = ftFixedChar
      Size = 3
    end
    item
      Name = 'box_15_date_qual'
      Attributes = [faFixed]
      DataType = ftFixedChar
      Size = 3
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint184: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postform_misc_billing_options/'
    Response = RESTResponse184
    Left = 1840
    Top = 1840
  end
  object RESTResponse184: TRESTResponse
    Left = 2208
    Top = 2208
  end
object postform_misc_billing_optionsPostMemTable184: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'date'
      DataType = ftDateTime
    end
    item
      Name = 'pid'
      DataType = ftLargeint
    end
    item
      Name = 'user'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'groupname'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'authorized'
      DataType = ftShortint
    end
    item
      Name = 'activity'
      DataType = ftShortint
    end
    item
      Name = 'employment_related'
      DataType = ftBoolean
    end
    item
      Name = 'auto_accident'
      DataType = ftBoolean
    end
    item
      Name = 'accident_state'
      DataType = ftString
      Size = 2
    end
    item
      Name = 'other_accident'
      DataType = ftBoolean
    end
    item
      Name = 'medicaid_referral_code'
      DataType = ftString
      Size = 2
    end
    item
      Name = 'epsdt_flag'
      DataType = ftBoolean
    end
    item
      Name = 'provider_qualifier_code'
      DataType = ftString
      Size = 2
    end
    item
      Name = 'provider_id'
      DataType = ftInteger
    end
    item
      Name = 'outside_lab'
      DataType = ftBoolean
    end
    item
      Name = 'lab_amount'
      DataType = ftBCD
      Precision = 5
      Size = 2
    end
    item
      Name = 'is_unable_to_work'
      DataType = ftBoolean
    end
    item
      Name = 'onset_date'
      DataType = ftDate
    end
    item
      Name = 'date_initial_treatment'
      DataType = ftDate
    end
    item
      Name = 'off_work_from'
      DataType = ftDate
    end
    item
      Name = 'off_work_to'
      DataType = ftDate
    end
    item
      Name = 'is_hospitalized'
      DataType = ftBoolean
    end
    item
      Name = 'hospitalization_date_from'
      DataType = ftDate
    end
    item
      Name = 'hospitalization_date_to'
      DataType = ftDate
    end
    item
      Name = 'medicaid_resubmission_code'
      DataType = ftString
      Size = 10
    end
    item
      Name = 'medicaid_original_reference'
      DataType = ftString
      Size = 15
    end
    item
      Name = 'prior_auth_number'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'comments'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'replacement_claim'
      DataType = ftBoolean
    end
    item
      Name = 'icn_resubmission_number'
      DataType = ftString
      Size = 35
    end
    item
      Name = 'box_14_date_qual'
      Attributes = [faFixed]
      DataType = ftFixedChar
      Size = 3
    end
    item
      Name = 'box_15_date_qual'
      Attributes = [faFixed]
      DataType = ftFixedChar
      Size = 3
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postform_misc_billing_optionsMemTable184: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint185: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteform_misc_billing_options/?id={id}'
    Response = RESTResponse185
    Left = 1850
    Top = 1850
  end
  object RESTResponse185: TRESTResponse
    Left = 2220
    Top = 2220
  end

  object BackendEndpoint186: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getform_observation/?format={format}'
    Response = RESTResponse186
    Left = 1860
    Top = 1860
  end
  object RESTResponse186: TRESTResponse
    Left = 2232
    Top = 2232
  end
object getform_observationMemTable186: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      Attributes = [faRequired]
      DataType = ftLargeint
    end
    item
      Name = 'date'
      DataType = ftDate
    end
    item
      Name = 'pid'
      DataType = ftLargeint
    end
    item
      Name = 'encounter'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'user'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'groupname'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'authorized'
      DataType = ftShortint
    end
    item
      Name = 'activity'
      DataType = ftShortint
    end
    item
      Name = 'code'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'observation'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'ob_value'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'ob_unit'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'description'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'code_type'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'table_code'
      DataType = ftString
      Size = 255
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint187: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getform_reviewofs/?format={format}'
    Response = RESTResponse187
    Left = 1870
    Top = 1870
  end
  object RESTResponse187: TRESTResponse
    Left = 2244
    Top = 2244
  end
object getform_reviewofsMemTable187: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'date'
      DataType = ftDateTime
    end
    item
      Name = 'pid'
      DataType = ftLargeint
    end
    item
      Name = 'user'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'groupname'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'authorized'
      DataType = ftShortint
    end
    item
      Name = 'activity'
      DataType = ftShortint
    end
    item
      Name = 'fever'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'chills'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'night_sweats'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'weight_loss'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'poor_appetite'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'insomnia'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'fatigued'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'depressed'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'hyperactive'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'exposure_to_foreign_countries'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'cataracts'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'cataract_surgery'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'glaucoma'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'double_vision'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'blurred_vision'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'poor_hearing'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'headaches'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'ringing_in_ears'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'bloody_nose'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'sinusitis'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'sinus_surgery'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'dry_mouth'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'strep_throat'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'tonsillectomy'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'swollen_lymph_nodes'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'throat_cancer'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'throat_cancer_surgery'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'heart_attack'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'irregular_heart_beat'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'chest_pains'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'shortness_of_breath'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'high_blood_pressure'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'heart_failure'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'poor_circulation'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'vascular_surgery'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'cardiac_catheterization'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'coronary_artery_bypass'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'heart_transplant'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'stress_test'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'emphysema'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'chronic_bronchitis'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'interstitial_lung_disease'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'shortness_of_breath_2'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'lung_cancer'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'lung_cancer_surgery'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'pheumothorax'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'stomach_pains'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'peptic_ulcer_disease'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'gastritis'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'endoscopy'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'polyps'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'colonoscopy'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'colon_cancer'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'colon_cancer_surgery'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'ulcerative_colitis'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'crohns_disease'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'appendectomy'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'divirticulitis'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'divirticulitis_surgery'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'gall_stones'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'cholecystectomy'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'hepatitis'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'cirrhosis_of_the_liver'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'splenectomy'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'kidney_failure'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'kidney_stones'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'kidney_cancer'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'kidney_infections'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'bladder_infections'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'bladder_cancer'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'prostate_problems'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'prostate_cancer'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'kidney_transplant'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'sexually_transmitted_disease'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'burning_with_urination'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'discharge_from_urethra'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'rashes'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'infections'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'ulcerations'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'pemphigus'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'herpes'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'osetoarthritis'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'rheumotoid_arthritis'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'lupus'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'ankylosing_sondlilitis'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'swollen_joints'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'stiff_joints'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'broken_bones'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'neck_problems'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'back_problems'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'back_surgery'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'scoliosis'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'herniated_disc'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'shoulder_problems'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'elbow_problems'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'wrist_problems'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'hand_problems'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'hip_problems'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'knee_problems'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'ankle_problems'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'foot_problems'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'insulin_dependent_diabetes'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'noninsulin_dependent_diabetes'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'hypothyroidism'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'hyperthyroidism'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'cushing_syndrom'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'addison_syndrom'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'additional_notes'
      DataType = ftMemo
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint188: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postform_reviewofs/'
    Response = RESTResponse188
    Left = 1880
    Top = 1880
  end
  object RESTResponse188: TRESTResponse
    Left = 2256
    Top = 2256
  end
object postform_reviewofsPostMemTable188: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'date'
      DataType = ftDateTime
    end
    item
      Name = 'pid'
      DataType = ftLargeint
    end
    item
      Name = 'user'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'groupname'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'authorized'
      DataType = ftShortint
    end
    item
      Name = 'activity'
      DataType = ftShortint
    end
    item
      Name = 'fever'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'chills'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'night_sweats'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'weight_loss'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'poor_appetite'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'insomnia'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'fatigued'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'depressed'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'hyperactive'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'exposure_to_foreign_countries'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'cataracts'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'cataract_surgery'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'glaucoma'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'double_vision'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'blurred_vision'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'poor_hearing'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'headaches'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'ringing_in_ears'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'bloody_nose'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'sinusitis'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'sinus_surgery'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'dry_mouth'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'strep_throat'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'tonsillectomy'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'swollen_lymph_nodes'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'throat_cancer'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'throat_cancer_surgery'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'heart_attack'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'irregular_heart_beat'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'chest_pains'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'shortness_of_breath'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'high_blood_pressure'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'heart_failure'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'poor_circulation'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'vascular_surgery'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'cardiac_catheterization'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'coronary_artery_bypass'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'heart_transplant'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'stress_test'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'emphysema'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'chronic_bronchitis'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'interstitial_lung_disease'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'shortness_of_breath_2'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'lung_cancer'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'lung_cancer_surgery'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'pheumothorax'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'stomach_pains'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'peptic_ulcer_disease'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'gastritis'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'endoscopy'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'polyps'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'colonoscopy'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'colon_cancer'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'colon_cancer_surgery'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'ulcerative_colitis'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'crohns_disease'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'appendectomy'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'divirticulitis'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'divirticulitis_surgery'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'gall_stones'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'cholecystectomy'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'hepatitis'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'cirrhosis_of_the_liver'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'splenectomy'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'kidney_failure'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'kidney_stones'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'kidney_cancer'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'kidney_infections'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'bladder_infections'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'bladder_cancer'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'prostate_problems'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'prostate_cancer'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'kidney_transplant'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'sexually_transmitted_disease'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'burning_with_urination'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'discharge_from_urethra'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'rashes'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'infections'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'ulcerations'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'pemphigus'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'herpes'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'osetoarthritis'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'rheumotoid_arthritis'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'lupus'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'ankylosing_sondlilitis'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'swollen_joints'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'stiff_joints'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'broken_bones'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'neck_problems'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'back_problems'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'back_surgery'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'scoliosis'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'herniated_disc'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'shoulder_problems'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'elbow_problems'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'wrist_problems'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'hand_problems'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'hip_problems'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'knee_problems'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'ankle_problems'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'foot_problems'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'insulin_dependent_diabetes'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'noninsulin_dependent_diabetes'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'hypothyroidism'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'hyperthyroidism'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'cushing_syndrom'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'addison_syndrom'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'additional_notes'
      DataType = ftMemo
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postform_reviewofsMemTable188: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint189: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteform_reviewofs/?id={id}'
    Response = RESTResponse189
    Left = 1890
    Top = 1890
  end
  object RESTResponse189: TRESTResponse
    Left = 2268
    Top = 2268
  end

  object BackendEndpoint190: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getform_ros/?format={format}'
    Response = RESTResponse190
    Left = 1900
    Top = 1900
  end
  object RESTResponse190: TRESTResponse
    Left = 2280
    Top = 2280
  end
object getform_rosMemTable190: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftAutoInc
    end
    item
      Name = 'pid'
      Attributes = [faRequired]
      DataType = ftLargeint
    end
    item
      Name = 'activity'
      DataType = ftInteger
    end
    item
      Name = 'date'
      DataType = ftDateTime
    end
    item
      Name = 'weight_change'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'weakness'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'fatigue'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'anorexia'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'fever'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'chills'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'night_sweats'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'insomnia'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'irritability'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'heat_or_cold'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'intolerance'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'change_in_vision'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'glaucoma_history'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'eye_pain'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'irritation'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'redness'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'excessive_tearing'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'double_vision'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'blind_spots'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'photophobia'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'hearing_loss'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'discharge'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'pain'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'vertigo'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'tinnitus'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'frequent_colds'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'sore_throat'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'sinus_problems'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'post_nasal_drip'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'nosebleed'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'snoring'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'apnea'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'breast_mass'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'breast_discharge'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'biopsy'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'abnormal_mammogram'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'cough'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'sputum'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'shortness_of_breath'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'wheezing'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'hemoptsyis'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'asthma'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'copd'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'chest_pain'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'palpitation'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'syncope'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'pnd'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'doe'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'orthopnea'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'peripheal'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'edema'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'legpain_cramping'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'history_murmur'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'arrythmia'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'heart_problem'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'dysphagia'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'heartburn'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'bloating'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'belching'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'flatulence'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'nausea'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'vomiting'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'hematemesis'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'gastro_pain'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'food_intolerance'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'hepatitis'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'jaundice'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'hematochezia'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'changed_bowel'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'diarrhea'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'constipation'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'polyuria'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'polydypsia'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'dysuria'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'hematuria'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'frequency'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'urgency'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'incontinence'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'renal_stones'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'utis'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'hesitancy'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'dribbling'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'stream'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'nocturia'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'erections'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'ejaculations'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'g'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'p'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'ap'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'lc'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'mearche'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'menopause'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'lmp'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'f_frequency'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'f_flow'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'f_symptoms'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'abnormal_hair_growth'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'f_hirsutism'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'joint_pain'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'swelling'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'm_redness'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'm_warm'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'm_stiffness'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'muscle'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'm_aches'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'fms'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'arthritis'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'loc'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'seizures'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'stroke'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'tia'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'n_numbness'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'n_weakness'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'paralysis'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'intellectual_decline'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'memory_problems'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'dementia'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'n_headache'
      DataType = ftString
      Size = 3
    end
    item
      Name = 's_cancer'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'psoriasis'
      DataType = ftString
      Size = 3
    end
    item
      Name = 's_acne'
      DataType = ftString
      Size = 3
    end
    item
      Name = 's_other'
      DataType = ftString
      Size = 3
    end
    item
      Name = 's_disease'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'p_diagnosis'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'p_medication'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'depression'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'anxiety'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'social_difficulties'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'thyroid_problems'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'diabetes'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'abnormal_blood'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'anemia'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'fh_blood_problems'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'bleeding_problems'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'allergies'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'frequent_illness'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'hiv'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'hai_status'
      DataType = ftString
      Size = 3
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint191: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postform_ros/'
    Response = RESTResponse191
    Left = 1910
    Top = 1910
  end
  object RESTResponse191: TRESTResponse
    Left = 2292
    Top = 2292
  end
object postform_rosPostMemTable191: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftAutoInc
    end
    item
      Name = 'pid'
      Attributes = [faRequired]
      DataType = ftLargeint
    end
    item
      Name = 'activity'
      DataType = ftInteger
    end
    item
      Name = 'date'
      DataType = ftDateTime
    end
    item
      Name = 'weight_change'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'weakness'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'fatigue'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'anorexia'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'fever'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'chills'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'night_sweats'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'insomnia'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'irritability'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'heat_or_cold'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'intolerance'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'change_in_vision'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'glaucoma_history'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'eye_pain'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'irritation'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'redness'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'excessive_tearing'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'double_vision'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'blind_spots'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'photophobia'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'hearing_loss'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'discharge'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'pain'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'vertigo'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'tinnitus'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'frequent_colds'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'sore_throat'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'sinus_problems'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'post_nasal_drip'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'nosebleed'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'snoring'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'apnea'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'breast_mass'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'breast_discharge'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'biopsy'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'abnormal_mammogram'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'cough'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'sputum'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'shortness_of_breath'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'wheezing'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'hemoptsyis'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'asthma'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'copd'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'chest_pain'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'palpitation'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'syncope'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'pnd'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'doe'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'orthopnea'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'peripheal'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'edema'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'legpain_cramping'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'history_murmur'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'arrythmia'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'heart_problem'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'dysphagia'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'heartburn'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'bloating'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'belching'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'flatulence'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'nausea'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'vomiting'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'hematemesis'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'gastro_pain'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'food_intolerance'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'hepatitis'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'jaundice'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'hematochezia'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'changed_bowel'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'diarrhea'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'constipation'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'polyuria'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'polydypsia'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'dysuria'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'hematuria'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'frequency'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'urgency'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'incontinence'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'renal_stones'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'utis'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'hesitancy'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'dribbling'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'stream'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'nocturia'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'erections'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'ejaculations'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'g'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'p'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'ap'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'lc'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'mearche'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'menopause'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'lmp'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'f_frequency'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'f_flow'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'f_symptoms'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'abnormal_hair_growth'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'f_hirsutism'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'joint_pain'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'swelling'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'm_redness'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'm_warm'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'm_stiffness'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'muscle'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'm_aches'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'fms'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'arthritis'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'loc'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'seizures'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'stroke'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'tia'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'n_numbness'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'n_weakness'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'paralysis'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'intellectual_decline'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'memory_problems'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'dementia'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'n_headache'
      DataType = ftString
      Size = 3
    end
    item
      Name = 's_cancer'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'psoriasis'
      DataType = ftString
      Size = 3
    end
    item
      Name = 's_acne'
      DataType = ftString
      Size = 3
    end
    item
      Name = 's_other'
      DataType = ftString
      Size = 3
    end
    item
      Name = 's_disease'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'p_diagnosis'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'p_medication'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'depression'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'anxiety'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'social_difficulties'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'thyroid_problems'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'diabetes'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'abnormal_blood'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'anemia'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'fh_blood_problems'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'bleeding_problems'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'allergies'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'frequent_illness'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'hiv'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'hai_status'
      DataType = ftString
      Size = 3
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postform_rosMemTable191: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint192: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteform_ros/?id={id}'
    Response = RESTResponse192
    Left = 1920
    Top = 1920
  end
  object RESTResponse192: TRESTResponse
    Left = 2304
    Top = 2304
  end

  object BackendEndpoint193: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getform_soap/?format={format}'
    Response = RESTResponse193
    Left = 1930
    Top = 1930
  end
  object RESTResponse193: TRESTResponse
    Left = 2316
    Top = 2316
  end
object getform_soapMemTable193: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'date'
      DataType = ftDateTime
    end
    item
      Name = 'pid'
      DataType = ftLargeint
    end
    item
      Name = 'user'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'groupname'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'authorized'
      DataType = ftShortint
    end
    item
      Name = 'activity'
      DataType = ftShortint
    end
    item
      Name = 'subjective'
      DataType = ftMemo
    end
    item
      Name = 'objective'
      DataType = ftMemo
    end
    item
      Name = 'assessment'
      DataType = ftMemo
    end
    item
      Name = 'plan'
      DataType = ftMemo
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint194: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postform_soap/'
    Response = RESTResponse194
    Left = 1940
    Top = 1940
  end
  object RESTResponse194: TRESTResponse
    Left = 2328
    Top = 2328
  end
object postform_soapPostMemTable194: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'date'
      DataType = ftDateTime
    end
    item
      Name = 'pid'
      DataType = ftLargeint
    end
    item
      Name = 'user'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'groupname'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'authorized'
      DataType = ftShortint
    end
    item
      Name = 'activity'
      DataType = ftShortint
    end
    item
      Name = 'subjective'
      DataType = ftMemo
    end
    item
      Name = 'objective'
      DataType = ftMemo
    end
    item
      Name = 'assessment'
      DataType = ftMemo
    end
    item
      Name = 'plan'
      DataType = ftMemo
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postform_soapMemTable194: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint195: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteform_soap/?id={id}'
    Response = RESTResponse195
    Left = 1950
    Top = 1950
  end
  object RESTResponse195: TRESTResponse
    Left = 2340
    Top = 2340
  end

  object BackendEndpoint196: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getform_vitals/?format={format}'
    Response = RESTResponse196
    Left = 1960
    Top = 1960
  end
  object RESTResponse196: TRESTResponse
    Left = 2352
    Top = 2352
  end
object getform_vitalsMemTable196: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'date'
      DataType = ftDateTime
    end
    item
      Name = 'pid'
      DataType = ftLargeint
    end
    item
      Name = 'user'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'groupname'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'authorized'
      DataType = ftShortint
    end
    item
      Name = 'activity'
      DataType = ftShortint
    end
    item
      Name = 'bps'
      DataType = ftString
      Size = 40
    end
    item
      Name = 'bpd'
      DataType = ftString
      Size = 40
    end
    item
      Name = 'weight'
      DataType = ftFloat
      Precision = 5
    end
    item
      Name = 'height'
      DataType = ftFloat
      Precision = 5
    end
    item
      Name = 'temperature'
      DataType = ftFloat
      Precision = 5
    end
    item
      Name = 'temp_method'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'pulse'
      DataType = ftFloat
      Precision = 5
    end
    item
      Name = 'respiration'
      DataType = ftFloat
      Precision = 5
    end
    item
      Name = 'note'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'BMI'
      DataType = ftFloat
      Precision = 4
    end
    item
      Name = 'BMI_status'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'waist_circ'
      DataType = ftFloat
      Precision = 5
    end
    item
      Name = 'head_circ'
      DataType = ftFloat
      Precision = 4
    end
    item
      Name = 'oxygen_saturation'
      DataType = ftFloat
      Precision = 5
    end
    item
      Name = 'external_id'
      DataType = ftString
      Size = 20
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint197: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postform_vitals/'
    Response = RESTResponse197
    Left = 1970
    Top = 1970
  end
  object RESTResponse197: TRESTResponse
    Left = 2364
    Top = 2364
  end
object postform_vitalsPostMemTable197: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'date'
      DataType = ftDateTime
    end
    item
      Name = 'pid'
      DataType = ftLargeint
    end
    item
      Name = 'user'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'groupname'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'authorized'
      DataType = ftShortint
    end
    item
      Name = 'activity'
      DataType = ftShortint
    end
    item
      Name = 'bps'
      DataType = ftString
      Size = 40
    end
    item
      Name = 'bpd'
      DataType = ftString
      Size = 40
    end
    item
      Name = 'weight'
      DataType = ftFloat
      Precision = 5
    end
    item
      Name = 'height'
      DataType = ftFloat
      Precision = 5
    end
    item
      Name = 'temperature'
      DataType = ftFloat
      Precision = 5
    end
    item
      Name = 'temp_method'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'pulse'
      DataType = ftFloat
      Precision = 5
    end
    item
      Name = 'respiration'
      DataType = ftFloat
      Precision = 5
    end
    item
      Name = 'note'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'BMI'
      DataType = ftFloat
      Precision = 4
    end
    item
      Name = 'BMI_status'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'waist_circ'
      DataType = ftFloat
      Precision = 5
    end
    item
      Name = 'head_circ'
      DataType = ftFloat
      Precision = 4
    end
    item
      Name = 'oxygen_saturation'
      DataType = ftFloat
      Precision = 5
    end
    item
      Name = 'external_id'
      DataType = ftString
      Size = 20
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postform_vitalsMemTable197: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint198: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteform_vitals/?id={id}'
    Response = RESTResponse198
    Left = 1980
    Top = 1980
  end
  object RESTResponse198: TRESTResponse
    Left = 2376
    Top = 2376
  end

  object BackendEndpoint199: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getforms/?format={format}'
    Response = RESTResponse199
    Left = 1990
    Top = 1990
  end
  object RESTResponse199: TRESTResponse
    Left = 2388
    Top = 2388
  end
object getformsMemTable199: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'date'
      DataType = ftDateTime
    end
    item
      Name = 'encounter'
      DataType = ftLargeint
    end
    item
      Name = 'form_name'
      DataType = ftMemo
    end
    item
      Name = 'form_id'
      DataType = ftLargeint
    end
    item
      Name = 'pid'
      DataType = ftLargeint
    end
    item
      Name = 'user'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'groupname'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'authorized'
      DataType = ftShortint
    end
    item
      Name = 'deleted'
      DataType = ftShortint
    end
    item
      Name = 'formdir'
      DataType = ftMemo
    end
    item
      Name = 'therapy_group_id'
      DataType = ftInteger
    end
    item
      Name = 'issue_id'
      DataType = ftLargeint
    end
    item
      Name = 'provider_id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint200: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postforms/'
    Response = RESTResponse200
    Left = 2000
    Top = 2000
  end
  object RESTResponse200: TRESTResponse
    Left = 2400
    Top = 2400
  end
object postformsPostMemTable200: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'date'
      DataType = ftDateTime
    end
    item
      Name = 'encounter'
      DataType = ftLargeint
    end
    item
      Name = 'form_name'
      DataType = ftMemo
    end
    item
      Name = 'form_id'
      DataType = ftLargeint
    end
    item
      Name = 'pid'
      DataType = ftLargeint
    end
    item
      Name = 'user'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'groupname'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'authorized'
      DataType = ftShortint
    end
    item
      Name = 'deleted'
      DataType = ftShortint
    end
    item
      Name = 'formdir'
      DataType = ftMemo
    end
    item
      Name = 'therapy_group_id'
      DataType = ftInteger
    end
    item
      Name = 'issue_id'
      DataType = ftLargeint
    end
    item
      Name = 'provider_id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postformsMemTable200: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint201: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteforms/?id={id}'
    Response = RESTResponse201
    Left = 2010
    Top = 2010
  end
  object RESTResponse201: TRESTResponse
    Left = 2412
    Top = 2412
  end

  object BackendEndpoint202: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getgeo_country_reference/?format={format}'
    Response = RESTResponse202
    Left = 2020
    Top = 2020
  end
  object RESTResponse202: TRESTResponse
    Left = 2424
    Top = 2424
  end
object getgeo_country_referenceMemTable202: TFDMemTable
  FieldDefs = <
    item
      Name = 'countries_id'
      DataType = ftAutoInc
    end
    item
      Name = 'countries_name'
      DataType = ftString
      Size = 64
    end
    item
      Name = 'countries_iso_code_2'
      Attributes = [faFixed]
      DataType = ftFixedChar
      Size = 2
    end
    item
      Name = 'countries_iso_code_3'
      Attributes = [faFixed]
      DataType = ftFixedChar
      Size = 3
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint203: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postgeo_country_reference/'
    Response = RESTResponse203
    Left = 2030
    Top = 2030
  end
  object RESTResponse203: TRESTResponse
    Left = 2436
    Top = 2436
  end
object postgeo_country_referencePostMemTable203: TFDMemTable
  FieldDefs = <
    item
      Name = 'countries_id'
      DataType = ftAutoInc
    end
    item
      Name = 'countries_name'
      DataType = ftString
      Size = 64
    end
    item
      Name = 'countries_iso_code_2'
      Attributes = [faFixed]
      DataType = ftFixedChar
      Size = 2
    end
    item
      Name = 'countries_iso_code_3'
      Attributes = [faFixed]
      DataType = ftFixedChar
      Size = 3
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postgeo_country_referenceMemTable203: TFDMemTable
  FieldDefs = <
    item
      Name = 'countries_id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint204: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'countries_id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletegeo_country_reference/?countries_id={countries_id}'
    Response = RESTResponse204
    Left = 2040
    Top = 2040
  end
  object RESTResponse204: TRESTResponse
    Left = 2448
    Top = 2448
  end

  object BackendEndpoint205: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getgeo_zone_reference/?format={format}'
    Response = RESTResponse205
    Left = 2050
    Top = 2050
  end
  object RESTResponse205: TRESTResponse
    Left = 2460
    Top = 2460
  end
object getgeo_zone_referenceMemTable205: TFDMemTable
  FieldDefs = <
    item
      Name = 'zone_id'
      DataType = ftAutoInc
    end
    item
      Name = 'zone_country_id'
      DataType = ftInteger
    end
    item
      Name = 'zone_code'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'zone_name'
      DataType = ftString
      Size = 32
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint206: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postgeo_zone_reference/'
    Response = RESTResponse206
    Left = 2060
    Top = 2060
  end
  object RESTResponse206: TRESTResponse
    Left = 2472
    Top = 2472
  end
object postgeo_zone_referencePostMemTable206: TFDMemTable
  FieldDefs = <
    item
      Name = 'zone_id'
      DataType = ftAutoInc
    end
    item
      Name = 'zone_country_id'
      DataType = ftInteger
    end
    item
      Name = 'zone_code'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'zone_name'
      DataType = ftString
      Size = 32
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postgeo_zone_referenceMemTable206: TFDMemTable
  FieldDefs = <
    item
      Name = 'zone_id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint207: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'zone_id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletegeo_zone_reference/?zone_id={zone_id}'
    Response = RESTResponse207
    Left = 2070
    Top = 2070
  end
  object RESTResponse207: TRESTResponse
    Left = 2484
    Top = 2484
  end

  object BackendEndpoint208: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getglobals/?format={format}'
    Response = RESTResponse208
    Left = 2080
    Top = 2080
  end
  object RESTResponse208: TRESTResponse
    Left = 2496
    Top = 2496
  end
object getglobalsMemTable208: TFDMemTable
  FieldDefs = <
    item
      Name = 'gl_name'
      Attributes = [faRequired]
      DataType = ftString
      Size = 63
    end
    item
      Name = 'gl_index'
      DataType = ftInteger
    end
    item
      Name = 'gl_value'
      DataType = ftString
      Size = 255
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint209: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postglobals/'
    Response = RESTResponse209
    Left = 2090
    Top = 2090
  end
  object RESTResponse209: TRESTResponse
    Left = 2508
    Top = 2508
  end
object postglobalsPostMemTable209: TFDMemTable
  FieldDefs = <
    item
      Name = 'gl_name'
      Attributes = [faRequired]
      DataType = ftString
      Size = 63
    end
    item
      Name = 'gl_index'
      DataType = ftInteger
    end
    item
      Name = 'gl_value'
      DataType = ftString
      Size = 255
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postglobalsMemTable209: TFDMemTable
  FieldDefs = <
    item
      Name = 'gl_name'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint210: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'gl_name'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteglobals/?gl_name={gl_name}'
    Response = RESTResponse210
    Left = 2100
    Top = 2100
  end
  object RESTResponse210: TRESTResponse
    Left = 2520
    Top = 2520
  end

  object BackendEndpoint211: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getgprelations/?format={format}'
    Response = RESTResponse211
    Left = 2110
    Top = 2110
  end
  object RESTResponse211: TRESTResponse
    Left = 2532
    Top = 2532
  end
object getgprelationsMemTable211: TFDMemTable
  FieldDefs = <
    item
      Name = 'type1'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'id1'
      Attributes = [faRequired]
      DataType = ftLargeint
    end
    item
      Name = 'type2'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'id2'
      Attributes = [faRequired]
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint212: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postgprelations/'
    Response = RESTResponse212
    Left = 2120
    Top = 2120
  end
  object RESTResponse212: TRESTResponse
    Left = 2544
    Top = 2544
  end
object postgprelationsPostMemTable212: TFDMemTable
  FieldDefs = <
    item
      Name = 'type1'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'id1'
      Attributes = [faRequired]
      DataType = ftLargeint
    end
    item
      Name = 'type2'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'id2'
      Attributes = [faRequired]
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postgprelationsMemTable212: TFDMemTable
  FieldDefs = <
    item
      Name = 'type1'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint213: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'type1'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletegprelations/?type1={type1}'
    Response = RESTResponse213
    Left = 2130
    Top = 2130
  end
  object RESTResponse213: TRESTResponse
    Left = 2556
    Top = 2556
  end

  object BackendEndpoint214: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getgroups/?format={format}'
    Response = RESTResponse214
    Left = 2140
    Top = 2140
  end
  object RESTResponse214: TRESTResponse
    Left = 2568
    Top = 2568
  end
object getgroupsMemTable214: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'name'
      DataType = ftMemo
    end
    item
      Name = 'user'
      DataType = ftMemo
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint215: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postgroups/'
    Response = RESTResponse215
    Left = 2150
    Top = 2150
  end
  object RESTResponse215: TRESTResponse
    Left = 2580
    Top = 2580
  end
object postgroupsPostMemTable215: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'name'
      DataType = ftMemo
    end
    item
      Name = 'user'
      DataType = ftMemo
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postgroupsMemTable215: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint216: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletegroups/?id={id}'
    Response = RESTResponse216
    Left = 2160
    Top = 2160
  end
  object RESTResponse216: TRESTResponse
    Left = 2592
    Top = 2592
  end

  object BackendEndpoint217: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/gethistory_data/?format={format}'
    Response = RESTResponse217
    Left = 2170
    Top = 2170
  end
  object RESTResponse217: TRESTResponse
    Left = 2604
    Top = 2604
  end
object gethistory_dataMemTable217: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'coffee'
      DataType = ftMemo
    end
    item
      Name = 'tobacco'
      DataType = ftMemo
    end
    item
      Name = 'alcohol'
      DataType = ftMemo
    end
    item
      Name = 'sleep_patterns'
      DataType = ftMemo
    end
    item
      Name = 'exercise_patterns'
      DataType = ftMemo
    end
    item
      Name = 'seatbelt_use'
      DataType = ftMemo
    end
    item
      Name = 'counseling'
      DataType = ftMemo
    end
    item
      Name = 'hazardous_activities'
      DataType = ftMemo
    end
    item
      Name = 'recreational_drugs'
      DataType = ftMemo
    end
    item
      Name = 'last_breast_exam'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'last_mammogram'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'last_gynocological_exam'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'last_rectal_exam'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'last_prostate_exam'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'last_physical_exam'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'last_sigmoidoscopy_colonoscopy'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'last_ecg'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'last_cardiac_echo'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'last_retinal'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'last_fluvax'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'last_pneuvax'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'last_ldl'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'last_hemoglobin'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'last_psa'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'last_exam_results'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'history_mother'
      DataType = ftMemo
    end
    item
      Name = 'dc_mother'
      DataType = ftMemo
    end
    item
      Name = 'history_father'
      DataType = ftMemo
    end
    item
      Name = 'dc_father'
      DataType = ftMemo
    end
    item
      Name = 'history_siblings'
      DataType = ftMemo
    end
    item
      Name = 'dc_siblings'
      DataType = ftMemo
    end
    item
      Name = 'history_offspring'
      DataType = ftMemo
    end
    item
      Name = 'dc_offspring'
      DataType = ftMemo
    end
    item
      Name = 'history_spouse'
      DataType = ftMemo
    end
    item
      Name = 'dc_spouse'
      DataType = ftMemo
    end
    item
      Name = 'relatives_cancer'
      DataType = ftMemo
    end
    item
      Name = 'relatives_tuberculosis'
      DataType = ftMemo
    end
    item
      Name = 'relatives_diabetes'
      DataType = ftMemo
    end
    item
      Name = 'relatives_high_blood_pressure'
      DataType = ftMemo
    end
    item
      Name = 'relatives_heart_problems'
      DataType = ftMemo
    end
    item
      Name = 'relatives_stroke'
      DataType = ftMemo
    end
    item
      Name = 'relatives_epilepsy'
      DataType = ftMemo
    end
    item
      Name = 'relatives_mental_illness'
      DataType = ftMemo
    end
    item
      Name = 'relatives_suicide'
      DataType = ftMemo
    end
    item
      Name = 'cataract_surgery'
      DataType = ftDateTime
    end
    item
      Name = 'tonsillectomy'
      DataType = ftDateTime
    end
    item
      Name = 'cholecystestomy'
      DataType = ftDateTime
    end
    item
      Name = 'heart_surgery'
      DataType = ftDateTime
    end
    item
      Name = 'hysterectomy'
      DataType = ftDateTime
    end
    item
      Name = 'hernia_repair'
      DataType = ftDateTime
    end
    item
      Name = 'hip_replacement'
      DataType = ftDateTime
    end
    item
      Name = 'knee_replacement'
      DataType = ftDateTime
    end
    item
      Name = 'appendectomy'
      DataType = ftDateTime
    end
    item
      Name = 'date'
      DataType = ftDateTime
    end
    item
      Name = 'pid'
      DataType = ftLargeint
    end
    item
      Name = 'name_1'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'value_1'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'name_2'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'value_2'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'additional_history'
      DataType = ftMemo
    end
    item
      Name = 'exams'
      DataType = ftMemo
    end
    item
      Name = 'usertext11'
      DataType = ftMemo
    end
    item
      Name = 'usertext12'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'usertext13'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'usertext14'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'usertext15'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'usertext16'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'usertext17'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'usertext18'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'usertext19'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'usertext20'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'usertext21'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'usertext22'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'usertext23'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'usertext24'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'usertext25'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'usertext26'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'usertext27'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'usertext28'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'usertext29'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'usertext30'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'userdate11'
      DataType = ftDate
    end
    item
      Name = 'userdate12'
      DataType = ftDate
    end
    item
      Name = 'userdate13'
      DataType = ftDate
    end
    item
      Name = 'userdate14'
      DataType = ftDate
    end
    item
      Name = 'userdate15'
      DataType = ftDate
    end
    item
      Name = 'userarea11'
      DataType = ftMemo
    end
    item
      Name = 'userarea12'
      DataType = ftMemo
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint218: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/posthistory_data/'
    Response = RESTResponse218
    Left = 2180
    Top = 2180
  end
  object RESTResponse218: TRESTResponse
    Left = 2616
    Top = 2616
  end
object posthistory_dataPostMemTable218: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'coffee'
      DataType = ftMemo
    end
    item
      Name = 'tobacco'
      DataType = ftMemo
    end
    item
      Name = 'alcohol'
      DataType = ftMemo
    end
    item
      Name = 'sleep_patterns'
      DataType = ftMemo
    end
    item
      Name = 'exercise_patterns'
      DataType = ftMemo
    end
    item
      Name = 'seatbelt_use'
      DataType = ftMemo
    end
    item
      Name = 'counseling'
      DataType = ftMemo
    end
    item
      Name = 'hazardous_activities'
      DataType = ftMemo
    end
    item
      Name = 'recreational_drugs'
      DataType = ftMemo
    end
    item
      Name = 'last_breast_exam'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'last_mammogram'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'last_gynocological_exam'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'last_rectal_exam'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'last_prostate_exam'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'last_physical_exam'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'last_sigmoidoscopy_colonoscopy'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'last_ecg'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'last_cardiac_echo'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'last_retinal'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'last_fluvax'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'last_pneuvax'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'last_ldl'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'last_hemoglobin'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'last_psa'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'last_exam_results'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'history_mother'
      DataType = ftMemo
    end
    item
      Name = 'dc_mother'
      DataType = ftMemo
    end
    item
      Name = 'history_father'
      DataType = ftMemo
    end
    item
      Name = 'dc_father'
      DataType = ftMemo
    end
    item
      Name = 'history_siblings'
      DataType = ftMemo
    end
    item
      Name = 'dc_siblings'
      DataType = ftMemo
    end
    item
      Name = 'history_offspring'
      DataType = ftMemo
    end
    item
      Name = 'dc_offspring'
      DataType = ftMemo
    end
    item
      Name = 'history_spouse'
      DataType = ftMemo
    end
    item
      Name = 'dc_spouse'
      DataType = ftMemo
    end
    item
      Name = 'relatives_cancer'
      DataType = ftMemo
    end
    item
      Name = 'relatives_tuberculosis'
      DataType = ftMemo
    end
    item
      Name = 'relatives_diabetes'
      DataType = ftMemo
    end
    item
      Name = 'relatives_high_blood_pressure'
      DataType = ftMemo
    end
    item
      Name = 'relatives_heart_problems'
      DataType = ftMemo
    end
    item
      Name = 'relatives_stroke'
      DataType = ftMemo
    end
    item
      Name = 'relatives_epilepsy'
      DataType = ftMemo
    end
    item
      Name = 'relatives_mental_illness'
      DataType = ftMemo
    end
    item
      Name = 'relatives_suicide'
      DataType = ftMemo
    end
    item
      Name = 'cataract_surgery'
      DataType = ftDateTime
    end
    item
      Name = 'tonsillectomy'
      DataType = ftDateTime
    end
    item
      Name = 'cholecystestomy'
      DataType = ftDateTime
    end
    item
      Name = 'heart_surgery'
      DataType = ftDateTime
    end
    item
      Name = 'hysterectomy'
      DataType = ftDateTime
    end
    item
      Name = 'hernia_repair'
      DataType = ftDateTime
    end
    item
      Name = 'hip_replacement'
      DataType = ftDateTime
    end
    item
      Name = 'knee_replacement'
      DataType = ftDateTime
    end
    item
      Name = 'appendectomy'
      DataType = ftDateTime
    end
    item
      Name = 'date'
      DataType = ftDateTime
    end
    item
      Name = 'pid'
      DataType = ftLargeint
    end
    item
      Name = 'name_1'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'value_1'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'name_2'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'value_2'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'additional_history'
      DataType = ftMemo
    end
    item
      Name = 'exams'
      DataType = ftMemo
    end
    item
      Name = 'usertext11'
      DataType = ftMemo
    end
    item
      Name = 'usertext12'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'usertext13'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'usertext14'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'usertext15'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'usertext16'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'usertext17'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'usertext18'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'usertext19'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'usertext20'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'usertext21'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'usertext22'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'usertext23'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'usertext24'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'usertext25'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'usertext26'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'usertext27'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'usertext28'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'usertext29'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'usertext30'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'userdate11'
      DataType = ftDate
    end
    item
      Name = 'userdate12'
      DataType = ftDate
    end
    item
      Name = 'userdate13'
      DataType = ftDate
    end
    item
      Name = 'userdate14'
      DataType = ftDate
    end
    item
      Name = 'userdate15'
      DataType = ftDate
    end
    item
      Name = 'userarea11'
      DataType = ftMemo
    end
    item
      Name = 'userarea12'
      DataType = ftMemo
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object posthistory_dataMemTable218: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint219: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletehistory_data/?id={id}'
    Response = RESTResponse219
    Left = 2190
    Top = 2190
  end
  object RESTResponse219: TRESTResponse
    Left = 2628
    Top = 2628
  end

  object BackendEndpoint220: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/geticd10_dx_order_code/?format={format}'
    Response = RESTResponse220
    Left = 2200
    Top = 2200
  end
  object RESTResponse220: TRESTResponse
    Left = 2640
    Top = 2640
  end
object geticd10_dx_order_codeMemTable220: TFDMemTable
  FieldDefs = <
    item
      Name = 'dx_id'
      DataType = ftLargeint
    end
    item
      Name = 'dx_code'
      DataType = ftString
      Size = 7
    end
    item
      Name = 'formatted_dx_code'
      DataType = ftString
      Size = 10
    end
    item
      Name = 'valid_for_coding'
      Attributes = [faFixed]
      DataType = ftFixedChar
      Size = 1
    end
    item
      Name = 'short_desc'
      DataType = ftString
      Size = 60
    end
    item
      Name = 'long_desc'
      DataType = ftString
      Size = 300
    end
    item
      Name = 'active'
      DataType = ftShortint
    end
    item
      Name = 'revision'
      DataType = ftInteger
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint221: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/geticd10_gem_dx_10_9/?format={format}'
    Response = RESTResponse221
    Left = 2210
    Top = 2210
  end
  object RESTResponse221: TRESTResponse
    Left = 2652
    Top = 2652
  end
object geticd10_gem_dx_10_9MemTable221: TFDMemTable
  FieldDefs = <
    item
      Name = 'map_id'
      DataType = ftLargeint
    end
    item
      Name = 'dx_icd10_source'
      DataType = ftString
      Size = 7
    end
    item
      Name = 'dx_icd9_target'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'flags'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'active'
      DataType = ftShortint
    end
    item
      Name = 'revision'
      DataType = ftInteger
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint222: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/geticd10_gem_dx_9_10/?format={format}'
    Response = RESTResponse222
    Left = 2220
    Top = 2220
  end
  object RESTResponse222: TRESTResponse
    Left = 2664
    Top = 2664
  end
object geticd10_gem_dx_9_10MemTable222: TFDMemTable
  FieldDefs = <
    item
      Name = 'map_id'
      DataType = ftLargeint
    end
    item
      Name = 'dx_icd9_source'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'dx_icd10_target'
      DataType = ftString
      Size = 7
    end
    item
      Name = 'flags'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'active'
      DataType = ftShortint
    end
    item
      Name = 'revision'
      DataType = ftInteger
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint223: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/geticd10_gem_pcs_10_9/?format={format}'
    Response = RESTResponse223
    Left = 2230
    Top = 2230
  end
  object RESTResponse223: TRESTResponse
    Left = 2676
    Top = 2676
  end
object geticd10_gem_pcs_10_9MemTable223: TFDMemTable
  FieldDefs = <
    item
      Name = 'map_id'
      DataType = ftLargeint
    end
    item
      Name = 'pcs_icd10_source'
      DataType = ftString
      Size = 7
    end
    item
      Name = 'pcs_icd9_target'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'flags'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'active'
      DataType = ftShortint
    end
    item
      Name = 'revision'
      DataType = ftInteger
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint224: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/geticd10_gem_pcs_9_10/?format={format}'
    Response = RESTResponse224
    Left = 2240
    Top = 2240
  end
  object RESTResponse224: TRESTResponse
    Left = 2688
    Top = 2688
  end
object geticd10_gem_pcs_9_10MemTable224: TFDMemTable
  FieldDefs = <
    item
      Name = 'map_id'
      DataType = ftLargeint
    end
    item
      Name = 'pcs_icd9_source'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'pcs_icd10_target'
      DataType = ftString
      Size = 7
    end
    item
      Name = 'flags'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'active'
      DataType = ftShortint
    end
    item
      Name = 'revision'
      DataType = ftInteger
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint225: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/geticd10_pcs_order_code/?format={format}'
    Response = RESTResponse225
    Left = 2250
    Top = 2250
  end
  object RESTResponse225: TRESTResponse
    Left = 2700
    Top = 2700
  end
object geticd10_pcs_order_codeMemTable225: TFDMemTable
  FieldDefs = <
    item
      Name = 'pcs_id'
      DataType = ftLargeint
    end
    item
      Name = 'pcs_code'
      DataType = ftString
      Size = 7
    end
    item
      Name = 'valid_for_coding'
      Attributes = [faFixed]
      DataType = ftFixedChar
      Size = 1
    end
    item
      Name = 'short_desc'
      DataType = ftString
      Size = 60
    end
    item
      Name = 'long_desc'
      DataType = ftString
      Size = 300
    end
    item
      Name = 'active'
      DataType = ftShortint
    end
    item
      Name = 'revision'
      DataType = ftInteger
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint226: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/geticd10_reimbr_dx_9_10/?format={format}'
    Response = RESTResponse226
    Left = 2260
    Top = 2260
  end
  object RESTResponse226: TRESTResponse
    Left = 2712
    Top = 2712
  end
object geticd10_reimbr_dx_9_10MemTable226: TFDMemTable
  FieldDefs = <
    item
      Name = 'map_id'
      DataType = ftLargeint
    end
    item
      Name = 'code'
      DataType = ftString
      Size = 8
    end
    item
      Name = 'code_cnt'
      DataType = ftShortint
    end
    item
      Name = 'ICD9_01'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'ICD9_02'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'ICD9_03'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'ICD9_04'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'ICD9_05'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'ICD9_06'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'active'
      DataType = ftShortint
    end
    item
      Name = 'revision'
      DataType = ftInteger
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint227: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/geticd10_reimbr_pcs_9_10/?format={format}'
    Response = RESTResponse227
    Left = 2270
    Top = 2270
  end
  object RESTResponse227: TRESTResponse
    Left = 2724
    Top = 2724
  end
object geticd10_reimbr_pcs_9_10MemTable227: TFDMemTable
  FieldDefs = <
    item
      Name = 'map_id'
      DataType = ftLargeint
    end
    item
      Name = 'code'
      DataType = ftString
      Size = 8
    end
    item
      Name = 'code_cnt'
      DataType = ftShortint
    end
    item
      Name = 'ICD9_01'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'ICD9_02'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'ICD9_03'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'ICD9_04'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'ICD9_05'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'ICD9_06'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'active'
      DataType = ftShortint
    end
    item
      Name = 'revision'
      DataType = ftInteger
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint228: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/geticd9_dx_code/?format={format}'
    Response = RESTResponse228
    Left = 2280
    Top = 2280
  end
  object RESTResponse228: TRESTResponse
    Left = 2736
    Top = 2736
  end
object geticd9_dx_codeMemTable228: TFDMemTable
  FieldDefs = <
    item
      Name = 'dx_id'
      DataType = ftLargeint
    end
    item
      Name = 'dx_code'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'formatted_dx_code'
      DataType = ftString
      Size = 6
    end
    item
      Name = 'short_desc'
      DataType = ftString
      Size = 60
    end
    item
      Name = 'long_desc'
      DataType = ftString
      Size = 300
    end
    item
      Name = 'active'
      DataType = ftShortint
    end
    item
      Name = 'revision'
      DataType = ftInteger
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint229: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/geticd9_dx_long_code/?format={format}'
    Response = RESTResponse229
    Left = 2290
    Top = 2290
  end
  object RESTResponse229: TRESTResponse
    Left = 2748
    Top = 2748
  end
object geticd9_dx_long_codeMemTable229: TFDMemTable
  FieldDefs = <
    item
      Name = 'dx_id'
      DataType = ftLargeint
    end
    item
      Name = 'dx_code'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'long_desc'
      DataType = ftString
      Size = 300
    end
    item
      Name = 'active'
      DataType = ftShortint
    end
    item
      Name = 'revision'
      DataType = ftInteger
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint230: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/geticd9_sg_code/?format={format}'
    Response = RESTResponse230
    Left = 2300
    Top = 2300
  end
  object RESTResponse230: TRESTResponse
    Left = 2760
    Top = 2760
  end
object geticd9_sg_codeMemTable230: TFDMemTable
  FieldDefs = <
    item
      Name = 'sg_id'
      DataType = ftLargeint
    end
    item
      Name = 'sg_code'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'formatted_sg_code'
      DataType = ftString
      Size = 6
    end
    item
      Name = 'short_desc'
      DataType = ftString
      Size = 60
    end
    item
      Name = 'long_desc'
      DataType = ftString
      Size = 300
    end
    item
      Name = 'active'
      DataType = ftShortint
    end
    item
      Name = 'revision'
      DataType = ftInteger
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint231: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/geticd9_sg_long_code/?format={format}'
    Response = RESTResponse231
    Left = 2310
    Top = 2310
  end
  object RESTResponse231: TRESTResponse
    Left = 2772
    Top = 2772
  end
object geticd9_sg_long_codeMemTable231: TFDMemTable
  FieldDefs = <
    item
      Name = 'sq_id'
      DataType = ftLargeint
    end
    item
      Name = 'sg_code'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'long_desc'
      DataType = ftString
      Size = 300
    end
    item
      Name = 'active'
      DataType = ftShortint
    end
    item
      Name = 'revision'
      DataType = ftInteger
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint232: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getimmunization_observation/?format={format}'
    Response = RESTResponse232
    Left = 2320
    Top = 2320
  end
  object RESTResponse232: TRESTResponse
    Left = 2784
    Top = 2784
  end
object getimmunization_observationMemTable232: TFDMemTable
  FieldDefs = <
    item
      Name = 'imo_id'
      DataType = ftAutoInc
    end
    item
      Name = 'imo_im_id'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'imo_pid'
      DataType = ftInteger
    end
    item
      Name = 'imo_criteria'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'imo_criteria_value'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'imo_user'
      DataType = ftInteger
    end
    item
      Name = 'imo_code'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'imo_codetext'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'imo_codetype'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'imo_vis_date_published'
      DataType = ftDate
    end
    item
      Name = 'imo_vis_date_presented'
      DataType = ftDate
    end
    item
      Name = 'imo_date_observation'
      DataType = ftTimeStamp
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint233: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postimmunization_observation/'
    Response = RESTResponse233
    Left = 2330
    Top = 2330
  end
  object RESTResponse233: TRESTResponse
    Left = 2796
    Top = 2796
  end
object postimmunization_observationPostMemTable233: TFDMemTable
  FieldDefs = <
    item
      Name = 'imo_id'
      DataType = ftAutoInc
    end
    item
      Name = 'imo_im_id'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'imo_pid'
      DataType = ftInteger
    end
    item
      Name = 'imo_criteria'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'imo_criteria_value'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'imo_user'
      DataType = ftInteger
    end
    item
      Name = 'imo_code'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'imo_codetext'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'imo_codetype'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'imo_vis_date_published'
      DataType = ftDate
    end
    item
      Name = 'imo_vis_date_presented'
      DataType = ftDate
    end
    item
      Name = 'imo_date_observation'
      DataType = ftTimeStamp
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postimmunization_observationMemTable233: TFDMemTable
  FieldDefs = <
    item
      Name = 'imo_id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint234: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'imo_id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteimmunization_observation/?imo_id={imo_id}'
    Response = RESTResponse234
    Left = 2340
    Top = 2340
  end
  object RESTResponse234: TRESTResponse
    Left = 2808
    Top = 2808
  end

  object BackendEndpoint235: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getimmunizations/?format={format}'
    Response = RESTResponse235
    Left = 2350
    Top = 2350
  end
  object RESTResponse235: TRESTResponse
    Left = 2820
    Top = 2820
  end
object getimmunizationsMemTable235: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'patient_id'
      DataType = ftLargeint
    end
    item
      Name = 'administered_date'
      DataType = ftDateTime
    end
    item
      Name = 'immunization_id'
      DataType = ftInteger
    end
    item
      Name = 'cvx_code'
      DataType = ftString
      Size = 10
    end
    item
      Name = 'manufacturer'
      DataType = ftString
      Size = 100
    end
    item
      Name = 'lot_number'
      DataType = ftString
      Size = 50
    end
    item
      Name = 'administered_by_id'
      DataType = ftLargeint
    end
    item
      Name = 'administered_by'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'education_date'
      DataType = ftDate
    end
    item
      Name = 'vis_date'
      DataType = ftDate
    end
    item
      Name = 'note'
      DataType = ftMemo
    end
    item
      Name = 'create_date'
      DataType = ftDateTime
    end
    item
      Name = 'update_date'
      DataType = ftTimeStamp
    end
    item
      Name = 'created_by'
      DataType = ftLargeint
    end
    item
      Name = 'updated_by'
      DataType = ftLargeint
    end
    item
      Name = 'amount_administered'
      DataType = ftSingle
      Precision = 12
    end
    item
      Name = 'amount_administered_unit'
      DataType = ftString
      Size = 50
    end
    item
      Name = 'expiration_date'
      DataType = ftDate
    end
    item
      Name = 'route'
      DataType = ftString
      Size = 100
    end
    item
      Name = 'administration_site'
      DataType = ftString
      Size = 100
    end
    item
      Name = 'added_erroneously'
      DataType = ftBoolean
    end
    item
      Name = 'external_id'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'completion_status'
      DataType = ftString
      Size = 50
    end
    item
      Name = 'information_source'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'refusal_reason'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'ordering_provider'
      DataType = ftInteger
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint236: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postimmunizations/'
    Response = RESTResponse236
    Left = 2360
    Top = 2360
  end
  object RESTResponse236: TRESTResponse
    Left = 2832
    Top = 2832
  end
object postimmunizationsPostMemTable236: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'patient_id'
      DataType = ftLargeint
    end
    item
      Name = 'administered_date'
      DataType = ftDateTime
    end
    item
      Name = 'immunization_id'
      DataType = ftInteger
    end
    item
      Name = 'cvx_code'
      DataType = ftString
      Size = 10
    end
    item
      Name = 'manufacturer'
      DataType = ftString
      Size = 100
    end
    item
      Name = 'lot_number'
      DataType = ftString
      Size = 50
    end
    item
      Name = 'administered_by_id'
      DataType = ftLargeint
    end
    item
      Name = 'administered_by'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'education_date'
      DataType = ftDate
    end
    item
      Name = 'vis_date'
      DataType = ftDate
    end
    item
      Name = 'note'
      DataType = ftMemo
    end
    item
      Name = 'create_date'
      DataType = ftDateTime
    end
    item
      Name = 'update_date'
      DataType = ftTimeStamp
    end
    item
      Name = 'created_by'
      DataType = ftLargeint
    end
    item
      Name = 'updated_by'
      DataType = ftLargeint
    end
    item
      Name = 'amount_administered'
      DataType = ftSingle
      Precision = 12
    end
    item
      Name = 'amount_administered_unit'
      DataType = ftString
      Size = 50
    end
    item
      Name = 'expiration_date'
      DataType = ftDate
    end
    item
      Name = 'route'
      DataType = ftString
      Size = 100
    end
    item
      Name = 'administration_site'
      DataType = ftString
      Size = 100
    end
    item
      Name = 'added_erroneously'
      DataType = ftBoolean
    end
    item
      Name = 'external_id'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'completion_status'
      DataType = ftString
      Size = 50
    end
    item
      Name = 'information_source'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'refusal_reason'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'ordering_provider'
      DataType = ftInteger
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postimmunizationsMemTable236: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint237: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteimmunizations/?id={id}'
    Response = RESTResponse237
    Left = 2370
    Top = 2370
  end
  object RESTResponse237: TRESTResponse
    Left = 2844
    Top = 2844
  end

  object BackendEndpoint238: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getinsurance_companies/?format={format}'
    Response = RESTResponse238
    Left = 2380
    Top = 2380
  end
  object RESTResponse238: TRESTResponse
    Left = 2856
    Top = 2856
  end
object getinsurance_companiesMemTable238: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftInteger
    end
    item
      Name = 'name'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'attn'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'cms_id'
      DataType = ftString
      Size = 15
    end
    item
      Name = 'ins_type_code'
      DataType = ftShortint
    end
    item
      Name = 'x12_receiver_id'
      DataType = ftString
      Size = 25
    end
    item
      Name = 'x12_default_partner_id'
      DataType = ftInteger
    end
    item
      Name = 'alt_cms_id'
      DataType = ftString
      Size = 15
    end
    item
      Name = 'inactive'
      DataType = ftInteger
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint239: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postinsurance_companies/'
    Response = RESTResponse239
    Left = 2390
    Top = 2390
  end
  object RESTResponse239: TRESTResponse
    Left = 2868
    Top = 2868
  end
object postinsurance_companiesPostMemTable239: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftInteger
    end
    item
      Name = 'name'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'attn'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'cms_id'
      DataType = ftString
      Size = 15
    end
    item
      Name = 'ins_type_code'
      DataType = ftShortint
    end
    item
      Name = 'x12_receiver_id'
      DataType = ftString
      Size = 25
    end
    item
      Name = 'x12_default_partner_id'
      DataType = ftInteger
    end
    item
      Name = 'alt_cms_id'
      DataType = ftString
      Size = 15
    end
    item
      Name = 'inactive'
      DataType = ftInteger
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postinsurance_companiesMemTable239: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint240: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteinsurance_companies/?id={id}'
    Response = RESTResponse240
    Left = 2400
    Top = 2400
  end
  object RESTResponse240: TRESTResponse
    Left = 2880
    Top = 2880
  end

  object BackendEndpoint241: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getinsurance_data/?format={format}'
    Response = RESTResponse241
    Left = 2410
    Top = 2410
  end
  object RESTResponse241: TRESTResponse
    Left = 2892
    Top = 2892
  end
object getinsurance_dataMemTable241: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'type'
      Attributes = [faFixed]
      DataType = ftFixedChar
      Size = 9
    end
    item
      Name = 'provider'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'plan_name'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'policy_number'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'group_number'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'subscriber_lname'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'subscriber_mname'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'subscriber_fname'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'subscriber_relationship'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'subscriber_ss'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'subscriber_DOB'
      DataType = ftDate
    end
    item
      Name = 'subscriber_street'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'subscriber_postal_code'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'subscriber_city'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'subscriber_state'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'subscriber_country'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'subscriber_phone'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'subscriber_employer'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'subscriber_employer_street'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'subscriber_employer_postal_code'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'subscriber_employer_state'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'subscriber_employer_country'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'subscriber_employer_city'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'copay'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'date'
      DataType = ftDate
    end
    item
      Name = 'pid'
      DataType = ftLargeint
    end
    item
      Name = 'subscriber_sex'
      DataType = ftString
      Size = 25
    end
    item
      Name = 'accept_assignment'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'policy_type'
      DataType = ftString
      Size = 25
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint242: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postinsurance_data/'
    Response = RESTResponse242
    Left = 2420
    Top = 2420
  end
  object RESTResponse242: TRESTResponse
    Left = 2904
    Top = 2904
  end
object postinsurance_dataPostMemTable242: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'type'
      Attributes = [faFixed]
      DataType = ftFixedChar
      Size = 9
    end
    item
      Name = 'provider'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'plan_name'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'policy_number'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'group_number'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'subscriber_lname'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'subscriber_mname'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'subscriber_fname'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'subscriber_relationship'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'subscriber_ss'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'subscriber_DOB'
      DataType = ftDate
    end
    item
      Name = 'subscriber_street'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'subscriber_postal_code'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'subscriber_city'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'subscriber_state'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'subscriber_country'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'subscriber_phone'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'subscriber_employer'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'subscriber_employer_street'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'subscriber_employer_postal_code'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'subscriber_employer_state'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'subscriber_employer_country'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'subscriber_employer_city'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'copay'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'date'
      DataType = ftDate
    end
    item
      Name = 'pid'
      DataType = ftLargeint
    end
    item
      Name = 'subscriber_sex'
      DataType = ftString
      Size = 25
    end
    item
      Name = 'accept_assignment'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'policy_type'
      DataType = ftString
      Size = 25
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postinsurance_dataMemTable242: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint243: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteinsurance_data/?id={id}'
    Response = RESTResponse243
    Left = 2430
    Top = 2430
  end
  object RESTResponse243: TRESTResponse
    Left = 2916
    Top = 2916
  end

  object BackendEndpoint244: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getinsurance_numbers/?format={format}'
    Response = RESTResponse244
    Left = 2440
    Top = 2440
  end
  object RESTResponse244: TRESTResponse
    Left = 2928
    Top = 2928
  end
object getinsurance_numbersMemTable244: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftInteger
    end
    item
      Name = 'provider_id'
      DataType = ftInteger
    end
    item
      Name = 'insurance_company_id'
      DataType = ftInteger
    end
    item
      Name = 'provider_number'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'rendering_provider_number'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'group_number'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'provider_number_type'
      DataType = ftString
      Size = 4
    end
    item
      Name = 'rendering_provider_number_type'
      DataType = ftString
      Size = 4
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint245: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postinsurance_numbers/'
    Response = RESTResponse245
    Left = 2450
    Top = 2450
  end
  object RESTResponse245: TRESTResponse
    Left = 2940
    Top = 2940
  end
object postinsurance_numbersPostMemTable245: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftInteger
    end
    item
      Name = 'provider_id'
      DataType = ftInteger
    end
    item
      Name = 'insurance_company_id'
      DataType = ftInteger
    end
    item
      Name = 'provider_number'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'rendering_provider_number'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'group_number'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'provider_number_type'
      DataType = ftString
      Size = 4
    end
    item
      Name = 'rendering_provider_number_type'
      DataType = ftString
      Size = 4
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postinsurance_numbersMemTable245: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint246: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteinsurance_numbers/?id={id}'
    Response = RESTResponse246
    Left = 2460
    Top = 2460
  end
  object RESTResponse246: TRESTResponse
    Left = 2952
    Top = 2952
  end

  object BackendEndpoint247: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getissue_encounter/?format={format}'
    Response = RESTResponse247
    Left = 2470
    Top = 2470
  end
  object RESTResponse247: TRESTResponse
    Left = 2964
    Top = 2964
  end
object getissue_encounterMemTable247: TFDMemTable
  FieldDefs = <
    item
      Name = 'pid'
      Attributes = [faRequired]
      DataType = ftLargeint
    end
    item
      Name = 'list_id'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'encounter'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'resolved'
      Attributes = [faRequired]
      DataType = ftBoolean
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint248: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postissue_encounter/'
    Response = RESTResponse248
    Left = 2480
    Top = 2480
  end
  object RESTResponse248: TRESTResponse
    Left = 2976
    Top = 2976
  end
object postissue_encounterPostMemTable248: TFDMemTable
  FieldDefs = <
    item
      Name = 'pid'
      Attributes = [faRequired]
      DataType = ftLargeint
    end
    item
      Name = 'list_id'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'encounter'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'resolved'
      Attributes = [faRequired]
      DataType = ftBoolean
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postissue_encounterMemTable248: TFDMemTable
  FieldDefs = <
    item
      Name = 'pid'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint249: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'pid'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteissue_encounter/?pid={pid}'
    Response = RESTResponse249
    Left = 2490
    Top = 2490
  end
  object RESTResponse249: TRESTResponse
    Left = 2988
    Top = 2988
  end

  object BackendEndpoint250: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getissue_types/?format={format}'
    Response = RESTResponse250
    Left = 2500
    Top = 2500
  end
  object RESTResponse250: TRESTResponse
    Left = 3000
    Top = 3000
  end
object getissue_typesMemTable250: TFDMemTable
  FieldDefs = <
    item
      Name = 'active'
      DataType = ftBoolean
    end
    item
      Name = 'category'
      DataType = ftString
      Size = 75
    end
    item
      Name = 'type'
      DataType = ftString
      Size = 75
    end
    item
      Name = 'plural'
      DataType = ftString
      Size = 75
    end
    item
      Name = 'singular'
      DataType = ftString
      Size = 75
    end
    item
      Name = 'abbreviation'
      DataType = ftString
      Size = 75
    end
    item
      Name = 'style'
      DataType = ftSmallint
    end
    item
      Name = 'force_show'
      DataType = ftSmallint
    end
    item
      Name = 'ordering'
      DataType = ftInteger
    end
    item
      Name = 'aco_spec'
      DataType = ftString
      Size = 63
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint251: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postissue_types/'
    Response = RESTResponse251
    Left = 2510
    Top = 2510
  end
  object RESTResponse251: TRESTResponse
    Left = 3012
    Top = 3012
  end
object postissue_typesPostMemTable251: TFDMemTable
  FieldDefs = <
    item
      Name = 'active'
      DataType = ftBoolean
    end
    item
      Name = 'category'
      DataType = ftString
      Size = 75
    end
    item
      Name = 'type'
      DataType = ftString
      Size = 75
    end
    item
      Name = 'plural'
      DataType = ftString
      Size = 75
    end
    item
      Name = 'singular'
      DataType = ftString
      Size = 75
    end
    item
      Name = 'abbreviation'
      DataType = ftString
      Size = 75
    end
    item
      Name = 'style'
      DataType = ftSmallint
    end
    item
      Name = 'force_show'
      DataType = ftSmallint
    end
    item
      Name = 'ordering'
      DataType = ftInteger
    end
    item
      Name = 'aco_spec'
      DataType = ftString
      Size = 63
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postissue_typesMemTable251: TFDMemTable
  FieldDefs = <
    item
      Name = 'category'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint252: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'category'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteissue_types/?category={category}'
    Response = RESTResponse252
    Left = 2520
    Top = 2520
  end
  object RESTResponse252: TRESTResponse
    Left = 3024
    Top = 3024
  end

  object BackendEndpoint253: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/get_keys_/?format={format}'
    Response = RESTResponse253
    Left = 2530
    Top = 2530
  end
  object RESTResponse253: TRESTResponse
    Left = 3036
    Top = 3036
  end
object get_keys_MemTable253: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'name'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'value'
      DataType = ftMemo
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint254: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/post_keys_/'
    Response = RESTResponse254
    Left = 2540
    Top = 2540
  end
  object RESTResponse254: TRESTResponse
    Left = 3048
    Top = 3048
  end
object post_keys_PostMemTable254: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'name'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'value'
      DataType = ftMemo
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object post_keys_MemTable254: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint255: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/delete_keys_/?id={id}'
    Response = RESTResponse255
    Left = 2550
    Top = 2550
  end
  object RESTResponse255: TRESTResponse
    Left = 3060
    Top = 3060
  end

  object BackendEndpoint256: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getlang_constants/?format={format}'
    Response = RESTResponse256
    Left = 2560
    Top = 2560
  end
  object RESTResponse256: TRESTResponse
    Left = 3072
    Top = 3072
  end
object getlang_constantsMemTable256: TFDMemTable
  FieldDefs = <
    item
      Name = 'cons_id'
      DataType = ftAutoInc
    end
    item
      Name = 'constant_name'
      DataType = ftMemo
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint257: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getlang_custom/?format={format}'
    Response = RESTResponse257
    Left = 2570
    Top = 2570
  end
  object RESTResponse257: TRESTResponse
    Left = 3084
    Top = 3084
  end
object getlang_customMemTable257: TFDMemTable
  FieldDefs = <
    item
      Name = 'lang_description'
      DataType = ftString
      Size = 100
    end
    item
      Name = 'lang_code'
      Attributes = [faFixed]
      DataType = ftFixedChar
      Size = 2
    end
    item
      Name = 'constant_name'
      DataType = ftMemo
    end
    item
      Name = 'definition'
      DataType = ftMemo
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint258: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getlang_definitions/?format={format}'
    Response = RESTResponse258
    Left = 2580
    Top = 2580
  end
  object RESTResponse258: TRESTResponse
    Left = 3096
    Top = 3096
  end
object getlang_definitionsMemTable258: TFDMemTable
  FieldDefs = <
    item
      Name = 'def_id'
      DataType = ftAutoInc
    end
    item
      Name = 'cons_id'
      DataType = ftInteger
    end
    item
      Name = 'lang_id'
      DataType = ftInteger
    end
    item
      Name = 'definition'
      DataType = ftMemo
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint259: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getlang_languages/?format={format}'
    Response = RESTResponse259
    Left = 2590
    Top = 2590
  end
  object RESTResponse259: TRESTResponse
    Left = 3108
    Top = 3108
  end
object getlang_languagesMemTable259: TFDMemTable
  FieldDefs = <
    item
      Name = 'lang_id'
      DataType = ftAutoInc
    end
    item
      Name = 'lang_code'
      Attributes = [faFixed]
      DataType = ftFixedChar
      Size = 2
    end
    item
      Name = 'lang_description'
      DataType = ftString
      Size = 100
    end
    item
      Name = 'lang_is_rtl'
      DataType = ftShortint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint260: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getlayout_group_properties/?format={format}'
    Response = RESTResponse260
    Left = 2600
    Top = 2600
  end
  object RESTResponse260: TRESTResponse
    Left = 3120
    Top = 3120
  end
object getlayout_group_propertiesMemTable260: TFDMemTable
  FieldDefs = <
    item
      Name = 'grp_form_id'
      Attributes = [faRequired]
      DataType = ftString
      Size = 31
    end
    item
      Name = 'grp_group_id'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'grp_title'
      DataType = ftString
      Size = 63
    end
    item
      Name = 'grp_subtitle'
      DataType = ftString
      Size = 63
    end
    item
      Name = 'grp_mapping'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'grp_seq'
      DataType = ftInteger
    end
    item
      Name = 'grp_activity'
      DataType = ftBoolean
    end
    item
      Name = 'grp_repeats'
      DataType = ftInteger
    end
    item
      Name = 'grp_columns'
      DataType = ftInteger
    end
    item
      Name = 'grp_size'
      DataType = ftInteger
    end
    item
      Name = 'grp_issue_type'
      DataType = ftString
      Size = 75
    end
    item
      Name = 'grp_aco_spec'
      DataType = ftString
      Size = 63
    end
    item
      Name = 'grp_services'
      DataType = ftString
      Size = 4095
    end
    item
      Name = 'grp_products'
      DataType = ftString
      Size = 4095
    end
    item
      Name = 'grp_diags'
      DataType = ftString
      Size = 4095
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint261: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postlayout_group_properties/'
    Response = RESTResponse261
    Left = 2610
    Top = 2610
  end
  object RESTResponse261: TRESTResponse
    Left = 3132
    Top = 3132
  end
object postlayout_group_propertiesPostMemTable261: TFDMemTable
  FieldDefs = <
    item
      Name = 'grp_form_id'
      Attributes = [faRequired]
      DataType = ftString
      Size = 31
    end
    item
      Name = 'grp_group_id'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'grp_title'
      DataType = ftString
      Size = 63
    end
    item
      Name = 'grp_subtitle'
      DataType = ftString
      Size = 63
    end
    item
      Name = 'grp_mapping'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'grp_seq'
      DataType = ftInteger
    end
    item
      Name = 'grp_activity'
      DataType = ftBoolean
    end
    item
      Name = 'grp_repeats'
      DataType = ftInteger
    end
    item
      Name = 'grp_columns'
      DataType = ftInteger
    end
    item
      Name = 'grp_size'
      DataType = ftInteger
    end
    item
      Name = 'grp_issue_type'
      DataType = ftString
      Size = 75
    end
    item
      Name = 'grp_aco_spec'
      DataType = ftString
      Size = 63
    end
    item
      Name = 'grp_services'
      DataType = ftString
      Size = 4095
    end
    item
      Name = 'grp_products'
      DataType = ftString
      Size = 4095
    end
    item
      Name = 'grp_diags'
      DataType = ftString
      Size = 4095
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postlayout_group_propertiesMemTable261: TFDMemTable
  FieldDefs = <
    item
      Name = 'grp_form_id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint262: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'grp_form_id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletelayout_group_properties/?grp_form_id={grp_form_id}'
    Response = RESTResponse262
    Left = 2620
    Top = 2620
  end
  object RESTResponse262: TRESTResponse
    Left = 3144
    Top = 3144
  end

  object BackendEndpoint263: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getlayout_options/?format={format}'
    Response = RESTResponse263
    Left = 2630
    Top = 2630
  end
  object RESTResponse263: TRESTResponse
    Left = 3156
    Top = 3156
  end
object getlayout_optionsMemTable263: TFDMemTable
  FieldDefs = <
    item
      Name = 'form_id'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'field_id'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'group_id'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'title'
      DataType = ftString
      Size = 63
    end
    item
      Name = 'seq'
      DataType = ftInteger
    end
    item
      Name = 'data_type'
      DataType = ftShortint
    end
    item
      Name = 'uor'
      DataType = ftBoolean
    end
    item
      Name = 'fld_length'
      DataType = ftInteger
    end
    item
      Name = 'max_length'
      DataType = ftInteger
    end
    item
      Name = 'list_id'
      DataType = ftString
      Size = 100
    end
    item
      Name = 'titlecols'
      DataType = ftShortint
    end
    item
      Name = 'datacols'
      DataType = ftShortint
    end
    item
      Name = 'default_value'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'edit_options'
      DataType = ftString
      Size = 36
    end
    item
      Name = 'description'
      DataType = ftMemo
    end
    item
      Name = 'fld_rows'
      DataType = ftInteger
    end
    item
      Name = 'list_backup_id'
      DataType = ftString
      Size = 100
    end
    item
      Name = 'source'
      Attributes = [faFixed]
      DataType = ftFixedChar
      Size = 1
    end
    item
      Name = 'conditions'
      DataType = ftMemo
    end
    item
      Name = 'validation'
      DataType = ftString
      Size = 100
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint264: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postlayout_options/'
    Response = RESTResponse264
    Left = 2640
    Top = 2640
  end
  object RESTResponse264: TRESTResponse
    Left = 3168
    Top = 3168
  end
object postlayout_optionsPostMemTable264: TFDMemTable
  FieldDefs = <
    item
      Name = 'form_id'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'field_id'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'group_id'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'title'
      DataType = ftString
      Size = 63
    end
    item
      Name = 'seq'
      DataType = ftInteger
    end
    item
      Name = 'data_type'
      DataType = ftShortint
    end
    item
      Name = 'uor'
      DataType = ftBoolean
    end
    item
      Name = 'fld_length'
      DataType = ftInteger
    end
    item
      Name = 'max_length'
      DataType = ftInteger
    end
    item
      Name = 'list_id'
      DataType = ftString
      Size = 100
    end
    item
      Name = 'titlecols'
      DataType = ftShortint
    end
    item
      Name = 'datacols'
      DataType = ftShortint
    end
    item
      Name = 'default_value'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'edit_options'
      DataType = ftString
      Size = 36
    end
    item
      Name = 'description'
      DataType = ftMemo
    end
    item
      Name = 'fld_rows'
      DataType = ftInteger
    end
    item
      Name = 'list_backup_id'
      DataType = ftString
      Size = 100
    end
    item
      Name = 'source'
      Attributes = [faFixed]
      DataType = ftFixedChar
      Size = 1
    end
    item
      Name = 'conditions'
      DataType = ftMemo
    end
    item
      Name = 'validation'
      DataType = ftString
      Size = 100
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postlayout_optionsMemTable264: TFDMemTable
  FieldDefs = <
    item
      Name = 'form_id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint265: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'form_id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletelayout_options/?form_id={form_id}'
    Response = RESTResponse265
    Left = 2650
    Top = 2650
  end
  object RESTResponse265: TRESTResponse
    Left = 3180
    Top = 3180
  end

  object BackendEndpoint266: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getlbf_data/?format={format}'
    Response = RESTResponse266
    Left = 2660
    Top = 2660
  end
  object RESTResponse266: TRESTResponse
    Left = 3192
    Top = 3192
  end
object getlbf_dataMemTable266: TFDMemTable
  FieldDefs = <
    item
      Name = 'form_id'
      DataType = ftAutoInc
    end
    item
      Name = 'field_id'
      Attributes = [faRequired]
      DataType = ftString
      Size = 31
    end
    item
      Name = 'field_value'
      DataType = ftMemo
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint267: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postlbf_data/'
    Response = RESTResponse267
    Left = 2670
    Top = 2670
  end
  object RESTResponse267: TRESTResponse
    Left = 3204
    Top = 3204
  end
object postlbf_dataPostMemTable267: TFDMemTable
  FieldDefs = <
    item
      Name = 'form_id'
      DataType = ftAutoInc
    end
    item
      Name = 'field_id'
      Attributes = [faRequired]
      DataType = ftString
      Size = 31
    end
    item
      Name = 'field_value'
      DataType = ftMemo
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postlbf_dataMemTable267: TFDMemTable
  FieldDefs = <
    item
      Name = 'form_id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint268: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'form_id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletelbf_data/?form_id={form_id}'
    Response = RESTResponse268
    Left = 2680
    Top = 2680
  end
  object RESTResponse268: TRESTResponse
    Left = 3216
    Top = 3216
  end

  object BackendEndpoint269: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getlbt_data/?format={format}'
    Response = RESTResponse269
    Left = 2690
    Top = 2690
  end
  object RESTResponse269: TRESTResponse
    Left = 3228
    Top = 3228
  end
object getlbt_dataMemTable269: TFDMemTable
  FieldDefs = <
    item
      Name = 'form_id'
      Attributes = [faRequired]
      DataType = ftLargeint
    end
    item
      Name = 'field_id'
      Attributes = [faRequired]
      DataType = ftString
      Size = 31
    end
    item
      Name = 'field_value'
      DataType = ftMemo
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint270: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postlbt_data/'
    Response = RESTResponse270
    Left = 2700
    Top = 2700
  end
  object RESTResponse270: TRESTResponse
    Left = 3240
    Top = 3240
  end
object postlbt_dataPostMemTable270: TFDMemTable
  FieldDefs = <
    item
      Name = 'form_id'
      Attributes = [faRequired]
      DataType = ftLargeint
    end
    item
      Name = 'field_id'
      Attributes = [faRequired]
      DataType = ftString
      Size = 31
    end
    item
      Name = 'field_value'
      DataType = ftMemo
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postlbt_dataMemTable270: TFDMemTable
  FieldDefs = <
    item
      Name = 'form_id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint271: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'form_id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletelbt_data/?form_id={form_id}'
    Response = RESTResponse271
    Left = 2710
    Top = 2710
  end
  object RESTResponse271: TRESTResponse
    Left = 3252
    Top = 3252
  end

  object BackendEndpoint272: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getlist_options/?format={format}'
    Response = RESTResponse272
    Left = 2720
    Top = 2720
  end
  object RESTResponse272: TRESTResponse
    Left = 3264
    Top = 3264
  end
object getlist_optionsMemTable272: TFDMemTable
  FieldDefs = <
    item
      Name = 'list_id'
      DataType = ftString
      Size = 100
    end
    item
      Name = 'option_id'
      DataType = ftString
      Size = 100
    end
    item
      Name = 'title'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'seq'
      DataType = ftInteger
    end
    item
      Name = 'is_default'
      DataType = ftBoolean
    end
    item
      Name = 'option_value'
      DataType = ftSingle
      Precision = 12
    end
    item
      Name = 'mapping'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'notes'
      DataType = ftMemo
    end
    item
      Name = 'codes'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'toggle_setting_1'
      DataType = ftBoolean
    end
    item
      Name = 'toggle_setting_2'
      DataType = ftBoolean
    end
    item
      Name = 'activity'
      DataType = ftShortint
    end
    item
      Name = 'subtype'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'edit_options'
      DataType = ftBoolean
    end
    item
      Name = 'timestamp'
      DataType = ftTimeStamp
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint273: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postlist_options/'
    Response = RESTResponse273
    Left = 2730
    Top = 2730
  end
  object RESTResponse273: TRESTResponse
    Left = 3276
    Top = 3276
  end
object postlist_optionsPostMemTable273: TFDMemTable
  FieldDefs = <
    item
      Name = 'list_id'
      DataType = ftString
      Size = 100
    end
    item
      Name = 'option_id'
      DataType = ftString
      Size = 100
    end
    item
      Name = 'title'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'seq'
      DataType = ftInteger
    end
    item
      Name = 'is_default'
      DataType = ftBoolean
    end
    item
      Name = 'option_value'
      DataType = ftSingle
      Precision = 12
    end
    item
      Name = 'mapping'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'notes'
      DataType = ftMemo
    end
    item
      Name = 'codes'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'toggle_setting_1'
      DataType = ftBoolean
    end
    item
      Name = 'toggle_setting_2'
      DataType = ftBoolean
    end
    item
      Name = 'activity'
      DataType = ftShortint
    end
    item
      Name = 'subtype'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'edit_options'
      DataType = ftBoolean
    end
    item
      Name = 'timestamp'
      DataType = ftTimeStamp
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postlist_optionsMemTable273: TFDMemTable
  FieldDefs = <
    item
      Name = 'list_id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint274: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'list_id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletelist_options/?list_id={list_id}'
    Response = RESTResponse274
    Left = 2740
    Top = 2740
  end
  object RESTResponse274: TRESTResponse
    Left = 3288
    Top = 3288
  end

  object BackendEndpoint275: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getlists/?format={format}'
    Response = RESTResponse275
    Left = 2750
    Top = 2750
  end
  object RESTResponse275: TRESTResponse
    Left = 3300
    Top = 3300
  end
object getlistsMemTable275: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'date'
      DataType = ftDateTime
    end
    item
      Name = 'type'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'subtype'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'title'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'begdate'
      DataType = ftDate
    end
    item
      Name = 'enddate'
      DataType = ftDate
    end
    item
      Name = 'returndate'
      DataType = ftDate
    end
    item
      Name = 'occurrence'
      DataType = ftInteger
    end
    item
      Name = 'classification'
      DataType = ftInteger
    end
    item
      Name = 'referredby'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'extrainfo'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'diagnosis'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'activity'
      DataType = ftShortint
    end
    item
      Name = 'comments'
      DataType = ftMemo
    end
    item
      Name = 'pid'
      DataType = ftLargeint
    end
    item
      Name = 'user'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'groupname'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'outcome'
      DataType = ftInteger
    end
    item
      Name = 'destination'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'reinjury_id'
      DataType = ftLargeint
    end
    item
      Name = 'injury_part'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'injury_type'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'injury_grade'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'reaction'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'external_allergyid'
      DataType = ftInteger
    end
    item
      Name = 'erx_source'
      Attributes = [faFixed]
      DataType = ftFixedChar
      Size = 1
    end
    item
      Name = 'erx_uploaded'
      Attributes = [faFixed]
      DataType = ftFixedChar
      Size = 1
    end
    item
      Name = 'modifydate'
      DataType = ftTimeStamp
    end
    item
      Name = 'severity_al'
      DataType = ftString
      Size = 50
    end
    item
      Name = 'external_id'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'list_option_id'
      DataType = ftString
      Size = 100
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint276: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postlists/'
    Response = RESTResponse276
    Left = 2760
    Top = 2760
  end
  object RESTResponse276: TRESTResponse
    Left = 3312
    Top = 3312
  end
object postlistsPostMemTable276: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'date'
      DataType = ftDateTime
    end
    item
      Name = 'type'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'subtype'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'title'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'begdate'
      DataType = ftDate
    end
    item
      Name = 'enddate'
      DataType = ftDate
    end
    item
      Name = 'returndate'
      DataType = ftDate
    end
    item
      Name = 'occurrence'
      DataType = ftInteger
    end
    item
      Name = 'classification'
      DataType = ftInteger
    end
    item
      Name = 'referredby'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'extrainfo'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'diagnosis'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'activity'
      DataType = ftShortint
    end
    item
      Name = 'comments'
      DataType = ftMemo
    end
    item
      Name = 'pid'
      DataType = ftLargeint
    end
    item
      Name = 'user'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'groupname'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'outcome'
      DataType = ftInteger
    end
    item
      Name = 'destination'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'reinjury_id'
      DataType = ftLargeint
    end
    item
      Name = 'injury_part'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'injury_type'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'injury_grade'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'reaction'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'external_allergyid'
      DataType = ftInteger
    end
    item
      Name = 'erx_source'
      Attributes = [faFixed]
      DataType = ftFixedChar
      Size = 1
    end
    item
      Name = 'erx_uploaded'
      Attributes = [faFixed]
      DataType = ftFixedChar
      Size = 1
    end
    item
      Name = 'modifydate'
      DataType = ftTimeStamp
    end
    item
      Name = 'severity_al'
      DataType = ftString
      Size = 50
    end
    item
      Name = 'external_id'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'list_option_id'
      DataType = ftString
      Size = 100
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postlistsMemTable276: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint277: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletelists/?id={id}'
    Response = RESTResponse277
    Left = 2770
    Top = 2770
  end
  object RESTResponse277: TRESTResponse
    Left = 3324
    Top = 3324
  end

  object BackendEndpoint278: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getlists_touch/?format={format}'
    Response = RESTResponse278
    Left = 2780
    Top = 2780
  end
  object RESTResponse278: TRESTResponse
    Left = 3336
    Top = 3336
  end
object getlists_touchMemTable278: TFDMemTable
  FieldDefs = <
    item
      Name = 'pid'
      DataType = ftLargeint
    end
    item
      Name = 'type'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'date'
      DataType = ftDateTime
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint279: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postlists_touch/'
    Response = RESTResponse279
    Left = 2790
    Top = 2790
  end
  object RESTResponse279: TRESTResponse
    Left = 3348
    Top = 3348
  end
object postlists_touchPostMemTable279: TFDMemTable
  FieldDefs = <
    item
      Name = 'pid'
      DataType = ftLargeint
    end
    item
      Name = 'type'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'date'
      DataType = ftDateTime
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postlists_touchMemTable279: TFDMemTable
  FieldDefs = <
    item
      Name = 'pid'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint280: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'pid'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletelists_touch/?pid={pid}'
    Response = RESTResponse280
    Left = 2800
    Top = 2800
  end
  object RESTResponse280: TRESTResponse
    Left = 3360
    Top = 3360
  end

  object BackendEndpoint281: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getlog/?format={format}'
    Response = RESTResponse281
    Left = 2810
    Top = 2810
  end
  object RESTResponse281: TRESTResponse
    Left = 3372
    Top = 3372
  end
object getlogMemTable281: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'date'
      DataType = ftDateTime
    end
    item
      Name = 'event'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'category'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'user'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'groupname'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'comments'
      DataType = ftMemo
    end
    item
      Name = 'user_notes'
      DataType = ftMemo
    end
    item
      Name = 'patient_id'
      DataType = ftLargeint
    end
    item
      Name = 'success'
      DataType = ftBoolean
    end
    item
      Name = 'checksum'
      DataType = ftMemo
    end
    item
      Name = 'crt_user'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'log_from'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'menu_item_id'
      DataType = ftInteger
    end
    item
      Name = 'ccda_doc_id'
      DataType = ftInteger
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint282: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postlog/'
    Response = RESTResponse282
    Left = 2820
    Top = 2820
  end
  object RESTResponse282: TRESTResponse
    Left = 3384
    Top = 3384
  end
object postlogPostMemTable282: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'date'
      DataType = ftDateTime
    end
    item
      Name = 'event'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'category'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'user'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'groupname'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'comments'
      DataType = ftMemo
    end
    item
      Name = 'user_notes'
      DataType = ftMemo
    end
    item
      Name = 'patient_id'
      DataType = ftLargeint
    end
    item
      Name = 'success'
      DataType = ftBoolean
    end
    item
      Name = 'checksum'
      DataType = ftMemo
    end
    item
      Name = 'crt_user'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'log_from'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'menu_item_id'
      DataType = ftInteger
    end
    item
      Name = 'ccda_doc_id'
      DataType = ftInteger
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postlogMemTable282: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint283: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletelog/?id={id}'
    Response = RESTResponse283
    Left = 2830
    Top = 2830
  end
  object RESTResponse283: TRESTResponse
    Left = 3396
    Top = 3396
  end

  object BackendEndpoint284: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getlog_comment_encrypt/?format={format}'
    Response = RESTResponse284
    Left = 2840
    Top = 2840
  end
  object RESTResponse284: TRESTResponse
    Left = 3408
    Top = 3408
  end
object getlog_comment_encryptMemTable284: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftAutoInc
    end
    item
      Name = 'log_id'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'encrypt'
      Attributes = [faFixed]
      DataType = ftFixedChar
      Size = 3
    end
    item
      Name = 'checksum'
      DataType = ftMemo
    end
    item
      Name = 'version'
      DataType = ftShortint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint285: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postlog_comment_encrypt/'
    Response = RESTResponse285
    Left = 2850
    Top = 2850
  end
  object RESTResponse285: TRESTResponse
    Left = 3420
    Top = 3420
  end
object postlog_comment_encryptPostMemTable285: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftAutoInc
    end
    item
      Name = 'log_id'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'encrypt'
      Attributes = [faFixed]
      DataType = ftFixedChar
      Size = 3
    end
    item
      Name = 'checksum'
      DataType = ftMemo
    end
    item
      Name = 'version'
      DataType = ftShortint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postlog_comment_encryptMemTable285: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint286: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletelog_comment_encrypt/?id={id}'
    Response = RESTResponse286
    Left = 2860
    Top = 2860
  end
  object RESTResponse286: TRESTResponse
    Left = 3432
    Top = 3432
  end

  object BackendEndpoint287: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getmisc_address_book/?format={format}'
    Response = RESTResponse287
    Left = 2870
    Top = 2870
  end
  object RESTResponse287: TRESTResponse
    Left = 3444
    Top = 3444
  end
object getmisc_address_bookMemTable287: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'fname'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'mname'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'lname'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'street'
      DataType = ftString
      Size = 60
    end
    item
      Name = 'city'
      DataType = ftString
      Size = 30
    end
    item
      Name = 'state'
      DataType = ftString
      Size = 30
    end
    item
      Name = 'zip'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'phone'
      DataType = ftString
      Size = 30
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint288: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postmisc_address_book/'
    Response = RESTResponse288
    Left = 2880
    Top = 2880
  end
  object RESTResponse288: TRESTResponse
    Left = 3456
    Top = 3456
  end
object postmisc_address_bookPostMemTable288: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'fname'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'mname'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'lname'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'street'
      DataType = ftString
      Size = 60
    end
    item
      Name = 'city'
      DataType = ftString
      Size = 30
    end
    item
      Name = 'state'
      DataType = ftString
      Size = 30
    end
    item
      Name = 'zip'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'phone'
      DataType = ftString
      Size = 30
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postmisc_address_bookMemTable288: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint289: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletemisc_address_book/?id={id}'
    Response = RESTResponse289
    Left = 2890
    Top = 2890
  end
  object RESTResponse289: TRESTResponse
    Left = 3468
    Top = 3468
  end

  object BackendEndpoint290: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getmodule_acl_group_settings/?format={format}'
    Response = RESTResponse290
    Left = 2900
    Top = 2900
  end
  object RESTResponse290: TRESTResponse
    Left = 3480
    Top = 3480
  end
object getmodule_acl_group_settingsMemTable290: TFDMemTable
  FieldDefs = <
    item
      Name = 'module_id'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'group_id'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'section_id'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'allowed'
      DataType = ftBoolean
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint291: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postmodule_acl_group_settings/'
    Response = RESTResponse291
    Left = 2910
    Top = 2910
  end
  object RESTResponse291: TRESTResponse
    Left = 3492
    Top = 3492
  end
object postmodule_acl_group_settingsPostMemTable291: TFDMemTable
  FieldDefs = <
    item
      Name = 'module_id'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'group_id'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'section_id'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'allowed'
      DataType = ftBoolean
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postmodule_acl_group_settingsMemTable291: TFDMemTable
  FieldDefs = <
    item
      Name = 'module_id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint292: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'module_id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletemodule_acl_group_settings/?module_id={module_id}'
    Response = RESTResponse292
    Left = 2920
    Top = 2920
  end
  object RESTResponse292: TRESTResponse
    Left = 3504
    Top = 3504
  end

  object BackendEndpoint293: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getmodule_acl_sections/?format={format}'
    Response = RESTResponse293
    Left = 2930
    Top = 2930
  end
  object RESTResponse293: TRESTResponse
    Left = 3516
    Top = 3516
  end
object getmodule_acl_sectionsMemTable293: TFDMemTable
  FieldDefs = <
    item
      Name = 'section_id'
      DataType = ftInteger
    end
    item
      Name = 'section_name'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'parent_section'
      DataType = ftInteger
    end
    item
      Name = 'section_identifier'
      DataType = ftString
      Size = 50
    end
    item
      Name = 'module_id'
      DataType = ftInteger
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint294: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getmodule_acl_user_settings/?format={format}'
    Response = RESTResponse294
    Left = 2940
    Top = 2940
  end
  object RESTResponse294: TRESTResponse
    Left = 3528
    Top = 3528
  end
object getmodule_acl_user_settingsMemTable294: TFDMemTable
  FieldDefs = <
    item
      Name = 'module_id'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'user_id'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'section_id'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'allowed'
      DataType = ftInteger
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint295: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postmodule_acl_user_settings/'
    Response = RESTResponse295
    Left = 2950
    Top = 2950
  end
  object RESTResponse295: TRESTResponse
    Left = 3540
    Top = 3540
  end
object postmodule_acl_user_settingsPostMemTable295: TFDMemTable
  FieldDefs = <
    item
      Name = 'module_id'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'user_id'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'section_id'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'allowed'
      DataType = ftInteger
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postmodule_acl_user_settingsMemTable295: TFDMemTable
  FieldDefs = <
    item
      Name = 'module_id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint296: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'module_id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletemodule_acl_user_settings/?module_id={module_id}'
    Response = RESTResponse296
    Left = 2960
    Top = 2960
  end
  object RESTResponse296: TRESTResponse
    Left = 3552
    Top = 3552
  end

  object BackendEndpoint297: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getmodule_configuration/?format={format}'
    Response = RESTResponse297
    Left = 2970
    Top = 2970
  end
  object RESTResponse297: TRESTResponse
    Left = 3564
    Top = 3564
  end
object getmodule_configurationMemTable297: TFDMemTable
  FieldDefs = <
    item
      Name = 'module_config_id'
      DataType = ftAutoInc
    end
    item
      Name = 'module_id'
      Attributes = [faRequired]
      DataType = ftLongWord
    end
    item
      Name = 'field_name'
      Attributes = [faRequired]
      DataType = ftString
      Size = 45
    end
    item
      Name = 'field_value'
      Attributes = [faRequired]
      DataType = ftString
      Size = 255
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint298: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postmodule_configuration/'
    Response = RESTResponse298
    Left = 2980
    Top = 2980
  end
  object RESTResponse298: TRESTResponse
    Left = 3576
    Top = 3576
  end
object postmodule_configurationPostMemTable298: TFDMemTable
  FieldDefs = <
    item
      Name = 'module_config_id'
      DataType = ftAutoInc
    end
    item
      Name = 'module_id'
      Attributes = [faRequired]
      DataType = ftLongWord
    end
    item
      Name = 'field_name'
      Attributes = [faRequired]
      DataType = ftString
      Size = 45
    end
    item
      Name = 'field_value'
      Attributes = [faRequired]
      DataType = ftString
      Size = 255
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postmodule_configurationMemTable298: TFDMemTable
  FieldDefs = <
    item
      Name = 'module_config_id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint299: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'module_config_id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletemodule_configuration/?module_config_id={module_config_id}'
    Response = RESTResponse299
    Left = 2990
    Top = 2990
  end
  object RESTResponse299: TRESTResponse
    Left = 3588
    Top = 3588
  end

  object BackendEndpoint300: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getmodules/?format={format}'
    Response = RESTResponse300
    Left = 3000
    Top = 3000
  end
  object RESTResponse300: TRESTResponse
    Left = 3600
    Top = 3600
  end
object getmodulesMemTable300: TFDMemTable
  FieldDefs = <
    item
      Name = 'mod_id'
      DataType = ftAutoInc
    end
    item
      Name = 'mod_name'
      DataType = ftString
      Size = 64
    end
    item
      Name = 'mod_directory'
      DataType = ftString
      Size = 64
    end
    item
      Name = 'mod_parent'
      DataType = ftString
      Size = 64
    end
    item
      Name = 'mod_type'
      DataType = ftString
      Size = 64
    end
    item
      Name = 'mod_active'
      DataType = ftLongWord
    end
    item
      Name = 'mod_ui_name'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'mod_relative_link'
      DataType = ftString
      Size = 64
    end
    item
      Name = 'mod_ui_order'
      DataType = ftShortint
    end
    item
      Name = 'mod_ui_active'
      DataType = ftLongWord
    end
    item
      Name = 'mod_description'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'mod_nick_name'
      DataType = ftString
      Size = 25
    end
    item
      Name = 'mod_enc_menu'
      DataType = ftString
      Size = 10
    end
    item
      Name = 'permissions_item_table'
      Attributes = [faFixed]
      DataType = ftFixedChar
      Size = 100
    end
    item
      Name = 'directory'
      Attributes = [faRequired]
      DataType = ftString
      Size = 255
    end
    item
      Name = 'date'
      Attributes = [faRequired]
      DataType = ftDateTime
    end
    item
      Name = 'sql_run'
      DataType = ftShortint
    end
    item
      Name = 'type'
      DataType = ftShortint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint301: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postmodules/'
    Response = RESTResponse301
    Left = 3010
    Top = 3010
  end
  object RESTResponse301: TRESTResponse
    Left = 3612
    Top = 3612
  end
object postmodulesPostMemTable301: TFDMemTable
  FieldDefs = <
    item
      Name = 'mod_id'
      DataType = ftAutoInc
    end
    item
      Name = 'mod_name'
      DataType = ftString
      Size = 64
    end
    item
      Name = 'mod_directory'
      DataType = ftString
      Size = 64
    end
    item
      Name = 'mod_parent'
      DataType = ftString
      Size = 64
    end
    item
      Name = 'mod_type'
      DataType = ftString
      Size = 64
    end
    item
      Name = 'mod_active'
      DataType = ftLongWord
    end
    item
      Name = 'mod_ui_name'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'mod_relative_link'
      DataType = ftString
      Size = 64
    end
    item
      Name = 'mod_ui_order'
      DataType = ftShortint
    end
    item
      Name = 'mod_ui_active'
      DataType = ftLongWord
    end
    item
      Name = 'mod_description'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'mod_nick_name'
      DataType = ftString
      Size = 25
    end
    item
      Name = 'mod_enc_menu'
      DataType = ftString
      Size = 10
    end
    item
      Name = 'permissions_item_table'
      Attributes = [faFixed]
      DataType = ftFixedChar
      Size = 100
    end
    item
      Name = 'directory'
      Attributes = [faRequired]
      DataType = ftString
      Size = 255
    end
    item
      Name = 'date'
      Attributes = [faRequired]
      DataType = ftDateTime
    end
    item
      Name = 'sql_run'
      DataType = ftShortint
    end
    item
      Name = 'type'
      DataType = ftShortint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postmodulesMemTable301: TFDMemTable
  FieldDefs = <
    item
      Name = 'mod_id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint302: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'mod_id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletemodules/?mod_id={mod_id}'
    Response = RESTResponse302
    Left = 3020
    Top = 3020
  end
  object RESTResponse302: TRESTResponse
    Left = 3624
    Top = 3624
  end

  object BackendEndpoint303: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getmodules_hooks_settings/?format={format}'
    Response = RESTResponse303
    Left = 3030
    Top = 3030
  end
  object RESTResponse303: TRESTResponse
    Left = 3636
    Top = 3636
  end
object getmodules_hooks_settingsMemTable303: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftAutoInc
    end
    item
      Name = 'mod_id'
      DataType = ftInteger
    end
    item
      Name = 'enabled_hooks'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'attached_to'
      DataType = ftString
      Size = 45
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint304: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postmodules_hooks_settings/'
    Response = RESTResponse304
    Left = 3040
    Top = 3040
  end
  object RESTResponse304: TRESTResponse
    Left = 3648
    Top = 3648
  end
object postmodules_hooks_settingsPostMemTable304: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftAutoInc
    end
    item
      Name = 'mod_id'
      DataType = ftInteger
    end
    item
      Name = 'enabled_hooks'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'attached_to'
      DataType = ftString
      Size = 45
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postmodules_hooks_settingsMemTable304: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint305: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletemodules_hooks_settings/?id={id}'
    Response = RESTResponse305
    Left = 3050
    Top = 3050
  end
  object RESTResponse305: TRESTResponse
    Left = 3660
    Top = 3660
  end

  object BackendEndpoint306: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getmodules_settings/?format={format}'
    Response = RESTResponse306
    Left = 3060
    Top = 3060
  end
  object RESTResponse306: TRESTResponse
    Left = 3672
    Top = 3672
  end
object getmodules_settingsMemTable306: TFDMemTable
  FieldDefs = <
    item
      Name = 'mod_id'
      DataType = ftInteger
    end
    item
      Name = 'fld_type'
      DataType = ftSmallint
    end
    item
      Name = 'obj_name'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'menu_name'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'path'
      DataType = ftString
      Size = 255
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint307: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getnotes/?format={format}'
    Response = RESTResponse307
    Left = 3070
    Top = 3070
  end
  object RESTResponse307: TRESTResponse
    Left = 3684
    Top = 3684
  end
object getnotesMemTable307: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftInteger
    end
    item
      Name = 'foreign_id'
      DataType = ftInteger
    end
    item
      Name = 'note'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'owner'
      DataType = ftInteger
    end
    item
      Name = 'date'
      DataType = ftDateTime
    end
    item
      Name = 'revision'
      DataType = ftTimeStamp
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint308: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postnotes/'
    Response = RESTResponse308
    Left = 3080
    Top = 3080
  end
  object RESTResponse308: TRESTResponse
    Left = 3696
    Top = 3696
  end
object postnotesPostMemTable308: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftInteger
    end
    item
      Name = 'foreign_id'
      DataType = ftInteger
    end
    item
      Name = 'note'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'owner'
      DataType = ftInteger
    end
    item
      Name = 'date'
      DataType = ftDateTime
    end
    item
      Name = 'revision'
      DataType = ftTimeStamp
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postnotesMemTable308: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint309: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletenotes/?id={id}'
    Response = RESTResponse309
    Left = 3090
    Top = 3090
  end
  object RESTResponse309: TRESTResponse
    Left = 3708
    Top = 3708
  end

  object BackendEndpoint310: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getnotification_log/?format={format}'
    Response = RESTResponse310
    Left = 3100
    Top = 3100
  end
  object RESTResponse310: TRESTResponse
    Left = 3720
    Top = 3720
  end
object getnotification_logMemTable310: TFDMemTable
  FieldDefs = <
    item
      Name = 'iLogId'
      DataType = ftAutoInc
    end
    item
      Name = 'pid'
      Attributes = [faRequired]
      DataType = ftLargeint
    end
    item
      Name = 'pc_eid'
      DataType = ftLongWord
    end
    item
      Name = 'sms_gateway_type'
      Attributes = [faRequired]
      DataType = ftString
      Size = 50
    end
    item
      Name = 'smsgateway_info'
      Attributes = [faRequired]
      DataType = ftString
      Size = 255
    end
    item
      Name = 'message'
      DataType = ftMemo
    end
    item
      Name = 'email_sender'
      Attributes = [faRequired]
      DataType = ftString
      Size = 255
    end
    item
      Name = 'email_subject'
      Attributes = [faRequired]
      DataType = ftString
      Size = 255
    end
    item
      Name = 'type'
      Attributes = [faRequired, faFixed]
      DataType = ftFixedChar
      Size = 5
    end
    item
      Name = 'patient_info'
      DataType = ftMemo
    end
    item
      Name = 'pc_eventDate'
      Attributes = [faRequired]
      DataType = ftDate
    end
    item
      Name = 'pc_endDate'
      Attributes = [faRequired]
      DataType = ftDate
    end
    item
      Name = 'pc_startTime'
      Attributes = [faRequired]
      DataType = ftTime
    end
    item
      Name = 'pc_endTime'
      Attributes = [faRequired]
      DataType = ftTime
    end
    item
      Name = 'dSentDateTime'
      Attributes = [faRequired]
      DataType = ftDateTime
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint311: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postnotification_log/'
    Response = RESTResponse311
    Left = 3110
    Top = 3110
  end
  object RESTResponse311: TRESTResponse
    Left = 3732
    Top = 3732
  end
object postnotification_logPostMemTable311: TFDMemTable
  FieldDefs = <
    item
      Name = 'iLogId'
      DataType = ftAutoInc
    end
    item
      Name = 'pid'
      Attributes = [faRequired]
      DataType = ftLargeint
    end
    item
      Name = 'pc_eid'
      DataType = ftLongWord
    end
    item
      Name = 'sms_gateway_type'
      Attributes = [faRequired]
      DataType = ftString
      Size = 50
    end
    item
      Name = 'smsgateway_info'
      Attributes = [faRequired]
      DataType = ftString
      Size = 255
    end
    item
      Name = 'message'
      DataType = ftMemo
    end
    item
      Name = 'email_sender'
      Attributes = [faRequired]
      DataType = ftString
      Size = 255
    end
    item
      Name = 'email_subject'
      Attributes = [faRequired]
      DataType = ftString
      Size = 255
    end
    item
      Name = 'type'
      Attributes = [faRequired, faFixed]
      DataType = ftFixedChar
      Size = 5
    end
    item
      Name = 'patient_info'
      DataType = ftMemo
    end
    item
      Name = 'pc_eventDate'
      Attributes = [faRequired]
      DataType = ftDate
    end
    item
      Name = 'pc_endDate'
      Attributes = [faRequired]
      DataType = ftDate
    end
    item
      Name = 'pc_startTime'
      Attributes = [faRequired]
      DataType = ftTime
    end
    item
      Name = 'pc_endTime'
      Attributes = [faRequired]
      DataType = ftTime
    end
    item
      Name = 'dSentDateTime'
      Attributes = [faRequired]
      DataType = ftDateTime
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postnotification_logMemTable311: TFDMemTable
  FieldDefs = <
    item
      Name = 'iLogId'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint312: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'iLogId'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletenotification_log/?iLogId={iLogId}'
    Response = RESTResponse312
    Left = 3120
    Top = 3120
  end
  object RESTResponse312: TRESTResponse
    Left = 3744
    Top = 3744
  end

  object BackendEndpoint313: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getnotification_settings/?format={format}'
    Response = RESTResponse313
    Left = 3130
    Top = 3130
  end
  object RESTResponse313: TRESTResponse
    Left = 3756
    Top = 3756
  end
object getnotification_settingsMemTable313: TFDMemTable
  FieldDefs = <
    item
      Name = 'SettingsId'
      DataType = ftAutoInc
    end
    item
      Name = 'Send_SMS_Before_Hours'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'Send_Email_Before_Hours'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'SMS_gateway_username'
      Attributes = [faRequired]
      DataType = ftString
      Size = 100
    end
    item
      Name = 'SMS_gateway_password'
      Attributes = [faRequired]
      DataType = ftString
      Size = 100
    end
    item
      Name = 'SMS_gateway_apikey'
      Attributes = [faRequired]
      DataType = ftString
      Size = 100
    end
    item
      Name = 'type'
      Attributes = [faRequired]
      DataType = ftString
      Size = 50
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint314: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postnotification_settings/'
    Response = RESTResponse314
    Left = 3140
    Top = 3140
  end
  object RESTResponse314: TRESTResponse
    Left = 3768
    Top = 3768
  end
object postnotification_settingsPostMemTable314: TFDMemTable
  FieldDefs = <
    item
      Name = 'SettingsId'
      DataType = ftAutoInc
    end
    item
      Name = 'Send_SMS_Before_Hours'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'Send_Email_Before_Hours'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'SMS_gateway_username'
      Attributes = [faRequired]
      DataType = ftString
      Size = 100
    end
    item
      Name = 'SMS_gateway_password'
      Attributes = [faRequired]
      DataType = ftString
      Size = 100
    end
    item
      Name = 'SMS_gateway_apikey'
      Attributes = [faRequired]
      DataType = ftString
      Size = 100
    end
    item
      Name = 'type'
      Attributes = [faRequired]
      DataType = ftString
      Size = 50
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postnotification_settingsMemTable314: TFDMemTable
  FieldDefs = <
    item
      Name = 'SettingsId'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint315: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'SettingsId'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletenotification_settings/?SettingsId={SettingsId}'
    Response = RESTResponse315
    Left = 3150
    Top = 3150
  end
  object RESTResponse315: TRESTResponse
    Left = 3780
    Top = 3780
  end

  object BackendEndpoint316: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getonotes/?format={format}'
    Response = RESTResponse316
    Left = 3160
    Top = 3160
  end
  object RESTResponse316: TRESTResponse
    Left = 3792
    Top = 3792
  end
object getonotesMemTable316: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'date'
      DataType = ftDateTime
    end
    item
      Name = 'body'
      DataType = ftMemo
    end
    item
      Name = 'user'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'groupname'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'activity'
      DataType = ftShortint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint317: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postonotes/'
    Response = RESTResponse317
    Left = 3170
    Top = 3170
  end
  object RESTResponse317: TRESTResponse
    Left = 3804
    Top = 3804
  end
object postonotesPostMemTable317: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'date'
      DataType = ftDateTime
    end
    item
      Name = 'body'
      DataType = ftMemo
    end
    item
      Name = 'user'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'groupname'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'activity'
      DataType = ftShortint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postonotesMemTable317: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint318: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteonotes/?id={id}'
    Response = RESTResponse318
    Left = 3180
    Top = 3180
  end
  object RESTResponse318: TRESTResponse
    Left = 3816
    Top = 3816
  end

  object BackendEndpoint319: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getonsite_documents/?format={format}'
    Response = RESTResponse319
    Left = 3190
    Top = 3190
  end
  object RESTResponse319: TRESTResponse
    Left = 3828
    Top = 3828
  end
object getonsite_documentsMemTable319: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftAutoInc
    end
    item
      Name = 'pid'
      DataType = ftLargeint
    end
    item
      Name = 'facility'
      DataType = ftLongWord
    end
    item
      Name = 'provider'
      DataType = ftLongWord
    end
    item
      Name = 'encounter'
      DataType = ftLongWord
    end
    item
      Name = 'create_date'
      DataType = ftTimeStamp
    end
    item
      Name = 'doc_type'
      Attributes = [faRequired]
      DataType = ftString
      Size = 255
    end
    item
      Name = 'patient_signed_status'
      Attributes = [faRequired]
      DataType = ftWord
    end
    item
      Name = 'patient_signed_time'
      DataType = ftDateTime
    end
    item
      Name = 'authorize_signed_time'
      DataType = ftDateTime
    end
    item
      Name = 'accept_signed_status'
      Attributes = [faRequired]
      DataType = ftSmallint
    end
    item
      Name = 'authorizing_signator'
      Attributes = [faRequired]
      DataType = ftString
      Size = 50
    end
    item
      Name = 'review_date'
      DataType = ftDateTime
    end
    item
      Name = 'denial_reason'
      Attributes = [faRequired]
      DataType = ftString
      Size = 255
    end
    item
      Name = 'authorized_signature'
      DataType = ftMemo
    end
    item
      Name = 'patient_signature'
      DataType = ftMemo
    end
    item
      Name = 'full_document'
      DataType = ftBlob
    end
    item
      Name = 'file_name'
      Attributes = [faRequired]
      DataType = ftString
      Size = 255
    end
    item
      Name = 'file_path'
      Attributes = [faRequired]
      DataType = ftString
      Size = 255
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint320: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postonsite_documents/'
    Response = RESTResponse320
    Left = 3200
    Top = 3200
  end
  object RESTResponse320: TRESTResponse
    Left = 3840
    Top = 3840
  end
object postonsite_documentsPostMemTable320: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftAutoInc
    end
    item
      Name = 'pid'
      DataType = ftLargeint
    end
    item
      Name = 'facility'
      DataType = ftLongWord
    end
    item
      Name = 'provider'
      DataType = ftLongWord
    end
    item
      Name = 'encounter'
      DataType = ftLongWord
    end
    item
      Name = 'create_date'
      DataType = ftTimeStamp
    end
    item
      Name = 'doc_type'
      Attributes = [faRequired]
      DataType = ftString
      Size = 255
    end
    item
      Name = 'patient_signed_status'
      Attributes = [faRequired]
      DataType = ftWord
    end
    item
      Name = 'patient_signed_time'
      DataType = ftDateTime
    end
    item
      Name = 'authorize_signed_time'
      DataType = ftDateTime
    end
    item
      Name = 'accept_signed_status'
      Attributes = [faRequired]
      DataType = ftSmallint
    end
    item
      Name = 'authorizing_signator'
      Attributes = [faRequired]
      DataType = ftString
      Size = 50
    end
    item
      Name = 'review_date'
      DataType = ftDateTime
    end
    item
      Name = 'denial_reason'
      Attributes = [faRequired]
      DataType = ftString
      Size = 255
    end
    item
      Name = 'authorized_signature'
      DataType = ftMemo
    end
    item
      Name = 'patient_signature'
      DataType = ftMemo
    end
    item
      Name = 'full_document'
      DataType = ftBlob
    end
    item
      Name = 'file_name'
      Attributes = [faRequired]
      DataType = ftString
      Size = 255
    end
    item
      Name = 'file_path'
      Attributes = [faRequired]
      DataType = ftString
      Size = 255
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postonsite_documentsMemTable320: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint321: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteonsite_documents/?id={id}'
    Response = RESTResponse321
    Left = 3210
    Top = 3210
  end
  object RESTResponse321: TRESTResponse
    Left = 3852
    Top = 3852
  end

  object BackendEndpoint322: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getonsite_mail/?format={format}'
    Response = RESTResponse322
    Left = 3220
    Top = 3220
  end
  object RESTResponse322: TRESTResponse
    Left = 3864
    Top = 3864
  end
object getonsite_mailMemTable322: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'date'
      DataType = ftDateTime
    end
    item
      Name = 'owner'
      DataType = ftString
      Size = 128
    end
    item
      Name = 'user'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'groupname'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'activity'
      DataType = ftShortint
    end
    item
      Name = 'authorized'
      DataType = ftShortint
    end
    item
      Name = 'header'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'title'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'body'
      DataType = ftMemo
    end
    item
      Name = 'recipient_id'
      DataType = ftString
      Size = 128
    end
    item
      Name = 'recipient_name'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'sender_id'
      DataType = ftString
      Size = 128
    end
    item
      Name = 'sender_name'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'assigned_to'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'deleted'
      DataType = ftShortint
    end
    item
      Name = 'delete_date'
      DataType = ftDateTime
    end
    item
      Name = 'mtype'
      DataType = ftString
      Size = 128
    end
    item
      Name = 'message_status'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'mail_chain'
      DataType = ftInteger
    end
    item
      Name = 'reply_mail_chain'
      DataType = ftInteger
    end
    item
      Name = 'is_msg_encrypted'
      DataType = ftShortint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint323: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postonsite_mail/'
    Response = RESTResponse323
    Left = 3230
    Top = 3230
  end
  object RESTResponse323: TRESTResponse
    Left = 3876
    Top = 3876
  end
object postonsite_mailPostMemTable323: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'date'
      DataType = ftDateTime
    end
    item
      Name = 'owner'
      DataType = ftString
      Size = 128
    end
    item
      Name = 'user'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'groupname'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'activity'
      DataType = ftShortint
    end
    item
      Name = 'authorized'
      DataType = ftShortint
    end
    item
      Name = 'header'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'title'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'body'
      DataType = ftMemo
    end
    item
      Name = 'recipient_id'
      DataType = ftString
      Size = 128
    end
    item
      Name = 'recipient_name'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'sender_id'
      DataType = ftString
      Size = 128
    end
    item
      Name = 'sender_name'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'assigned_to'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'deleted'
      DataType = ftShortint
    end
    item
      Name = 'delete_date'
      DataType = ftDateTime
    end
    item
      Name = 'mtype'
      DataType = ftString
      Size = 128
    end
    item
      Name = 'message_status'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'mail_chain'
      DataType = ftInteger
    end
    item
      Name = 'reply_mail_chain'
      DataType = ftInteger
    end
    item
      Name = 'is_msg_encrypted'
      DataType = ftShortint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postonsite_mailMemTable323: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint324: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteonsite_mail/?id={id}'
    Response = RESTResponse324
    Left = 3240
    Top = 3240
  end
  object RESTResponse324: TRESTResponse
    Left = 3888
    Top = 3888
  end

  object BackendEndpoint325: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getonsite_messages/?format={format}'
    Response = RESTResponse325
    Left = 3250
    Top = 3250
  end
  object RESTResponse325: TRESTResponse
    Left = 3900
    Top = 3900
  end
object getonsite_messagesMemTable325: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftAutoInc
    end
    item
      Name = 'username'
      Attributes = [faRequired]
      DataType = ftString
      Size = 64
    end
    item
      Name = 'message'
      DataType = ftMemo
    end
    item
      Name = 'ip'
      Attributes = [faRequired]
      DataType = ftString
      Size = 15
    end
    item
      Name = 'date'
      Attributes = [faRequired]
      DataType = ftDateTime
    end
    item
      Name = 'sender_id'
      DataType = ftString
      Size = 64
    end
    item
      Name = 'recip_id'
      Attributes = [faRequired]
      DataType = ftString
      Size = 255
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint326: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postonsite_messages/'
    Response = RESTResponse326
    Left = 3260
    Top = 3260
  end
  object RESTResponse326: TRESTResponse
    Left = 3912
    Top = 3912
  end
object postonsite_messagesPostMemTable326: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftAutoInc
    end
    item
      Name = 'username'
      Attributes = [faRequired]
      DataType = ftString
      Size = 64
    end
    item
      Name = 'message'
      DataType = ftMemo
    end
    item
      Name = 'ip'
      Attributes = [faRequired]
      DataType = ftString
      Size = 15
    end
    item
      Name = 'date'
      Attributes = [faRequired]
      DataType = ftDateTime
    end
    item
      Name = 'sender_id'
      DataType = ftString
      Size = 64
    end
    item
      Name = 'recip_id'
      Attributes = [faRequired]
      DataType = ftString
      Size = 255
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postonsite_messagesMemTable326: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint327: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteonsite_messages/?id={id}'
    Response = RESTResponse327
    Left = 3270
    Top = 3270
  end
  object RESTResponse327: TRESTResponse
    Left = 3924
    Top = 3924
  end

  object BackendEndpoint328: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getonsite_online/?format={format}'
    Response = RESTResponse328
    Left = 3280
    Top = 3280
  end
  object RESTResponse328: TRESTResponse
    Left = 3936
    Top = 3936
  end
object getonsite_onlineMemTable328: TFDMemTable
  FieldDefs = <
    item
      Name = 'hash'
      Attributes = [faRequired]
      DataType = ftString
      Size = 32
    end
    item
      Name = 'ip'
      Attributes = [faRequired]
      DataType = ftString
      Size = 15
    end
    item
      Name = 'last_update'
      Attributes = [faRequired]
      DataType = ftDateTime
    end
    item
      Name = 'username'
      Attributes = [faRequired]
      DataType = ftString
      Size = 64
    end
    item
      Name = 'userid'
      DataType = ftLongWord
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint329: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postonsite_online/'
    Response = RESTResponse329
    Left = 3290
    Top = 3290
  end
  object RESTResponse329: TRESTResponse
    Left = 3948
    Top = 3948
  end
object postonsite_onlinePostMemTable329: TFDMemTable
  FieldDefs = <
    item
      Name = 'hash'
      Attributes = [faRequired]
      DataType = ftString
      Size = 32
    end
    item
      Name = 'ip'
      Attributes = [faRequired]
      DataType = ftString
      Size = 15
    end
    item
      Name = 'last_update'
      Attributes = [faRequired]
      DataType = ftDateTime
    end
    item
      Name = 'username'
      Attributes = [faRequired]
      DataType = ftString
      Size = 64
    end
    item
      Name = 'userid'
      DataType = ftLongWord
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postonsite_onlineMemTable329: TFDMemTable
  FieldDefs = <
    item
      Name = 'hash'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint330: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'hash'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteonsite_online/?hash={hash}'
    Response = RESTResponse330
    Left = 3300
    Top = 3300
  end
  object RESTResponse330: TRESTResponse
    Left = 3960
    Top = 3960
  end

  object BackendEndpoint331: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getonsite_portal_activity/?format={format}'
    Response = RESTResponse331
    Left = 3310
    Top = 3310
  end
  object RESTResponse331: TRESTResponse
    Left = 3972
    Top = 3972
  end
object getonsite_portal_activityMemTable331: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'date'
      DataType = ftDateTime
    end
    item
      Name = 'patient_id'
      DataType = ftLargeint
    end
    item
      Name = 'activity'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'require_audit'
      DataType = ftBoolean
    end
    item
      Name = 'pending_action'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'action_taken'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'status'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'narrative'
      DataType = ftMemo
    end
    item
      Name = 'table_action'
      DataType = ftMemo
    end
    item
      Name = 'table_args'
      DataType = ftMemo
    end
    item
      Name = 'action_user'
      DataType = ftInteger
    end
    item
      Name = 'action_taken_time'
      DataType = ftDateTime
    end
    item
      Name = 'checksum'
      DataType = ftMemo
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint332: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postonsite_portal_activity/'
    Response = RESTResponse332
    Left = 3320
    Top = 3320
  end
  object RESTResponse332: TRESTResponse
    Left = 3984
    Top = 3984
  end
object postonsite_portal_activityPostMemTable332: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'date'
      DataType = ftDateTime
    end
    item
      Name = 'patient_id'
      DataType = ftLargeint
    end
    item
      Name = 'activity'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'require_audit'
      DataType = ftBoolean
    end
    item
      Name = 'pending_action'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'action_taken'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'status'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'narrative'
      DataType = ftMemo
    end
    item
      Name = 'table_action'
      DataType = ftMemo
    end
    item
      Name = 'table_args'
      DataType = ftMemo
    end
    item
      Name = 'action_user'
      DataType = ftInteger
    end
    item
      Name = 'action_taken_time'
      DataType = ftDateTime
    end
    item
      Name = 'checksum'
      DataType = ftMemo
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postonsite_portal_activityMemTable332: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint333: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteonsite_portal_activity/?id={id}'
    Response = RESTResponse333
    Left = 3330
    Top = 3330
  end
  object RESTResponse333: TRESTResponse
    Left = 3996
    Top = 3996
  end

  object BackendEndpoint334: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getonsite_signatures/?format={format}'
    Response = RESTResponse334
    Left = 3340
    Top = 3340
  end
  object RESTResponse334: TRESTResponse
    Left = 4008
    Top = 4008
  end
object getonsite_signaturesMemTable334: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'status'
      DataType = ftString
      Size = 128
    end
    item
      Name = 'type'
      Attributes = [faRequired]
      DataType = ftString
      Size = 128
    end
    item
      Name = 'created'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'lastmod'
      Attributes = [faRequired]
      DataType = ftDateTime
    end
    item
      Name = 'pid'
      DataType = ftLargeint
    end
    item
      Name = 'encounter'
      DataType = ftInteger
    end
    item
      Name = 'user'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'activity'
      DataType = ftShortint
    end
    item
      Name = 'authorized'
      DataType = ftShortint
    end
    item
      Name = 'signator'
      Attributes = [faRequired]
      DataType = ftString
      Size = 255
    end
    item
      Name = 'sig_image'
      DataType = ftMemo
    end
    item
      Name = 'signature'
      DataType = ftMemo
    end
    item
      Name = 'sig_hash'
      Attributes = [faRequired]
      DataType = ftString
      Size = 128
    end
    item
      Name = 'ip'
      Attributes = [faRequired]
      DataType = ftString
      Size = 46
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint335: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postonsite_signatures/'
    Response = RESTResponse335
    Left = 3350
    Top = 3350
  end
  object RESTResponse335: TRESTResponse
    Left = 4020
    Top = 4020
  end
object postonsite_signaturesPostMemTable335: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'status'
      DataType = ftString
      Size = 128
    end
    item
      Name = 'type'
      Attributes = [faRequired]
      DataType = ftString
      Size = 128
    end
    item
      Name = 'created'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'lastmod'
      Attributes = [faRequired]
      DataType = ftDateTime
    end
    item
      Name = 'pid'
      DataType = ftLargeint
    end
    item
      Name = 'encounter'
      DataType = ftInteger
    end
    item
      Name = 'user'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'activity'
      DataType = ftShortint
    end
    item
      Name = 'authorized'
      DataType = ftShortint
    end
    item
      Name = 'signator'
      Attributes = [faRequired]
      DataType = ftString
      Size = 255
    end
    item
      Name = 'sig_image'
      DataType = ftMemo
    end
    item
      Name = 'signature'
      DataType = ftMemo
    end
    item
      Name = 'sig_hash'
      Attributes = [faRequired]
      DataType = ftString
      Size = 128
    end
    item
      Name = 'ip'
      Attributes = [faRequired]
      DataType = ftString
      Size = 46
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postonsite_signaturesMemTable335: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint336: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteonsite_signatures/?id={id}'
    Response = RESTResponse336
    Left = 3360
    Top = 3360
  end
  object RESTResponse336: TRESTResponse
    Left = 4032
    Top = 4032
  end

  object BackendEndpoint337: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getopenemr_module_vars/?format={format}'
    Response = RESTResponse337
    Left = 3370
    Top = 3370
  end
  object RESTResponse337: TRESTResponse
    Left = 4044
    Top = 4044
  end
object getopenemr_module_varsMemTable337: TFDMemTable
  FieldDefs = <
    item
      Name = 'pn_id'
      DataType = ftAutoInc
    end
    item
      Name = 'pn_modname'
      DataType = ftString
      Size = 64
    end
    item
      Name = 'pn_name'
      DataType = ftString
      Size = 64
    end
    item
      Name = 'pn_value'
      DataType = ftMemo
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint338: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postopenemr_module_vars/'
    Response = RESTResponse338
    Left = 3380
    Top = 3380
  end
  object RESTResponse338: TRESTResponse
    Left = 4056
    Top = 4056
  end
object postopenemr_module_varsPostMemTable338: TFDMemTable
  FieldDefs = <
    item
      Name = 'pn_id'
      DataType = ftAutoInc
    end
    item
      Name = 'pn_modname'
      DataType = ftString
      Size = 64
    end
    item
      Name = 'pn_name'
      DataType = ftString
      Size = 64
    end
    item
      Name = 'pn_value'
      DataType = ftMemo
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postopenemr_module_varsMemTable338: TFDMemTable
  FieldDefs = <
    item
      Name = 'pn_id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint339: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'pn_id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteopenemr_module_vars/?pn_id={pn_id}'
    Response = RESTResponse339
    Left = 3390
    Top = 3390
  end
  object RESTResponse339: TRESTResponse
    Left = 4068
    Top = 4068
  end

  object BackendEndpoint340: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getopenemr_modules/?format={format}'
    Response = RESTResponse340
    Left = 3400
    Top = 3400
  end
  object RESTResponse340: TRESTResponse
    Left = 4080
    Top = 4080
  end
object getopenemr_modulesMemTable340: TFDMemTable
  FieldDefs = <
    item
      Name = 'pn_id'
      DataType = ftAutoInc
    end
    item
      Name = 'pn_name'
      DataType = ftString
      Size = 64
    end
    item
      Name = 'pn_type'
      DataType = ftInteger
    end
    item
      Name = 'pn_displayname'
      DataType = ftString
      Size = 64
    end
    item
      Name = 'pn_description'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'pn_regid'
      DataType = ftLongWord
    end
    item
      Name = 'pn_directory'
      DataType = ftString
      Size = 64
    end
    item
      Name = 'pn_version'
      DataType = ftString
      Size = 10
    end
    item
      Name = 'pn_admin_capable'
      DataType = ftBoolean
    end
    item
      Name = 'pn_user_capable'
      DataType = ftBoolean
    end
    item
      Name = 'pn_state'
      DataType = ftBoolean
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint341: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postopenemr_modules/'
    Response = RESTResponse341
    Left = 3410
    Top = 3410
  end
  object RESTResponse341: TRESTResponse
    Left = 4092
    Top = 4092
  end
object postopenemr_modulesPostMemTable341: TFDMemTable
  FieldDefs = <
    item
      Name = 'pn_id'
      DataType = ftAutoInc
    end
    item
      Name = 'pn_name'
      DataType = ftString
      Size = 64
    end
    item
      Name = 'pn_type'
      DataType = ftInteger
    end
    item
      Name = 'pn_displayname'
      DataType = ftString
      Size = 64
    end
    item
      Name = 'pn_description'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'pn_regid'
      DataType = ftLongWord
    end
    item
      Name = 'pn_directory'
      DataType = ftString
      Size = 64
    end
    item
      Name = 'pn_version'
      DataType = ftString
      Size = 10
    end
    item
      Name = 'pn_admin_capable'
      DataType = ftBoolean
    end
    item
      Name = 'pn_user_capable'
      DataType = ftBoolean
    end
    item
      Name = 'pn_state'
      DataType = ftBoolean
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postopenemr_modulesMemTable341: TFDMemTable
  FieldDefs = <
    item
      Name = 'pn_id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint342: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'pn_id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteopenemr_modules/?pn_id={pn_id}'
    Response = RESTResponse342
    Left = 3420
    Top = 3420
  end
  object RESTResponse342: TRESTResponse
    Left = 4104
    Top = 4104
  end

  object BackendEndpoint343: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getopenemr_postcalendar_categories/?format={format}'
    Response = RESTResponse343
    Left = 3430
    Top = 3430
  end
  object RESTResponse343: TRESTResponse
    Left = 4116
    Top = 4116
  end
object getopenemr_postcalendar_categoriesMemTable343: TFDMemTable
  FieldDefs = <
    item
      Name = 'pc_catid'
      DataType = ftAutoInc
    end
    item
      Name = 'pc_constant_id'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'pc_catname'
      DataType = ftString
      Size = 100
    end
    item
      Name = 'pc_catcolor'
      DataType = ftString
      Size = 50
    end
    item
      Name = 'pc_catdesc'
      DataType = ftMemo
    end
    item
      Name = 'pc_recurrtype'
      DataType = ftInteger
    end
    item
      Name = 'pc_enddate'
      DataType = ftDate
    end
    item
      Name = 'pc_recurrspec'
      DataType = ftMemo
    end
    item
      Name = 'pc_recurrfreq'
      DataType = ftInteger
    end
    item
      Name = 'pc_duration'
      DataType = ftLargeint
    end
    item
      Name = 'pc_end_date_flag'
      DataType = ftBoolean
    end
    item
      Name = 'pc_end_date_type'
      DataType = ftInteger
    end
    item
      Name = 'pc_end_date_freq'
      DataType = ftInteger
    end
    item
      Name = 'pc_end_all_day'
      DataType = ftBoolean
    end
    item
      Name = 'pc_dailylimit'
      DataType = ftInteger
    end
    item
      Name = 'pc_cattype'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'pc_active'
      DataType = ftBoolean
    end
    item
      Name = 'pc_seq'
      DataType = ftInteger
    end
    item
      Name = 'aco_spec'
      DataType = ftString
      Size = 63
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint344: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postopenemr_postcalendar_categories/'
    Response = RESTResponse344
    Left = 3440
    Top = 3440
  end
  object RESTResponse344: TRESTResponse
    Left = 4128
    Top = 4128
  end
object postopenemr_postcalendar_categoriesPostMemTable344: TFDMemTable
  FieldDefs = <
    item
      Name = 'pc_catid'
      DataType = ftAutoInc
    end
    item
      Name = 'pc_constant_id'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'pc_catname'
      DataType = ftString
      Size = 100
    end
    item
      Name = 'pc_catcolor'
      DataType = ftString
      Size = 50
    end
    item
      Name = 'pc_catdesc'
      DataType = ftMemo
    end
    item
      Name = 'pc_recurrtype'
      DataType = ftInteger
    end
    item
      Name = 'pc_enddate'
      DataType = ftDate
    end
    item
      Name = 'pc_recurrspec'
      DataType = ftMemo
    end
    item
      Name = 'pc_recurrfreq'
      DataType = ftInteger
    end
    item
      Name = 'pc_duration'
      DataType = ftLargeint
    end
    item
      Name = 'pc_end_date_flag'
      DataType = ftBoolean
    end
    item
      Name = 'pc_end_date_type'
      DataType = ftInteger
    end
    item
      Name = 'pc_end_date_freq'
      DataType = ftInteger
    end
    item
      Name = 'pc_end_all_day'
      DataType = ftBoolean
    end
    item
      Name = 'pc_dailylimit'
      DataType = ftInteger
    end
    item
      Name = 'pc_cattype'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'pc_active'
      DataType = ftBoolean
    end
    item
      Name = 'pc_seq'
      DataType = ftInteger
    end
    item
      Name = 'aco_spec'
      DataType = ftString
      Size = 63
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postopenemr_postcalendar_categoriesMemTable344: TFDMemTable
  FieldDefs = <
    item
      Name = 'pc_catid'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint345: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'pc_catid'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteopenemr_postcalendar_categories/?pc_catid={pc_catid}'
    Response = RESTResponse345
    Left = 3450
    Top = 3450
  end
  object RESTResponse345: TRESTResponse
    Left = 4140
    Top = 4140
  end

  object BackendEndpoint346: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getopenemr_postcalendar_events/?format={format}'
    Response = RESTResponse346
    Left = 3460
    Top = 3460
  end
  object RESTResponse346: TRESTResponse
    Left = 4152
    Top = 4152
  end
object getopenemr_postcalendar_eventsMemTable346: TFDMemTable
  FieldDefs = <
    item
      Name = 'pc_eid'
      DataType = ftAutoInc
    end
    item
      Name = 'pc_catid'
      DataType = ftInteger
    end
    item
      Name = 'pc_multiple'
      Attributes = [faRequired]
      DataType = ftLongWord
    end
    item
      Name = 'pc_aid'
      DataType = ftString
      Size = 30
    end
    item
      Name = 'pc_pid'
      DataType = ftString
      Size = 11
    end
    item
      Name = 'pc_gid'
      DataType = ftInteger
    end
    item
      Name = 'pc_title'
      DataType = ftString
      Size = 150
    end
    item
      Name = 'pc_time'
      DataType = ftDateTime
    end
    item
      Name = 'pc_hometext'
      DataType = ftMemo
    end
    item
      Name = 'pc_comments'
      DataType = ftInteger
    end
    item
      Name = 'pc_counter'
      DataType = ftLongWord
    end
    item
      Name = 'pc_topic'
      DataType = ftInteger
    end
    item
      Name = 'pc_informant'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'pc_eventDate'
      DataType = ftDate
    end
    item
      Name = 'pc_endDate'
      DataType = ftDate
    end
    item
      Name = 'pc_duration'
      DataType = ftLargeint
    end
    item
      Name = 'pc_recurrtype'
      DataType = ftInteger
    end
    item
      Name = 'pc_recurrspec'
      DataType = ftMemo
    end
    item
      Name = 'pc_recurrfreq'
      DataType = ftInteger
    end
    item
      Name = 'pc_startTime'
      DataType = ftTime
    end
    item
      Name = 'pc_endTime'
      DataType = ftTime
    end
    item
      Name = 'pc_alldayevent'
      DataType = ftInteger
    end
    item
      Name = 'pc_location'
      DataType = ftMemo
    end
    item
      Name = 'pc_conttel'
      DataType = ftString
      Size = 50
    end
    item
      Name = 'pc_contname'
      DataType = ftString
      Size = 50
    end
    item
      Name = 'pc_contemail'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'pc_website'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'pc_fee'
      DataType = ftString
      Size = 50
    end
    item
      Name = 'pc_eventstatus'
      DataType = ftInteger
    end
    item
      Name = 'pc_sharing'
      DataType = ftInteger
    end
    item
      Name = 'pc_language'
      DataType = ftString
      Size = 30
    end
    item
      Name = 'pc_apptstatus'
      DataType = ftString
      Size = 15
    end
    item
      Name = 'pc_prefcatid'
      DataType = ftInteger
    end
    item
      Name = 'pc_facility'
      DataType = ftInteger
    end
    item
      Name = 'pc_sendalertsms'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'pc_sendalertemail'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'pc_billing_location'
      DataType = ftSmallint
    end
    item
      Name = 'pc_room'
      DataType = ftString
      Size = 20
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint347: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postopenemr_postcalendar_events/'
    Response = RESTResponse347
    Left = 3470
    Top = 3470
  end
  object RESTResponse347: TRESTResponse
    Left = 4164
    Top = 4164
  end
object postopenemr_postcalendar_eventsPostMemTable347: TFDMemTable
  FieldDefs = <
    item
      Name = 'pc_eid'
      DataType = ftAutoInc
    end
    item
      Name = 'pc_catid'
      DataType = ftInteger
    end
    item
      Name = 'pc_multiple'
      Attributes = [faRequired]
      DataType = ftLongWord
    end
    item
      Name = 'pc_aid'
      DataType = ftString
      Size = 30
    end
    item
      Name = 'pc_pid'
      DataType = ftString
      Size = 11
    end
    item
      Name = 'pc_gid'
      DataType = ftInteger
    end
    item
      Name = 'pc_title'
      DataType = ftString
      Size = 150
    end
    item
      Name = 'pc_time'
      DataType = ftDateTime
    end
    item
      Name = 'pc_hometext'
      DataType = ftMemo
    end
    item
      Name = 'pc_comments'
      DataType = ftInteger
    end
    item
      Name = 'pc_counter'
      DataType = ftLongWord
    end
    item
      Name = 'pc_topic'
      DataType = ftInteger
    end
    item
      Name = 'pc_informant'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'pc_eventDate'
      DataType = ftDate
    end
    item
      Name = 'pc_endDate'
      DataType = ftDate
    end
    item
      Name = 'pc_duration'
      DataType = ftLargeint
    end
    item
      Name = 'pc_recurrtype'
      DataType = ftInteger
    end
    item
      Name = 'pc_recurrspec'
      DataType = ftMemo
    end
    item
      Name = 'pc_recurrfreq'
      DataType = ftInteger
    end
    item
      Name = 'pc_startTime'
      DataType = ftTime
    end
    item
      Name = 'pc_endTime'
      DataType = ftTime
    end
    item
      Name = 'pc_alldayevent'
      DataType = ftInteger
    end
    item
      Name = 'pc_location'
      DataType = ftMemo
    end
    item
      Name = 'pc_conttel'
      DataType = ftString
      Size = 50
    end
    item
      Name = 'pc_contname'
      DataType = ftString
      Size = 50
    end
    item
      Name = 'pc_contemail'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'pc_website'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'pc_fee'
      DataType = ftString
      Size = 50
    end
    item
      Name = 'pc_eventstatus'
      DataType = ftInteger
    end
    item
      Name = 'pc_sharing'
      DataType = ftInteger
    end
    item
      Name = 'pc_language'
      DataType = ftString
      Size = 30
    end
    item
      Name = 'pc_apptstatus'
      DataType = ftString
      Size = 15
    end
    item
      Name = 'pc_prefcatid'
      DataType = ftInteger
    end
    item
      Name = 'pc_facility'
      DataType = ftInteger
    end
    item
      Name = 'pc_sendalertsms'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'pc_sendalertemail'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'pc_billing_location'
      DataType = ftSmallint
    end
    item
      Name = 'pc_room'
      DataType = ftString
      Size = 20
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postopenemr_postcalendar_eventsMemTable347: TFDMemTable
  FieldDefs = <
    item
      Name = 'pc_eid'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint348: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'pc_eid'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteopenemr_postcalendar_events/?pc_eid={pc_eid}'
    Response = RESTResponse348
    Left = 3480
    Top = 3480
  end
  object RESTResponse348: TRESTResponse
    Left = 4176
    Top = 4176
  end

  object BackendEndpoint349: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getopenemr_postcalendar_limits/?format={format}'
    Response = RESTResponse349
    Left = 3490
    Top = 3490
  end
  object RESTResponse349: TRESTResponse
    Left = 4188
    Top = 4188
  end
object getopenemr_postcalendar_limitsMemTable349: TFDMemTable
  FieldDefs = <
    item
      Name = 'pc_limitid'
      DataType = ftAutoInc
    end
    item
      Name = 'pc_catid'
      DataType = ftInteger
    end
    item
      Name = 'pc_starttime'
      DataType = ftTime
    end
    item
      Name = 'pc_endtime'
      DataType = ftTime
    end
    item
      Name = 'pc_limit'
      DataType = ftInteger
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint350: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postopenemr_postcalendar_limits/'
    Response = RESTResponse350
    Left = 3500
    Top = 3500
  end
  object RESTResponse350: TRESTResponse
    Left = 4200
    Top = 4200
  end
object postopenemr_postcalendar_limitsPostMemTable350: TFDMemTable
  FieldDefs = <
    item
      Name = 'pc_limitid'
      DataType = ftAutoInc
    end
    item
      Name = 'pc_catid'
      DataType = ftInteger
    end
    item
      Name = 'pc_starttime'
      DataType = ftTime
    end
    item
      Name = 'pc_endtime'
      DataType = ftTime
    end
    item
      Name = 'pc_limit'
      DataType = ftInteger
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postopenemr_postcalendar_limitsMemTable350: TFDMemTable
  FieldDefs = <
    item
      Name = 'pc_limitid'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint351: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'pc_limitid'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteopenemr_postcalendar_limits/?pc_limitid={pc_limitid}'
    Response = RESTResponse351
    Left = 3510
    Top = 3510
  end
  object RESTResponse351: TRESTResponse
    Left = 4212
    Top = 4212
  end

  object BackendEndpoint352: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getopenemr_postcalendar_topics/?format={format}'
    Response = RESTResponse352
    Left = 3520
    Top = 3520
  end
  object RESTResponse352: TRESTResponse
    Left = 4224
    Top = 4224
  end
object getopenemr_postcalendar_topicsMemTable352: TFDMemTable
  FieldDefs = <
    item
      Name = 'pc_catid'
      DataType = ftAutoInc
    end
    item
      Name = 'pc_catname'
      DataType = ftString
      Size = 100
    end
    item
      Name = 'pc_catcolor'
      DataType = ftString
      Size = 50
    end
    item
      Name = 'pc_catdesc'
      DataType = ftMemo
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint353: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postopenemr_postcalendar_topics/'
    Response = RESTResponse353
    Left = 3530
    Top = 3530
  end
  object RESTResponse353: TRESTResponse
    Left = 4236
    Top = 4236
  end
object postopenemr_postcalendar_topicsPostMemTable353: TFDMemTable
  FieldDefs = <
    item
      Name = 'pc_catid'
      DataType = ftAutoInc
    end
    item
      Name = 'pc_catname'
      DataType = ftString
      Size = 100
    end
    item
      Name = 'pc_catcolor'
      DataType = ftString
      Size = 50
    end
    item
      Name = 'pc_catdesc'
      DataType = ftMemo
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postopenemr_postcalendar_topicsMemTable353: TFDMemTable
  FieldDefs = <
    item
      Name = 'pc_catid'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint354: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'pc_catid'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteopenemr_postcalendar_topics/?pc_catid={pc_catid}'
    Response = RESTResponse354
    Left = 3540
    Top = 3540
  end
  object RESTResponse354: TRESTResponse
    Left = 4248
    Top = 4248
  end

  object BackendEndpoint355: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getopenemr_session_info/?format={format}'
    Response = RESTResponse355
    Left = 3550
    Top = 3550
  end
  object RESTResponse355: TRESTResponse
    Left = 4260
    Top = 4260
  end
object getopenemr_session_infoMemTable355: TFDMemTable
  FieldDefs = <
    item
      Name = 'pn_sessid'
      DataType = ftString
      Size = 32
    end
    item
      Name = 'pn_ipaddr'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'pn_firstused'
      DataType = ftInteger
    end
    item
      Name = 'pn_lastused'
      DataType = ftInteger
    end
    item
      Name = 'pn_uid'
      DataType = ftInteger
    end
    item
      Name = 'pn_vars'
      DataType = ftBlob
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint356: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postopenemr_session_info/'
    Response = RESTResponse356
    Left = 3560
    Top = 3560
  end
  object RESTResponse356: TRESTResponse
    Left = 4272
    Top = 4272
  end
object postopenemr_session_infoPostMemTable356: TFDMemTable
  FieldDefs = <
    item
      Name = 'pn_sessid'
      DataType = ftString
      Size = 32
    end
    item
      Name = 'pn_ipaddr'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'pn_firstused'
      DataType = ftInteger
    end
    item
      Name = 'pn_lastused'
      DataType = ftInteger
    end
    item
      Name = 'pn_uid'
      DataType = ftInteger
    end
    item
      Name = 'pn_vars'
      DataType = ftBlob
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postopenemr_session_infoMemTable356: TFDMemTable
  FieldDefs = <
    item
      Name = 'pn_sessid'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint357: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'pn_sessid'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteopenemr_session_info/?pn_sessid={pn_sessid}'
    Response = RESTResponse357
    Left = 3570
    Top = 3570
  end
  object RESTResponse357: TRESTResponse
    Left = 4284
    Top = 4284
  end

  object BackendEndpoint358: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getpatient_access_offsite/?format={format}'
    Response = RESTResponse358
    Left = 3580
    Top = 3580
  end
  object RESTResponse358: TRESTResponse
    Left = 4296
    Top = 4296
  end
object getpatient_access_offsiteMemTable358: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftAutoInc
    end
    item
      Name = 'pid'
      Attributes = [faRequired]
      DataType = ftLargeint
    end
    item
      Name = 'portal_username'
      Attributes = [faRequired]
      DataType = ftString
      Size = 100
    end
    item
      Name = 'portal_pwd'
      Attributes = [faRequired]
      DataType = ftString
      Size = 100
    end
    item
      Name = 'portal_pwd_status'
      DataType = ftShortint
    end
    item
      Name = 'authorize_net_id'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'portal_relation'
      DataType = ftString
      Size = 100
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint359: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postpatient_access_offsite/'
    Response = RESTResponse359
    Left = 3590
    Top = 3590
  end
  object RESTResponse359: TRESTResponse
    Left = 4308
    Top = 4308
  end
object postpatient_access_offsitePostMemTable359: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftAutoInc
    end
    item
      Name = 'pid'
      Attributes = [faRequired]
      DataType = ftLargeint
    end
    item
      Name = 'portal_username'
      Attributes = [faRequired]
      DataType = ftString
      Size = 100
    end
    item
      Name = 'portal_pwd'
      Attributes = [faRequired]
      DataType = ftString
      Size = 100
    end
    item
      Name = 'portal_pwd_status'
      DataType = ftShortint
    end
    item
      Name = 'authorize_net_id'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'portal_relation'
      DataType = ftString
      Size = 100
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postpatient_access_offsiteMemTable359: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint360: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletepatient_access_offsite/?id={id}'
    Response = RESTResponse360
    Left = 3600
    Top = 3600
  end
  object RESTResponse360: TRESTResponse
    Left = 4320
    Top = 4320
  end

  object BackendEndpoint361: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getpatient_access_onsite/?format={format}'
    Response = RESTResponse361
    Left = 3610
    Top = 3610
  end
  object RESTResponse361: TRESTResponse
    Left = 4332
    Top = 4332
  end
object getpatient_access_onsiteMemTable361: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftAutoInc
    end
    item
      Name = 'pid'
      DataType = ftLargeint
    end
    item
      Name = 'portal_username'
      DataType = ftString
      Size = 100
    end
    item
      Name = 'portal_pwd'
      DataType = ftString
      Size = 100
    end
    item
      Name = 'portal_pwd_status'
      DataType = ftShortint
    end
    item
      Name = 'portal_salt'
      DataType = ftString
      Size = 100
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint362: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postpatient_access_onsite/'
    Response = RESTResponse362
    Left = 3620
    Top = 3620
  end
  object RESTResponse362: TRESTResponse
    Left = 4344
    Top = 4344
  end
object postpatient_access_onsitePostMemTable362: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftAutoInc
    end
    item
      Name = 'pid'
      DataType = ftLargeint
    end
    item
      Name = 'portal_username'
      DataType = ftString
      Size = 100
    end
    item
      Name = 'portal_pwd'
      DataType = ftString
      Size = 100
    end
    item
      Name = 'portal_pwd_status'
      DataType = ftShortint
    end
    item
      Name = 'portal_salt'
      DataType = ftString
      Size = 100
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postpatient_access_onsiteMemTable362: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint363: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletepatient_access_onsite/?id={id}'
    Response = RESTResponse363
    Left = 3630
    Top = 3630
  end
  object RESTResponse363: TRESTResponse
    Left = 4356
    Top = 4356
  end

  object BackendEndpoint364: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getpatient_data/?format={format}'
    Response = RESTResponse364
    Left = 3640
    Top = 3640
  end
  object RESTResponse364: TRESTResponse
    Left = 4368
    Top = 4368
  end
object getpatient_dataMemTable364: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'title'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'language'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'financial'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'fname'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'lname'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'mname'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'DOB'
      DataType = ftDate
    end
    item
      Name = 'street'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'postal_code'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'city'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'state'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'country_code'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'drivers_license'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'ss'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'occupation'
      DataType = ftMemo
    end
    item
      Name = 'phone_home'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'phone_biz'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'phone_contact'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'phone_cell'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'pharmacy_id'
      DataType = ftInteger
    end
    item
      Name = 'status'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'contact_relationship'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'date'
      DataType = ftDateTime
    end
    item
      Name = 'sex'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'referrer'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'referrerID'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'providerID'
      DataType = ftInteger
    end
    item
      Name = 'ref_providerID'
      DataType = ftInteger
    end
    item
      Name = 'email'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'email_direct'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'ethnoracial'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'race'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'ethnicity'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'religion'
      DataType = ftString
      Size = 40
    end
    item
      Name = 'interpretter'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'migrantseasonal'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'family_size'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'monthly_income'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'billing_note'
      DataType = ftMemo
    end
    item
      Name = 'homeless'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'financial_review'
      DataType = ftDateTime
    end
    item
      Name = 'pubpid'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'pid'
      DataType = ftLargeint
    end
    item
      Name = 'genericname1'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'genericval1'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'genericname2'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'genericval2'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'hipaa_mail'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'hipaa_voice'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'hipaa_notice'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'hipaa_message'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'hipaa_allowsms'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'hipaa_allowemail'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'squad'
      DataType = ftString
      Size = 32
    end
    item
      Name = 'fitness'
      DataType = ftInteger
    end
    item
      Name = 'referral_source'
      DataType = ftString
      Size = 30
    end
    item
      Name = 'usertext1'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'usertext2'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'usertext3'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'usertext4'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'usertext5'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'usertext6'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'usertext7'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'usertext8'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'userlist1'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'userlist2'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'userlist3'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'userlist4'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'userlist5'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'userlist6'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'userlist7'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'pricelevel'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'regdate'
      DataType = ftDate
    end
    item
      Name = 'contrastart'
      DataType = ftDate
    end
    item
      Name = 'completed_ad'
      DataType = ftString
      Size = 3
    end
    item
      Name = 'ad_reviewed'
      DataType = ftDate
    end
    item
      Name = 'vfc'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'mothersname'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'guardiansname'
      DataType = ftMemo
    end
    item
      Name = 'allow_imm_reg_use'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'allow_imm_info_share'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'allow_health_info_ex'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'allow_patient_portal'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'deceased_date'
      DataType = ftDateTime
    end
    item
      Name = 'deceased_reason'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'soap_import_status'
      DataType = ftShortint
    end
    item
      Name = 'cmsportal_login'
      DataType = ftString
      Size = 60
    end
    item
      Name = 'care_team'
      DataType = ftInteger
    end
    item
      Name = 'county'
      DataType = ftString
      Size = 40
    end
    item
      Name = 'industry'
      DataType = ftMemo
    end
    item
      Name = 'imm_reg_status'
      DataType = ftMemo
    end
    item
      Name = 'imm_reg_stat_effdate'
      DataType = ftMemo
    end
    item
      Name = 'publicity_code'
      DataType = ftMemo
    end
    item
      Name = 'publ_code_eff_date'
      DataType = ftMemo
    end
    item
      Name = 'protect_indicator'
      DataType = ftMemo
    end
    item
      Name = 'prot_indi_effdate'
      DataType = ftMemo
    end
    item
      Name = 'guardianrelationship'
      DataType = ftMemo
    end
    item
      Name = 'guardiansex'
      DataType = ftMemo
    end
    item
      Name = 'guardianaddress'
      DataType = ftMemo
    end
    item
      Name = 'guardiancity'
      DataType = ftMemo
    end
    item
      Name = 'guardianstate'
      DataType = ftMemo
    end
    item
      Name = 'guardianpostalcode'
      DataType = ftMemo
    end
    item
      Name = 'guardiancountry'
      DataType = ftMemo
    end
    item
      Name = 'guardianphone'
      DataType = ftMemo
    end
    item
      Name = 'guardianworkphone'
      DataType = ftMemo
    end
    item
      Name = 'guardianemail'
      DataType = ftMemo
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint365: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getpatient_portal_menu/?format={format}'
    Response = RESTResponse365
    Left = 3650
    Top = 3650
  end
  object RESTResponse365: TRESTResponse
    Left = 4380
    Top = 4380
  end
object getpatient_portal_menuMemTable365: TFDMemTable
  FieldDefs = <
    item
      Name = 'patient_portal_menu_id'
      DataType = ftAutoInc
    end
    item
      Name = 'patient_portal_menu_group_id'
      DataType = ftInteger
    end
    item
      Name = 'menu_name'
      DataType = ftString
      Size = 40
    end
    item
      Name = 'menu_order'
      DataType = ftSmallint
    end
    item
      Name = 'menu_status'
      DataType = ftShortint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint366: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postpatient_portal_menu/'
    Response = RESTResponse366
    Left = 3660
    Top = 3660
  end
  object RESTResponse366: TRESTResponse
    Left = 4392
    Top = 4392
  end
object postpatient_portal_menuPostMemTable366: TFDMemTable
  FieldDefs = <
    item
      Name = 'patient_portal_menu_id'
      DataType = ftAutoInc
    end
    item
      Name = 'patient_portal_menu_group_id'
      DataType = ftInteger
    end
    item
      Name = 'menu_name'
      DataType = ftString
      Size = 40
    end
    item
      Name = 'menu_order'
      DataType = ftSmallint
    end
    item
      Name = 'menu_status'
      DataType = ftShortint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postpatient_portal_menuMemTable366: TFDMemTable
  FieldDefs = <
    item
      Name = 'patient_portal_menu_id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint367: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'patient_portal_menu_id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletepatient_portal_menu/?patient_portal_menu_id={patient_portal_menu_id}'
    Response = RESTResponse367
    Left = 3670
    Top = 3670
  end
  object RESTResponse367: TRESTResponse
    Left = 4404
    Top = 4404
  end

  object BackendEndpoint368: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getpatient_reminders/?format={format}'
    Response = RESTResponse368
    Left = 3680
    Top = 3680
  end
  object RESTResponse368: TRESTResponse
    Left = 4416
    Top = 4416
  end
object getpatient_remindersMemTable368: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'active'
      DataType = ftBoolean
    end
    item
      Name = 'date_inactivated'
      DataType = ftDateTime
    end
    item
      Name = 'reason_inactivated'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'due_status'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'pid'
      Attributes = [faRequired]
      DataType = ftLargeint
    end
    item
      Name = 'category'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'item'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'date_created'
      DataType = ftDateTime
    end
    item
      Name = 'date_sent'
      DataType = ftDateTime
    end
    item
      Name = 'voice_status'
      DataType = ftBoolean
    end
    item
      Name = 'sms_status'
      DataType = ftBoolean
    end
    item
      Name = 'email_status'
      DataType = ftBoolean
    end
    item
      Name = 'mail_status'
      DataType = ftBoolean
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint369: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postpatient_reminders/'
    Response = RESTResponse369
    Left = 3690
    Top = 3690
  end
  object RESTResponse369: TRESTResponse
    Left = 4428
    Top = 4428
  end
object postpatient_remindersPostMemTable369: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'active'
      DataType = ftBoolean
    end
    item
      Name = 'date_inactivated'
      DataType = ftDateTime
    end
    item
      Name = 'reason_inactivated'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'due_status'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'pid'
      Attributes = [faRequired]
      DataType = ftLargeint
    end
    item
      Name = 'category'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'item'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'date_created'
      DataType = ftDateTime
    end
    item
      Name = 'date_sent'
      DataType = ftDateTime
    end
    item
      Name = 'voice_status'
      DataType = ftBoolean
    end
    item
      Name = 'sms_status'
      DataType = ftBoolean
    end
    item
      Name = 'email_status'
      DataType = ftBoolean
    end
    item
      Name = 'mail_status'
      DataType = ftBoolean
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postpatient_remindersMemTable369: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint370: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletepatient_reminders/?id={id}'
    Response = RESTResponse370
    Left = 3700
    Top = 3700
  end
  object RESTResponse370: TRESTResponse
    Left = 4440
    Top = 4440
  end

  object BackendEndpoint371: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getpatient_tracker/?format={format}'
    Response = RESTResponse371
    Left = 3710
    Top = 3710
  end
  object RESTResponse371: TRESTResponse
    Left = 4452
    Top = 4452
  end
object getpatient_trackerMemTable371: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'date'
      DataType = ftDateTime
    end
    item
      Name = 'apptdate'
      DataType = ftDate
    end
    item
      Name = 'appttime'
      DataType = ftTime
    end
    item
      Name = 'eid'
      DataType = ftLargeint
    end
    item
      Name = 'pid'
      DataType = ftLargeint
    end
    item
      Name = 'original_user'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'encounter'
      DataType = ftLargeint
    end
    item
      Name = 'lastseq'
      DataType = ftString
      Size = 4
    end
    item
      Name = 'random_drug_test'
      DataType = ftBoolean
    end
    item
      Name = 'drug_screen_completed'
      DataType = ftBoolean
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint372: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postpatient_tracker/'
    Response = RESTResponse372
    Left = 3720
    Top = 3720
  end
  object RESTResponse372: TRESTResponse
    Left = 4464
    Top = 4464
  end
object postpatient_trackerPostMemTable372: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'date'
      DataType = ftDateTime
    end
    item
      Name = 'apptdate'
      DataType = ftDate
    end
    item
      Name = 'appttime'
      DataType = ftTime
    end
    item
      Name = 'eid'
      DataType = ftLargeint
    end
    item
      Name = 'pid'
      DataType = ftLargeint
    end
    item
      Name = 'original_user'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'encounter'
      DataType = ftLargeint
    end
    item
      Name = 'lastseq'
      DataType = ftString
      Size = 4
    end
    item
      Name = 'random_drug_test'
      DataType = ftBoolean
    end
    item
      Name = 'drug_screen_completed'
      DataType = ftBoolean
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postpatient_trackerMemTable372: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint373: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletepatient_tracker/?id={id}'
    Response = RESTResponse373
    Left = 3730
    Top = 3730
  end
  object RESTResponse373: TRESTResponse
    Left = 4476
    Top = 4476
  end

  object BackendEndpoint374: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getpatient_tracker_element/?format={format}'
    Response = RESTResponse374
    Left = 3740
    Top = 3740
  end
  object RESTResponse374: TRESTResponse
    Left = 4488
    Top = 4488
  end
object getpatient_tracker_elementMemTable374: TFDMemTable
  FieldDefs = <
    item
      Name = 'pt_tracker_id'
      DataType = ftLargeint
    end
    item
      Name = 'start_datetime'
      DataType = ftDateTime
    end
    item
      Name = 'room'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'status'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'seq'
      DataType = ftString
      Size = 4
    end
    item
      Name = 'user'
      DataType = ftString
      Size = 255
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint375: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getpayment_gateway_details/?format={format}'
    Response = RESTResponse375
    Left = 3750
    Top = 3750
  end
  object RESTResponse375: TRESTResponse
    Left = 4500
    Top = 4500
  end
object getpayment_gateway_detailsMemTable375: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftAutoInc
    end
    item
      Name = 'service_name'
      DataType = ftString
      Size = 100
    end
    item
      Name = 'login_id'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'transaction_key'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'md5'
      DataType = ftString
      Size = 255
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint376: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postpayment_gateway_details/'
    Response = RESTResponse376
    Left = 3760
    Top = 3760
  end
  object RESTResponse376: TRESTResponse
    Left = 4512
    Top = 4512
  end
object postpayment_gateway_detailsPostMemTable376: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftAutoInc
    end
    item
      Name = 'service_name'
      DataType = ftString
      Size = 100
    end
    item
      Name = 'login_id'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'transaction_key'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'md5'
      DataType = ftString
      Size = 255
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postpayment_gateway_detailsMemTable376: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint377: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletepayment_gateway_details/?id={id}'
    Response = RESTResponse377
    Left = 3770
    Top = 3770
  end
  object RESTResponse377: TRESTResponse
    Left = 4524
    Top = 4524
  end

  object BackendEndpoint378: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getpayments/?format={format}'
    Response = RESTResponse378
    Left = 3780
    Top = 3780
  end
  object RESTResponse378: TRESTResponse
    Left = 4536
    Top = 4536
  end
object getpaymentsMemTable378: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'pid'
      DataType = ftLargeint
    end
    item
      Name = 'dtime'
      Attributes = [faRequired]
      DataType = ftDateTime
    end
    item
      Name = 'encounter'
      DataType = ftLargeint
    end
    item
      Name = 'user'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'method'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'source'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'amount1'
      DataType = ftBCD
      Precision = 12
      Size = 2
    end
    item
      Name = 'amount2'
      DataType = ftBCD
      Precision = 12
      Size = 2
    end
    item
      Name = 'posted1'
      DataType = ftBCD
      Precision = 12
      Size = 2
    end
    item
      Name = 'posted2'
      DataType = ftBCD
      Precision = 12
      Size = 2
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint379: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postpayments/'
    Response = RESTResponse379
    Left = 3790
    Top = 3790
  end
  object RESTResponse379: TRESTResponse
    Left = 4548
    Top = 4548
  end
object postpaymentsPostMemTable379: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'pid'
      DataType = ftLargeint
    end
    item
      Name = 'dtime'
      Attributes = [faRequired]
      DataType = ftDateTime
    end
    item
      Name = 'encounter'
      DataType = ftLargeint
    end
    item
      Name = 'user'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'method'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'source'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'amount1'
      DataType = ftBCD
      Precision = 12
      Size = 2
    end
    item
      Name = 'amount2'
      DataType = ftBCD
      Precision = 12
      Size = 2
    end
    item
      Name = 'posted1'
      DataType = ftBCD
      Precision = 12
      Size = 2
    end
    item
      Name = 'posted2'
      DataType = ftBCD
      Precision = 12
      Size = 2
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postpaymentsMemTable379: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint380: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletepayments/?id={id}'
    Response = RESTResponse380
    Left = 3800
    Top = 3800
  end
  object RESTResponse380: TRESTResponse
    Left = 4560
    Top = 4560
  end

  object BackendEndpoint381: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getpharmacies/?format={format}'
    Response = RESTResponse381
    Left = 3810
    Top = 3810
  end
  object RESTResponse381: TRESTResponse
    Left = 4572
    Top = 4572
  end
object getpharmaciesMemTable381: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftInteger
    end
    item
      Name = 'name'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'transmit_method'
      DataType = ftInteger
    end
    item
      Name = 'email'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'ncpdp'
      DataType = ftInteger
    end
    item
      Name = 'npi'
      DataType = ftInteger
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint382: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postpharmacies/'
    Response = RESTResponse382
    Left = 3820
    Top = 3820
  end
  object RESTResponse382: TRESTResponse
    Left = 4584
    Top = 4584
  end
object postpharmaciesPostMemTable382: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftInteger
    end
    item
      Name = 'name'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'transmit_method'
      DataType = ftInteger
    end
    item
      Name = 'email'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'ncpdp'
      DataType = ftInteger
    end
    item
      Name = 'npi'
      DataType = ftInteger
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postpharmaciesMemTable382: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint383: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletepharmacies/?id={id}'
    Response = RESTResponse383
    Left = 3830
    Top = 3830
  end
  object RESTResponse383: TRESTResponse
    Left = 4596
    Top = 4596
  end

  object BackendEndpoint384: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getphone_numbers/?format={format}'
    Response = RESTResponse384
    Left = 3840
    Top = 3840
  end
  object RESTResponse384: TRESTResponse
    Left = 4608
    Top = 4608
  end
object getphone_numbersMemTable384: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftInteger
    end
    item
      Name = 'country_code'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'area_code'
      Attributes = [faFixed]
      DataType = ftFixedChar
      Size = 3
    end
    item
      Name = 'prefix'
      Attributes = [faFixed]
      DataType = ftFixedChar
      Size = 3
    end
    item
      Name = 'number'
      DataType = ftString
      Size = 4
    end
    item
      Name = 'type'
      DataType = ftInteger
    end
    item
      Name = 'foreign_id'
      DataType = ftInteger
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint385: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postphone_numbers/'
    Response = RESTResponse385
    Left = 3850
    Top = 3850
  end
  object RESTResponse385: TRESTResponse
    Left = 4620
    Top = 4620
  end
object postphone_numbersPostMemTable385: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftInteger
    end
    item
      Name = 'country_code'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'area_code'
      Attributes = [faFixed]
      DataType = ftFixedChar
      Size = 3
    end
    item
      Name = 'prefix'
      Attributes = [faFixed]
      DataType = ftFixedChar
      Size = 3
    end
    item
      Name = 'number'
      DataType = ftString
      Size = 4
    end
    item
      Name = 'type'
      DataType = ftInteger
    end
    item
      Name = 'foreign_id'
      DataType = ftInteger
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postphone_numbersMemTable385: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint386: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletephone_numbers/?id={id}'
    Response = RESTResponse386
    Left = 3860
    Top = 3860
  end
  object RESTResponse386: TRESTResponse
    Left = 4632
    Top = 4632
  end

  object BackendEndpoint387: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getpnotes/?format={format}'
    Response = RESTResponse387
    Left = 3870
    Top = 3870
  end
  object RESTResponse387: TRESTResponse
    Left = 4644
    Top = 4644
  end
object getpnotesMemTable387: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'date'
      DataType = ftDateTime
    end
    item
      Name = 'body'
      DataType = ftMemo
    end
    item
      Name = 'pid'
      DataType = ftLargeint
    end
    item
      Name = 'user'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'groupname'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'activity'
      DataType = ftShortint
    end
    item
      Name = 'authorized'
      DataType = ftShortint
    end
    item
      Name = 'title'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'assigned_to'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'deleted'
      DataType = ftShortint
    end
    item
      Name = 'message_status'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'portal_relation'
      DataType = ftString
      Size = 100
    end
    item
      Name = 'is_msg_encrypted'
      DataType = ftShortint
    end
    item
      Name = 'update_by'
      DataType = ftLargeint
    end
    item
      Name = 'update_date'
      DataType = ftDateTime
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint388: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postpnotes/'
    Response = RESTResponse388
    Left = 3880
    Top = 3880
  end
  object RESTResponse388: TRESTResponse
    Left = 4656
    Top = 4656
  end
object postpnotesPostMemTable388: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'date'
      DataType = ftDateTime
    end
    item
      Name = 'body'
      DataType = ftMemo
    end
    item
      Name = 'pid'
      DataType = ftLargeint
    end
    item
      Name = 'user'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'groupname'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'activity'
      DataType = ftShortint
    end
    item
      Name = 'authorized'
      DataType = ftShortint
    end
    item
      Name = 'title'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'assigned_to'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'deleted'
      DataType = ftShortint
    end
    item
      Name = 'message_status'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'portal_relation'
      DataType = ftString
      Size = 100
    end
    item
      Name = 'is_msg_encrypted'
      DataType = ftShortint
    end
    item
      Name = 'update_by'
      DataType = ftLargeint
    end
    item
      Name = 'update_date'
      DataType = ftDateTime
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postpnotesMemTable388: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint389: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletepnotes/?id={id}'
    Response = RESTResponse389
    Left = 3890
    Top = 3890
  end
  object RESTResponse389: TRESTResponse
    Left = 4668
    Top = 4668
  end

  object BackendEndpoint390: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getprescriptions/?format={format}'
    Response = RESTResponse390
    Left = 3900
    Top = 3900
  end
  object RESTResponse390: TRESTResponse
    Left = 4680
    Top = 4680
  end
object getprescriptionsMemTable390: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftAutoInc
    end
    item
      Name = 'patient_id'
      DataType = ftLargeint
    end
    item
      Name = 'filled_by_id'
      DataType = ftInteger
    end
    item
      Name = 'pharmacy_id'
      DataType = ftInteger
    end
    item
      Name = 'date_added'
      DataType = ftDate
    end
    item
      Name = 'date_modified'
      DataType = ftDate
    end
    item
      Name = 'provider_id'
      DataType = ftInteger
    end
    item
      Name = 'encounter'
      DataType = ftInteger
    end
    item
      Name = 'start_date'
      DataType = ftDate
    end
    item
      Name = 'drug'
      DataType = ftString
      Size = 150
    end
    item
      Name = 'drug_id'
      DataType = ftInteger
    end
    item
      Name = 'rxnorm_drugcode'
      DataType = ftInteger
    end
    item
      Name = 'form'
      DataType = ftInteger
    end
    item
      Name = 'dosage'
      DataType = ftString
      Size = 100
    end
    item
      Name = 'quantity'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'size'
      DataType = ftString
      Size = 25
    end
    item
      Name = 'unit'
      DataType = ftInteger
    end
    item
      Name = 'route'
      DataType = ftInteger
    end
    item
      Name = 'interval'
      DataType = ftInteger
    end
    item
      Name = 'substitute'
      DataType = ftInteger
    end
    item
      Name = 'refills'
      DataType = ftInteger
    end
    item
      Name = 'per_refill'
      DataType = ftInteger
    end
    item
      Name = 'filled_date'
      DataType = ftDate
    end
    item
      Name = 'medication'
      DataType = ftInteger
    end
    item
      Name = 'note'
      DataType = ftMemo
    end
    item
      Name = 'active'
      DataType = ftInteger
    end
    item
      Name = 'datetime'
      DataType = ftDateTime
    end
    item
      Name = 'user'
      DataType = ftString
      Size = 50
    end
    item
      Name = 'site'
      DataType = ftString
      Size = 50
    end
    item
      Name = 'prescriptionguid'
      DataType = ftString
      Size = 50
    end
    item
      Name = 'erx_source'
      DataType = ftShortint
    end
    item
      Name = 'erx_uploaded'
      DataType = ftShortint
    end
    item
      Name = 'drug_info_erx'
      DataType = ftMemo
    end
    item
      Name = 'external_id'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'end_date'
      DataType = ftDate
    end
    item
      Name = 'indication'
      DataType = ftMemo
    end
    item
      Name = 'prn'
      DataType = ftString
      Size = 30
    end
    item
      Name = 'ntx'
      DataType = ftInteger
    end
    item
      Name = 'rtx'
      DataType = ftInteger
    end
    item
      Name = 'txDate'
      Attributes = [faRequired]
      DataType = ftDate
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint391: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postprescriptions/'
    Response = RESTResponse391
    Left = 3910
    Top = 3910
  end
  object RESTResponse391: TRESTResponse
    Left = 4692
    Top = 4692
  end
object postprescriptionsPostMemTable391: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftAutoInc
    end
    item
      Name = 'patient_id'
      DataType = ftLargeint
    end
    item
      Name = 'filled_by_id'
      DataType = ftInteger
    end
    item
      Name = 'pharmacy_id'
      DataType = ftInteger
    end
    item
      Name = 'date_added'
      DataType = ftDate
    end
    item
      Name = 'date_modified'
      DataType = ftDate
    end
    item
      Name = 'provider_id'
      DataType = ftInteger
    end
    item
      Name = 'encounter'
      DataType = ftInteger
    end
    item
      Name = 'start_date'
      DataType = ftDate
    end
    item
      Name = 'drug'
      DataType = ftString
      Size = 150
    end
    item
      Name = 'drug_id'
      DataType = ftInteger
    end
    item
      Name = 'rxnorm_drugcode'
      DataType = ftInteger
    end
    item
      Name = 'form'
      DataType = ftInteger
    end
    item
      Name = 'dosage'
      DataType = ftString
      Size = 100
    end
    item
      Name = 'quantity'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'size'
      DataType = ftString
      Size = 25
    end
    item
      Name = 'unit'
      DataType = ftInteger
    end
    item
      Name = 'route'
      DataType = ftInteger
    end
    item
      Name = 'interval'
      DataType = ftInteger
    end
    item
      Name = 'substitute'
      DataType = ftInteger
    end
    item
      Name = 'refills'
      DataType = ftInteger
    end
    item
      Name = 'per_refill'
      DataType = ftInteger
    end
    item
      Name = 'filled_date'
      DataType = ftDate
    end
    item
      Name = 'medication'
      DataType = ftInteger
    end
    item
      Name = 'note'
      DataType = ftMemo
    end
    item
      Name = 'active'
      DataType = ftInteger
    end
    item
      Name = 'datetime'
      DataType = ftDateTime
    end
    item
      Name = 'user'
      DataType = ftString
      Size = 50
    end
    item
      Name = 'site'
      DataType = ftString
      Size = 50
    end
    item
      Name = 'prescriptionguid'
      DataType = ftString
      Size = 50
    end
    item
      Name = 'erx_source'
      DataType = ftShortint
    end
    item
      Name = 'erx_uploaded'
      DataType = ftShortint
    end
    item
      Name = 'drug_info_erx'
      DataType = ftMemo
    end
    item
      Name = 'external_id'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'end_date'
      DataType = ftDate
    end
    item
      Name = 'indication'
      DataType = ftMemo
    end
    item
      Name = 'prn'
      DataType = ftString
      Size = 30
    end
    item
      Name = 'ntx'
      DataType = ftInteger
    end
    item
      Name = 'rtx'
      DataType = ftInteger
    end
    item
      Name = 'txDate'
      Attributes = [faRequired]
      DataType = ftDate
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postprescriptionsMemTable391: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint392: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteprescriptions/?id={id}'
    Response = RESTResponse392
    Left = 3920
    Top = 3920
  end
  object RESTResponse392: TRESTResponse
    Left = 4704
    Top = 4704
  end

  object BackendEndpoint393: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getprices/?format={format}'
    Response = RESTResponse393
    Left = 3930
    Top = 3930
  end
  object RESTResponse393: TRESTResponse
    Left = 4716
    Top = 4716
  end
object getpricesMemTable393: TFDMemTable
  FieldDefs = <
    item
      Name = 'pr_id'
      DataType = ftString
      Size = 11
    end
    item
      Name = 'pr_selector'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'pr_level'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'pr_price'
      DataType = ftBCD
      Precision = 12
      Size = 2
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint394: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postprices/'
    Response = RESTResponse394
    Left = 3940
    Top = 3940
  end
  object RESTResponse394: TRESTResponse
    Left = 4728
    Top = 4728
  end
object postpricesPostMemTable394: TFDMemTable
  FieldDefs = <
    item
      Name = 'pr_id'
      DataType = ftString
      Size = 11
    end
    item
      Name = 'pr_selector'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'pr_level'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'pr_price'
      DataType = ftBCD
      Precision = 12
      Size = 2
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postpricesMemTable394: TFDMemTable
  FieldDefs = <
    item
      Name = 'pr_id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint395: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'pr_id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteprices/?pr_id={pr_id}'
    Response = RESTResponse395
    Left = 3950
    Top = 3950
  end
  object RESTResponse395: TRESTResponse
    Left = 4740
    Top = 4740
  end

  object BackendEndpoint396: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getprocedure_answers/?format={format}'
    Response = RESTResponse396
    Left = 3960
    Top = 3960
  end
  object RESTResponse396: TRESTResponse
    Left = 4752
    Top = 4752
  end
object getprocedure_answersMemTable396: TFDMemTable
  FieldDefs = <
    item
      Name = 'procedure_order_id'
      DataType = ftLargeint
    end
    item
      Name = 'procedure_order_seq'
      DataType = ftInteger
    end
    item
      Name = 'question_code'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'answer_seq'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'answer'
      DataType = ftString
      Size = 255
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint397: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postprocedure_answers/'
    Response = RESTResponse397
    Left = 3970
    Top = 3970
  end
  object RESTResponse397: TRESTResponse
    Left = 4764
    Top = 4764
  end
object postprocedure_answersPostMemTable397: TFDMemTable
  FieldDefs = <
    item
      Name = 'procedure_order_id'
      DataType = ftLargeint
    end
    item
      Name = 'procedure_order_seq'
      DataType = ftInteger
    end
    item
      Name = 'question_code'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'answer_seq'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'answer'
      DataType = ftString
      Size = 255
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postprocedure_answersMemTable397: TFDMemTable
  FieldDefs = <
    item
      Name = 'procedure_order_id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint398: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'procedure_order_id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteprocedure_answers/?procedure_order_id={procedure_order_id}'
    Response = RESTResponse398
    Left = 3980
    Top = 3980
  end
  object RESTResponse398: TRESTResponse
    Left = 4776
    Top = 4776
  end

  object BackendEndpoint399: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getprocedure_order/?format={format}'
    Response = RESTResponse399
    Left = 3990
    Top = 3990
  end
  object RESTResponse399: TRESTResponse
    Left = 4788
    Top = 4788
  end
object getprocedure_orderMemTable399: TFDMemTable
  FieldDefs = <
    item
      Name = 'procedure_order_id'
      DataType = ftLargeint
    end
    item
      Name = 'provider_id'
      DataType = ftLargeint
    end
    item
      Name = 'patient_id'
      Attributes = [faRequired]
      DataType = ftLargeint
    end
    item
      Name = 'encounter_id'
      DataType = ftLargeint
    end
    item
      Name = 'date_collected'
      DataType = ftDateTime
    end
    item
      Name = 'date_ordered'
      DataType = ftDate
    end
    item
      Name = 'order_priority'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'order_status'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'patient_instructions'
      DataType = ftMemo
    end
    item
      Name = 'activity'
      DataType = ftBoolean
    end
    item
      Name = 'control_id'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'lab_id'
      DataType = ftLargeint
    end
    item
      Name = 'specimen_type'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'specimen_location'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'specimen_volume'
      DataType = ftString
      Size = 30
    end
    item
      Name = 'date_transmitted'
      DataType = ftDateTime
    end
    item
      Name = 'clinical_hx'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'external_id'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'history_order'
      Attributes = [faFixed]
      DataType = ftFixedChar
      Size = 1
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint400: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postprocedure_order/'
    Response = RESTResponse400
    Left = 4000
    Top = 4000
  end
  object RESTResponse400: TRESTResponse
    Left = 4800
    Top = 4800
  end
object postprocedure_orderPostMemTable400: TFDMemTable
  FieldDefs = <
    item
      Name = 'procedure_order_id'
      DataType = ftLargeint
    end
    item
      Name = 'provider_id'
      DataType = ftLargeint
    end
    item
      Name = 'patient_id'
      Attributes = [faRequired]
      DataType = ftLargeint
    end
    item
      Name = 'encounter_id'
      DataType = ftLargeint
    end
    item
      Name = 'date_collected'
      DataType = ftDateTime
    end
    item
      Name = 'date_ordered'
      DataType = ftDate
    end
    item
      Name = 'order_priority'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'order_status'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'patient_instructions'
      DataType = ftMemo
    end
    item
      Name = 'activity'
      DataType = ftBoolean
    end
    item
      Name = 'control_id'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'lab_id'
      DataType = ftLargeint
    end
    item
      Name = 'specimen_type'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'specimen_location'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'specimen_volume'
      DataType = ftString
      Size = 30
    end
    item
      Name = 'date_transmitted'
      DataType = ftDateTime
    end
    item
      Name = 'clinical_hx'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'external_id'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'history_order'
      Attributes = [faFixed]
      DataType = ftFixedChar
      Size = 1
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postprocedure_orderMemTable400: TFDMemTable
  FieldDefs = <
    item
      Name = 'procedure_order_id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint401: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'procedure_order_id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteprocedure_order/?procedure_order_id={procedure_order_id}'
    Response = RESTResponse401
    Left = 4010
    Top = 4010
  end
  object RESTResponse401: TRESTResponse
    Left = 4812
    Top = 4812
  end

  object BackendEndpoint402: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getprocedure_order_code/?format={format}'
    Response = RESTResponse402
    Left = 4020
    Top = 4020
  end
  object RESTResponse402: TRESTResponse
    Left = 4824
    Top = 4824
  end
object getprocedure_order_codeMemTable402: TFDMemTable
  FieldDefs = <
    item
      Name = 'procedure_order_id'
      Attributes = [faRequired]
      DataType = ftLargeint
    end
    item
      Name = 'procedure_order_seq'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'procedure_code'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'procedure_name'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'procedure_source'
      Attributes = [faFixed]
      DataType = ftFixedChar
      Size = 1
    end
    item
      Name = 'diagnoses'
      DataType = ftMemo
    end
    item
      Name = 'do_not_send'
      DataType = ftBoolean
    end
    item
      Name = 'procedure_order_title'
      DataType = ftString
      Size = 255
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint403: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postprocedure_order_code/'
    Response = RESTResponse403
    Left = 4030
    Top = 4030
  end
  object RESTResponse403: TRESTResponse
    Left = 4836
    Top = 4836
  end
object postprocedure_order_codePostMemTable403: TFDMemTable
  FieldDefs = <
    item
      Name = 'procedure_order_id'
      Attributes = [faRequired]
      DataType = ftLargeint
    end
    item
      Name = 'procedure_order_seq'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'procedure_code'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'procedure_name'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'procedure_source'
      Attributes = [faFixed]
      DataType = ftFixedChar
      Size = 1
    end
    item
      Name = 'diagnoses'
      DataType = ftMemo
    end
    item
      Name = 'do_not_send'
      DataType = ftBoolean
    end
    item
      Name = 'procedure_order_title'
      DataType = ftString
      Size = 255
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postprocedure_order_codeMemTable403: TFDMemTable
  FieldDefs = <
    item
      Name = 'procedure_order_id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint404: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'procedure_order_id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteprocedure_order_code/?procedure_order_id={procedure_order_id}'
    Response = RESTResponse404
    Left = 4040
    Top = 4040
  end
  object RESTResponse404: TRESTResponse
    Left = 4848
    Top = 4848
  end

  object BackendEndpoint405: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getprocedure_providers/?format={format}'
    Response = RESTResponse405
    Left = 4050
    Top = 4050
  end
  object RESTResponse405: TRESTResponse
    Left = 4860
    Top = 4860
  end
object getprocedure_providersMemTable405: TFDMemTable
  FieldDefs = <
    item
      Name = 'ppid'
      DataType = ftLargeint
    end
    item
      Name = 'name'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'npi'
      DataType = ftString
      Size = 15
    end
    item
      Name = 'send_app_id'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'send_fac_id'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'recv_app_id'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'recv_fac_id'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'DorP'
      Attributes = [faFixed]
      DataType = ftFixedChar
      Size = 1
    end
    item
      Name = 'direction'
      Attributes = [faFixed]
      DataType = ftFixedChar
      Size = 1
    end
    item
      Name = 'protocol'
      DataType = ftString
      Size = 15
    end
    item
      Name = 'remote_host'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'login'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'password'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'orders_path'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'results_path'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'notes'
      DataType = ftMemo
    end
    item
      Name = 'lab_director'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint406: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postprocedure_providers/'
    Response = RESTResponse406
    Left = 4060
    Top = 4060
  end
  object RESTResponse406: TRESTResponse
    Left = 4872
    Top = 4872
  end
object postprocedure_providersPostMemTable406: TFDMemTable
  FieldDefs = <
    item
      Name = 'ppid'
      DataType = ftLargeint
    end
    item
      Name = 'name'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'npi'
      DataType = ftString
      Size = 15
    end
    item
      Name = 'send_app_id'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'send_fac_id'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'recv_app_id'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'recv_fac_id'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'DorP'
      Attributes = [faFixed]
      DataType = ftFixedChar
      Size = 1
    end
    item
      Name = 'direction'
      Attributes = [faFixed]
      DataType = ftFixedChar
      Size = 1
    end
    item
      Name = 'protocol'
      DataType = ftString
      Size = 15
    end
    item
      Name = 'remote_host'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'login'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'password'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'orders_path'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'results_path'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'notes'
      DataType = ftMemo
    end
    item
      Name = 'lab_director'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postprocedure_providersMemTable406: TFDMemTable
  FieldDefs = <
    item
      Name = 'ppid'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint407: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'ppid'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteprocedure_providers/?ppid={ppid}'
    Response = RESTResponse407
    Left = 4070
    Top = 4070
  end
  object RESTResponse407: TRESTResponse
    Left = 4884
    Top = 4884
  end

  object BackendEndpoint408: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getprocedure_questions/?format={format}'
    Response = RESTResponse408
    Left = 4080
    Top = 4080
  end
  object RESTResponse408: TRESTResponse
    Left = 4896
    Top = 4896
  end
object getprocedure_questionsMemTable408: TFDMemTable
  FieldDefs = <
    item
      Name = 'lab_id'
      DataType = ftLargeint
    end
    item
      Name = 'procedure_code'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'question_code'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'seq'
      DataType = ftInteger
    end
    item
      Name = 'question_text'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'required'
      DataType = ftBoolean
    end
    item
      Name = 'maxsize'
      DataType = ftInteger
    end
    item
      Name = 'fldtype'
      Attributes = [faFixed]
      DataType = ftFixedChar
      Size = 1
    end
    item
      Name = 'options'
      DataType = ftMemo
    end
    item
      Name = 'tips'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'activity'
      DataType = ftBoolean
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint409: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postprocedure_questions/'
    Response = RESTResponse409
    Left = 4090
    Top = 4090
  end
  object RESTResponse409: TRESTResponse
    Left = 4908
    Top = 4908
  end
object postprocedure_questionsPostMemTable409: TFDMemTable
  FieldDefs = <
    item
      Name = 'lab_id'
      DataType = ftLargeint
    end
    item
      Name = 'procedure_code'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'question_code'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'seq'
      DataType = ftInteger
    end
    item
      Name = 'question_text'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'required'
      DataType = ftBoolean
    end
    item
      Name = 'maxsize'
      DataType = ftInteger
    end
    item
      Name = 'fldtype'
      Attributes = [faFixed]
      DataType = ftFixedChar
      Size = 1
    end
    item
      Name = 'options'
      DataType = ftMemo
    end
    item
      Name = 'tips'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'activity'
      DataType = ftBoolean
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postprocedure_questionsMemTable409: TFDMemTable
  FieldDefs = <
    item
      Name = 'lab_id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint410: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'lab_id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteprocedure_questions/?lab_id={lab_id}'
    Response = RESTResponse410
    Left = 4100
    Top = 4100
  end
  object RESTResponse410: TRESTResponse
    Left = 4920
    Top = 4920
  end

  object BackendEndpoint411: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getprocedure_report/?format={format}'
    Response = RESTResponse411
    Left = 4110
    Top = 4110
  end
  object RESTResponse411: TRESTResponse
    Left = 4932
    Top = 4932
  end
object getprocedure_reportMemTable411: TFDMemTable
  FieldDefs = <
    item
      Name = 'procedure_report_id'
      DataType = ftLargeint
    end
    item
      Name = 'procedure_order_id'
      DataType = ftLargeint
    end
    item
      Name = 'procedure_order_seq'
      DataType = ftInteger
    end
    item
      Name = 'date_collected'
      DataType = ftDateTime
    end
    item
      Name = 'date_collected_tz'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'date_report'
      DataType = ftDateTime
    end
    item
      Name = 'date_report_tz'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'source'
      DataType = ftLargeint
    end
    item
      Name = 'specimen_num'
      DataType = ftString
      Size = 63
    end
    item
      Name = 'report_status'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'review_status'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'report_notes'
      DataType = ftMemo
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint412: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postprocedure_report/'
    Response = RESTResponse412
    Left = 4120
    Top = 4120
  end
  object RESTResponse412: TRESTResponse
    Left = 4944
    Top = 4944
  end
object postprocedure_reportPostMemTable412: TFDMemTable
  FieldDefs = <
    item
      Name = 'procedure_report_id'
      DataType = ftLargeint
    end
    item
      Name = 'procedure_order_id'
      DataType = ftLargeint
    end
    item
      Name = 'procedure_order_seq'
      DataType = ftInteger
    end
    item
      Name = 'date_collected'
      DataType = ftDateTime
    end
    item
      Name = 'date_collected_tz'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'date_report'
      DataType = ftDateTime
    end
    item
      Name = 'date_report_tz'
      DataType = ftString
      Size = 5
    end
    item
      Name = 'source'
      DataType = ftLargeint
    end
    item
      Name = 'specimen_num'
      DataType = ftString
      Size = 63
    end
    item
      Name = 'report_status'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'review_status'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'report_notes'
      DataType = ftMemo
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postprocedure_reportMemTable412: TFDMemTable
  FieldDefs = <
    item
      Name = 'procedure_report_id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint413: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'procedure_report_id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteprocedure_report/?procedure_report_id={procedure_report_id}'
    Response = RESTResponse413
    Left = 4130
    Top = 4130
  end
  object RESTResponse413: TRESTResponse
    Left = 4956
    Top = 4956
  end

  object BackendEndpoint414: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getprocedure_result/?format={format}'
    Response = RESTResponse414
    Left = 4140
    Top = 4140
  end
  object RESTResponse414: TRESTResponse
    Left = 4968
    Top = 4968
  end
object getprocedure_resultMemTable414: TFDMemTable
  FieldDefs = <
    item
      Name = 'procedure_result_id'
      DataType = ftLargeint
    end
    item
      Name = 'procedure_report_id'
      Attributes = [faRequired]
      DataType = ftLargeint
    end
    item
      Name = 'result_data_type'
      Attributes = [faFixed]
      DataType = ftFixedChar
      Size = 1
    end
    item
      Name = 'result_code'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'result_text'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'date'
      DataType = ftDateTime
    end
    item
      Name = 'facility'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'units'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'result'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'range'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'abnormal'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'comments'
      DataType = ftMemo
    end
    item
      Name = 'document_id'
      DataType = ftLargeint
    end
    item
      Name = 'result_status'
      DataType = ftString
      Size = 31
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint415: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postprocedure_result/'
    Response = RESTResponse415
    Left = 4150
    Top = 4150
  end
  object RESTResponse415: TRESTResponse
    Left = 4980
    Top = 4980
  end
object postprocedure_resultPostMemTable415: TFDMemTable
  FieldDefs = <
    item
      Name = 'procedure_result_id'
      DataType = ftLargeint
    end
    item
      Name = 'procedure_report_id'
      Attributes = [faRequired]
      DataType = ftLargeint
    end
    item
      Name = 'result_data_type'
      Attributes = [faFixed]
      DataType = ftFixedChar
      Size = 1
    end
    item
      Name = 'result_code'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'result_text'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'date'
      DataType = ftDateTime
    end
    item
      Name = 'facility'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'units'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'result'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'range'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'abnormal'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'comments'
      DataType = ftMemo
    end
    item
      Name = 'document_id'
      DataType = ftLargeint
    end
    item
      Name = 'result_status'
      DataType = ftString
      Size = 31
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postprocedure_resultMemTable415: TFDMemTable
  FieldDefs = <
    item
      Name = 'procedure_result_id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint416: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'procedure_result_id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteprocedure_result/?procedure_result_id={procedure_result_id}'
    Response = RESTResponse416
    Left = 4160
    Top = 4160
  end
  object RESTResponse416: TRESTResponse
    Left = 4992
    Top = 4992
  end

  object BackendEndpoint417: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getprocedure_type/?format={format}'
    Response = RESTResponse417
    Left = 4170
    Top = 4170
  end
  object RESTResponse417: TRESTResponse
    Left = 5004
    Top = 5004
  end
object getprocedure_typeMemTable417: TFDMemTable
  FieldDefs = <
    item
      Name = 'procedure_type_id'
      DataType = ftLargeint
    end
    item
      Name = 'parent'
      DataType = ftLargeint
    end
    item
      Name = 'name'
      DataType = ftString
      Size = 63
    end
    item
      Name = 'lab_id'
      DataType = ftLargeint
    end
    item
      Name = 'procedure_code'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'procedure_type'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'body_site'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'specimen'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'route_admin'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'laterality'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'description'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'standard_code'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'related_code'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'units'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'range'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'seq'
      DataType = ftInteger
    end
    item
      Name = 'activity'
      DataType = ftBoolean
    end
    item
      Name = 'notes'
      DataType = ftString
      Size = 255
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint418: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postprocedure_type/'
    Response = RESTResponse418
    Left = 4180
    Top = 4180
  end
  object RESTResponse418: TRESTResponse
    Left = 5016
    Top = 5016
  end
object postprocedure_typePostMemTable418: TFDMemTable
  FieldDefs = <
    item
      Name = 'procedure_type_id'
      DataType = ftLargeint
    end
    item
      Name = 'parent'
      DataType = ftLargeint
    end
    item
      Name = 'name'
      DataType = ftString
      Size = 63
    end
    item
      Name = 'lab_id'
      DataType = ftLargeint
    end
    item
      Name = 'procedure_code'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'procedure_type'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'body_site'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'specimen'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'route_admin'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'laterality'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'description'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'standard_code'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'related_code'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'units'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'range'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'seq'
      DataType = ftInteger
    end
    item
      Name = 'activity'
      DataType = ftBoolean
    end
    item
      Name = 'notes'
      DataType = ftString
      Size = 255
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postprocedure_typeMemTable418: TFDMemTable
  FieldDefs = <
    item
      Name = 'procedure_type_id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint419: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'procedure_type_id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteprocedure_type/?procedure_type_id={procedure_type_id}'
    Response = RESTResponse419
    Left = 4190
    Top = 4190
  end
  object RESTResponse419: TRESTResponse
    Left = 5028
    Top = 5028
  end

  object BackendEndpoint420: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getproduct_warehouse/?format={format}'
    Response = RESTResponse420
    Left = 4200
    Top = 4200
  end
  object RESTResponse420: TRESTResponse
    Left = 5040
    Top = 5040
  end
object getproduct_warehouseMemTable420: TFDMemTable
  FieldDefs = <
    item
      Name = 'pw_drug_id'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'pw_warehouse'
      Attributes = [faRequired]
      DataType = ftString
      Size = 31
    end
    item
      Name = 'pw_min_level'
      DataType = ftSingle
      Precision = 12
    end
    item
      Name = 'pw_max_level'
      DataType = ftSingle
      Precision = 12
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint421: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postproduct_warehouse/'
    Response = RESTResponse421
    Left = 4210
    Top = 4210
  end
  object RESTResponse421: TRESTResponse
    Left = 5052
    Top = 5052
  end
object postproduct_warehousePostMemTable421: TFDMemTable
  FieldDefs = <
    item
      Name = 'pw_drug_id'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'pw_warehouse'
      Attributes = [faRequired]
      DataType = ftString
      Size = 31
    end
    item
      Name = 'pw_min_level'
      DataType = ftSingle
      Precision = 12
    end
    item
      Name = 'pw_max_level'
      DataType = ftSingle
      Precision = 12
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postproduct_warehouseMemTable421: TFDMemTable
  FieldDefs = <
    item
      Name = 'pw_drug_id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint422: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'pw_drug_id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteproduct_warehouse/?pw_drug_id={pw_drug_id}'
    Response = RESTResponse422
    Left = 4220
    Top = 4220
  end
  object RESTResponse422: TRESTResponse
    Left = 5064
    Top = 5064
  end

  object BackendEndpoint423: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getregistry/?format={format}'
    Response = RESTResponse423
    Left = 4230
    Top = 4230
  end
  object RESTResponse423: TRESTResponse
    Left = 5076
    Top = 5076
  end
object getregistryMemTable423: TFDMemTable
  FieldDefs = <
    item
      Name = 'name'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'state'
      DataType = ftShortint
    end
    item
      Name = 'directory'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'sql_run'
      DataType = ftShortint
    end
    item
      Name = 'unpackaged'
      DataType = ftShortint
    end
    item
      Name = 'date'
      DataType = ftDateTime
    end
    item
      Name = 'priority'
      DataType = ftInteger
    end
    item
      Name = 'category'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'nickname'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'patient_encounter'
      DataType = ftShortint
    end
    item
      Name = 'therapy_group_encounter'
      DataType = ftShortint
    end
    item
      Name = 'aco_spec'
      DataType = ftString
      Size = 63
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint424: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postregistry/'
    Response = RESTResponse424
    Left = 4240
    Top = 4240
  end
  object RESTResponse424: TRESTResponse
    Left = 5088
    Top = 5088
  end
object postregistryPostMemTable424: TFDMemTable
  FieldDefs = <
    item
      Name = 'name'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'state'
      DataType = ftShortint
    end
    item
      Name = 'directory'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'sql_run'
      DataType = ftShortint
    end
    item
      Name = 'unpackaged'
      DataType = ftShortint
    end
    item
      Name = 'date'
      DataType = ftDateTime
    end
    item
      Name = 'priority'
      DataType = ftInteger
    end
    item
      Name = 'category'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'nickname'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'patient_encounter'
      DataType = ftShortint
    end
    item
      Name = 'therapy_group_encounter'
      DataType = ftShortint
    end
    item
      Name = 'aco_spec'
      DataType = ftString
      Size = 63
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postregistryMemTable424: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint425: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteregistry/?id={id}'
    Response = RESTResponse425
    Left = 4250
    Top = 4250
  end
  object RESTResponse425: TRESTResponse
    Left = 5100
    Top = 5100
  end

  object BackendEndpoint426: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getreport_itemized/?format={format}'
    Response = RESTResponse426
    Left = 4260
    Top = 4260
  end
  object RESTResponse426: TRESTResponse
    Left = 5112
    Top = 5112
  end
object getreport_itemizedMemTable426: TFDMemTable
  FieldDefs = <
    item
      Name = 'report_id'
      Attributes = [faRequired]
      DataType = ftLargeint
    end
    item
      Name = 'itemized_test_id'
      Attributes = [faRequired]
      DataType = ftSmallint
    end
    item
      Name = 'numerator_label'
      DataType = ftString
      Size = 25
    end
    item
      Name = 'pass'
      DataType = ftBoolean
    end
    item
      Name = 'pid'
      Attributes = [faRequired]
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint427: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getreport_results/?format={format}'
    Response = RESTResponse427
    Left = 4270
    Top = 4270
  end
  object RESTResponse427: TRESTResponse
    Left = 5124
    Top = 5124
  end
object getreport_resultsMemTable427: TFDMemTable
  FieldDefs = <
    item
      Name = 'report_id'
      Attributes = [faRequired]
      DataType = ftLargeint
    end
    item
      Name = 'field_id'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'field_value'
      DataType = ftMemo
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint428: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postreport_results/'
    Response = RESTResponse428
    Left = 4280
    Top = 4280
  end
  object RESTResponse428: TRESTResponse
    Left = 5136
    Top = 5136
  end
object postreport_resultsPostMemTable428: TFDMemTable
  FieldDefs = <
    item
      Name = 'report_id'
      Attributes = [faRequired]
      DataType = ftLargeint
    end
    item
      Name = 'field_id'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'field_value'
      DataType = ftMemo
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postreport_resultsMemTable428: TFDMemTable
  FieldDefs = <
    item
      Name = 'report_id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint429: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'report_id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletereport_results/?report_id={report_id}'
    Response = RESTResponse429
    Left = 4290
    Top = 4290
  end
  object RESTResponse429: TRESTResponse
    Left = 5148
    Top = 5148
  end

  object BackendEndpoint430: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getrule_action/?format={format}'
    Response = RESTResponse430
    Left = 4300
    Top = 4300
  end
  object RESTResponse430: TRESTResponse
    Left = 5160
    Top = 5160
  end
object getrule_actionMemTable430: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'group_id'
      DataType = ftLargeint
    end
    item
      Name = 'category'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'item'
      DataType = ftString
      Size = 31
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint431: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getrule_action_item/?format={format}'
    Response = RESTResponse431
    Left = 4310
    Top = 4310
  end
  object RESTResponse431: TRESTResponse
    Left = 5172
    Top = 5172
  end
object getrule_action_itemMemTable431: TFDMemTable
  FieldDefs = <
    item
      Name = 'category'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'item'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'clin_rem_link'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'reminder_message'
      DataType = ftMemo
    end
    item
      Name = 'custom_flag'
      DataType = ftBoolean
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint432: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postrule_action_item/'
    Response = RESTResponse432
    Left = 4320
    Top = 4320
  end
  object RESTResponse432: TRESTResponse
    Left = 5184
    Top = 5184
  end
object postrule_action_itemPostMemTable432: TFDMemTable
  FieldDefs = <
    item
      Name = 'category'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'item'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'clin_rem_link'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'reminder_message'
      DataType = ftMemo
    end
    item
      Name = 'custom_flag'
      DataType = ftBoolean
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postrule_action_itemMemTable432: TFDMemTable
  FieldDefs = <
    item
      Name = 'category'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint433: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'category'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleterule_action_item/?category={category}'
    Response = RESTResponse433
    Left = 4330
    Top = 4330
  end
  object RESTResponse433: TRESTResponse
    Left = 5196
    Top = 5196
  end

  object BackendEndpoint434: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getrule_filter/?format={format}'
    Response = RESTResponse434
    Left = 4340
    Top = 4340
  end
  object RESTResponse434: TRESTResponse
    Left = 5208
    Top = 5208
  end
object getrule_filterMemTable434: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'include_flag'
      DataType = ftBoolean
    end
    item
      Name = 'required_flag'
      DataType = ftBoolean
    end
    item
      Name = 'method'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'method_detail'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'value'
      DataType = ftString
      Size = 255
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint435: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getrule_patient_data/?format={format}'
    Response = RESTResponse435
    Left = 4350
    Top = 4350
  end
  object RESTResponse435: TRESTResponse
    Left = 5220
    Top = 5220
  end
object getrule_patient_dataMemTable435: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'date'
      DataType = ftDateTime
    end
    item
      Name = 'pid'
      Attributes = [faRequired]
      DataType = ftLargeint
    end
    item
      Name = 'category'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'item'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'complete'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'result'
      DataType = ftString
      Size = 255
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint436: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postrule_patient_data/'
    Response = RESTResponse436
    Left = 4360
    Top = 4360
  end
  object RESTResponse436: TRESTResponse
    Left = 5232
    Top = 5232
  end
object postrule_patient_dataPostMemTable436: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'date'
      DataType = ftDateTime
    end
    item
      Name = 'pid'
      Attributes = [faRequired]
      DataType = ftLargeint
    end
    item
      Name = 'category'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'item'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'complete'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'result'
      DataType = ftString
      Size = 255
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postrule_patient_dataMemTable436: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint437: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleterule_patient_data/?id={id}'
    Response = RESTResponse437
    Left = 4370
    Top = 4370
  end
  object RESTResponse437: TRESTResponse
    Left = 5244
    Top = 5244
  end

  object BackendEndpoint438: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getrule_reminder/?format={format}'
    Response = RESTResponse438
    Left = 4380
    Top = 4380
  end
  object RESTResponse438: TRESTResponse
    Left = 5256
    Top = 5256
  end
object getrule_reminderMemTable438: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'method'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'method_detail'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'value'
      DataType = ftString
      Size = 255
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint439: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getrule_target/?format={format}'
    Response = RESTResponse439
    Left = 4390
    Top = 4390
  end
  object RESTResponse439: TRESTResponse
    Left = 5268
    Top = 5268
  end
object getrule_targetMemTable439: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'group_id'
      DataType = ftLargeint
    end
    item
      Name = 'include_flag'
      DataType = ftBoolean
    end
    item
      Name = 'required_flag'
      DataType = ftBoolean
    end
    item
      Name = 'method'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'value'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'interval'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint440: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getsequences/?format={format}'
    Response = RESTResponse440
    Left = 4400
    Top = 4400
  end
  object RESTResponse440: TRESTResponse
    Left = 5280
    Top = 5280
  end
object getsequencesMemTable440: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLongWord
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint441: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getshared_attributes/?format={format}'
    Response = RESTResponse441
    Left = 4410
    Top = 4410
  end
  object RESTResponse441: TRESTResponse
    Left = 5292
    Top = 5292
  end
object getshared_attributesMemTable441: TFDMemTable
  FieldDefs = <
    item
      Name = 'pid'
      Attributes = [faRequired]
      DataType = ftLargeint
    end
    item
      Name = 'encounter'
      Attributes = [faRequired]
      DataType = ftLargeint
    end
    item
      Name = 'field_id'
      Attributes = [faRequired]
      DataType = ftString
      Size = 31
    end
    item
      Name = 'last_update'
      Attributes = [faRequired]
      DataType = ftDateTime
    end
    item
      Name = 'user_id'
      Attributes = [faRequired]
      DataType = ftLargeint
    end
    item
      Name = 'field_value'
      DataType = ftMemo
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint442: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postshared_attributes/'
    Response = RESTResponse442
    Left = 4420
    Top = 4420
  end
  object RESTResponse442: TRESTResponse
    Left = 5304
    Top = 5304
  end
object postshared_attributesPostMemTable442: TFDMemTable
  FieldDefs = <
    item
      Name = 'pid'
      Attributes = [faRequired]
      DataType = ftLargeint
    end
    item
      Name = 'encounter'
      Attributes = [faRequired]
      DataType = ftLargeint
    end
    item
      Name = 'field_id'
      Attributes = [faRequired]
      DataType = ftString
      Size = 31
    end
    item
      Name = 'last_update'
      Attributes = [faRequired]
      DataType = ftDateTime
    end
    item
      Name = 'user_id'
      Attributes = [faRequired]
      DataType = ftLargeint
    end
    item
      Name = 'field_value'
      DataType = ftMemo
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postshared_attributesMemTable442: TFDMemTable
  FieldDefs = <
    item
      Name = 'pid'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint443: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'pid'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteshared_attributes/?pid={pid}'
    Response = RESTResponse443
    Left = 4430
    Top = 4430
  end
  object RESTResponse443: TRESTResponse
    Left = 5316
    Top = 5316
  end

  object BackendEndpoint444: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getstandardized_tables_track/?format={format}'
    Response = RESTResponse444
    Left = 4440
    Top = 4440
  end
  object RESTResponse444: TRESTResponse
    Left = 5328
    Top = 5328
  end
object getstandardized_tables_trackMemTable444: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftAutoInc
    end
    item
      Name = 'imported_date'
      DataType = ftDateTime
    end
    item
      Name = 'name'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'revision_version'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'revision_date'
      DataType = ftDateTime
    end
    item
      Name = 'file_checksum'
      DataType = ftString
      Size = 32
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint445: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/poststandardized_tables_track/'
    Response = RESTResponse445
    Left = 4450
    Top = 4450
  end
  object RESTResponse445: TRESTResponse
    Left = 5340
    Top = 5340
  end
object poststandardized_tables_trackPostMemTable445: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftAutoInc
    end
    item
      Name = 'imported_date'
      DataType = ftDateTime
    end
    item
      Name = 'name'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'revision_version'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'revision_date'
      DataType = ftDateTime
    end
    item
      Name = 'file_checksum'
      DataType = ftString
      Size = 32
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object poststandardized_tables_trackMemTable445: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint446: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletestandardized_tables_track/?id={id}'
    Response = RESTResponse446
    Left = 4460
    Top = 4460
  end
  object RESTResponse446: TRESTResponse
    Left = 5352
    Top = 5352
  end

  object BackendEndpoint447: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getsupported_external_dataloads/?format={format}'
    Response = RESTResponse447
    Left = 4470
    Top = 4470
  end
  object RESTResponse447: TRESTResponse
    Left = 5364
    Top = 5364
  end
object getsupported_external_dataloadsMemTable447: TFDMemTable
  FieldDefs = <
    item
      Name = 'load_id'
      DataType = ftLargeint
    end
    item
      Name = 'load_type'
      DataType = ftString
      Size = 24
    end
    item
      Name = 'load_source'
      DataType = ftString
      Size = 24
    end
    item
      Name = 'load_release_date'
      Attributes = [faRequired]
      DataType = ftDate
    end
    item
      Name = 'load_filename'
      DataType = ftString
      Size = 256
    end
    item
      Name = 'load_checksum'
      DataType = ftString
      Size = 32
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint448: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getsyndromic_surveillance/?format={format}'
    Response = RESTResponse448
    Left = 4480
    Top = 4480
  end
  object RESTResponse448: TRESTResponse
    Left = 5376
    Top = 5376
  end
object getsyndromic_surveillanceMemTable448: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'lists_id'
      Attributes = [faRequired]
      DataType = ftLargeint
    end
    item
      Name = 'submission_date'
      Attributes = [faRequired]
      DataType = ftDateTime
    end
    item
      Name = 'filename'
      DataType = ftString
      Size = 255
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint449: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postsyndromic_surveillance/'
    Response = RESTResponse449
    Left = 4490
    Top = 4490
  end
  object RESTResponse449: TRESTResponse
    Left = 5388
    Top = 5388
  end
object postsyndromic_surveillancePostMemTable449: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'lists_id'
      Attributes = [faRequired]
      DataType = ftLargeint
    end
    item
      Name = 'submission_date'
      Attributes = [faRequired]
      DataType = ftDateTime
    end
    item
      Name = 'filename'
      DataType = ftString
      Size = 255
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postsyndromic_surveillanceMemTable449: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint450: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletesyndromic_surveillance/?id={id}'
    Response = RESTResponse450
    Left = 4500
    Top = 4500
  end
  object RESTResponse450: TRESTResponse
    Left = 5400
    Top = 5400
  end

  object BackendEndpoint451: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/gettemplate_users/?format={format}'
    Response = RESTResponse451
    Left = 4510
    Top = 4510
  end
  object RESTResponse451: TRESTResponse
    Left = 5412
    Top = 5412
  end
object gettemplate_usersMemTable451: TFDMemTable
  FieldDefs = <
    item
      Name = 'tu_id'
      DataType = ftAutoInc
    end
    item
      Name = 'tu_user_id'
      DataType = ftInteger
    end
    item
      Name = 'tu_facility_id'
      DataType = ftInteger
    end
    item
      Name = 'tu_template_id'
      DataType = ftInteger
    end
    item
      Name = 'tu_template_order'
      DataType = ftInteger
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint452: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/posttemplate_users/'
    Response = RESTResponse452
    Left = 4520
    Top = 4520
  end
  object RESTResponse452: TRESTResponse
    Left = 5424
    Top = 5424
  end
object posttemplate_usersPostMemTable452: TFDMemTable
  FieldDefs = <
    item
      Name = 'tu_id'
      DataType = ftAutoInc
    end
    item
      Name = 'tu_user_id'
      DataType = ftInteger
    end
    item
      Name = 'tu_facility_id'
      DataType = ftInteger
    end
    item
      Name = 'tu_template_id'
      DataType = ftInteger
    end
    item
      Name = 'tu_template_order'
      DataType = ftInteger
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object posttemplate_usersMemTable452: TFDMemTable
  FieldDefs = <
    item
      Name = 'tu_id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint453: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'tu_id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletetemplate_users/?tu_id={tu_id}'
    Response = RESTResponse453
    Left = 4530
    Top = 4530
  end
  object RESTResponse453: TRESTResponse
    Left = 5436
    Top = 5436
  end

  object BackendEndpoint454: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/gettransactions/?format={format}'
    Response = RESTResponse454
    Left = 4540
    Top = 4540
  end
  object RESTResponse454: TRESTResponse
    Left = 5448
    Top = 5448
  end
object gettransactionsMemTable454: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'date'
      DataType = ftDateTime
    end
    item
      Name = 'title'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'pid'
      DataType = ftLargeint
    end
    item
      Name = 'user'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'groupname'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'authorized'
      DataType = ftShortint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint455: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/posttransactions/'
    Response = RESTResponse455
    Left = 4550
    Top = 4550
  end
  object RESTResponse455: TRESTResponse
    Left = 5460
    Top = 5460
  end
object posttransactionsPostMemTable455: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'date'
      DataType = ftDateTime
    end
    item
      Name = 'title'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'pid'
      DataType = ftLargeint
    end
    item
      Name = 'user'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'groupname'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'authorized'
      DataType = ftShortint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object posttransactionsMemTable455: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint456: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletetransactions/?id={id}'
    Response = RESTResponse456
    Left = 4560
    Top = 4560
  end
  object RESTResponse456: TRESTResponse
    Left = 5472
    Top = 5472
  end

  object BackendEndpoint457: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getuser_settings/?format={format}'
    Response = RESTResponse457
    Left = 4570
    Top = 4570
  end
  object RESTResponse457: TRESTResponse
    Left = 5484
    Top = 5484
  end
object getuser_settingsMemTable457: TFDMemTable
  FieldDefs = <
    item
      Name = 'setting_user'
      DataType = ftLargeint
    end
    item
      Name = 'setting_label'
      Attributes = [faRequired]
      DataType = ftString
      Size = 100
    end
    item
      Name = 'setting_value'
      DataType = ftString
      Size = 255
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint458: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postuser_settings/'
    Response = RESTResponse458
    Left = 4580
    Top = 4580
  end
  object RESTResponse458: TRESTResponse
    Left = 5496
    Top = 5496
  end
object postuser_settingsPostMemTable458: TFDMemTable
  FieldDefs = <
    item
      Name = 'setting_user'
      DataType = ftLargeint
    end
    item
      Name = 'setting_label'
      Attributes = [faRequired]
      DataType = ftString
      Size = 100
    end
    item
      Name = 'setting_value'
      DataType = ftString
      Size = 255
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postuser_settingsMemTable458: TFDMemTable
  FieldDefs = <
    item
      Name = 'setting_user'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint459: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'setting_user'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteuser_settings/?setting_user={setting_user}'
    Response = RESTResponse459
    Left = 4590
    Top = 4590
  end
  object RESTResponse459: TRESTResponse
    Left = 5508
    Top = 5508
  end

  object BackendEndpoint460: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getusers/?format={format}'
    Response = RESTResponse460
    Left = 4600
    Top = 4600
  end
  object RESTResponse460: TRESTResponse
    Left = 5520
    Top = 5520
  end
object getusersMemTable460: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'username'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'password'
      DataType = ftMemo
    end
    item
      Name = 'authorized'
      DataType = ftShortint
    end
    item
      Name = 'info'
      DataType = ftMemo
    end
    item
      Name = 'source'
      DataType = ftShortint
    end
    item
      Name = 'fname'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'mname'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'lname'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'suffix'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'federaltaxid'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'federaldrugid'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'upin'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'facility'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'facility_id'
      DataType = ftInteger
    end
    item
      Name = 'see_auth'
      DataType = ftInteger
    end
    item
      Name = 'active'
      DataType = ftBoolean
    end
    item
      Name = 'npi'
      DataType = ftString
      Size = 15
    end
    item
      Name = 'title'
      DataType = ftString
      Size = 30
    end
    item
      Name = 'specialty'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'billname'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'email'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'email_direct'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'url'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'assistant'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'organization'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'valedictory'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'street'
      DataType = ftString
      Size = 60
    end
    item
      Name = 'streetb'
      DataType = ftString
      Size = 60
    end
    item
      Name = 'city'
      DataType = ftString
      Size = 30
    end
    item
      Name = 'state'
      DataType = ftString
      Size = 30
    end
    item
      Name = 'zip'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'street2'
      DataType = ftString
      Size = 60
    end
    item
      Name = 'streetb2'
      DataType = ftString
      Size = 60
    end
    item
      Name = 'city2'
      DataType = ftString
      Size = 30
    end
    item
      Name = 'state2'
      DataType = ftString
      Size = 30
    end
    item
      Name = 'zip2'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'phone'
      DataType = ftString
      Size = 30
    end
    item
      Name = 'fax'
      DataType = ftString
      Size = 30
    end
    item
      Name = 'phonew1'
      DataType = ftString
      Size = 30
    end
    item
      Name = 'phonew2'
      DataType = ftString
      Size = 30
    end
    item
      Name = 'phonecell'
      DataType = ftString
      Size = 30
    end
    item
      Name = 'notes'
      DataType = ftMemo
    end
    item
      Name = 'cal_ui'
      DataType = ftShortint
    end
    item
      Name = 'taxonomy'
      DataType = ftString
      Size = 30
    end
    item
      Name = 'calendar'
      DataType = ftBoolean
    end
    item
      Name = 'abook_type'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'pwd_expiration_date'
      DataType = ftDate
    end
    item
      Name = 'pwd_history1'
      DataType = ftMemo
    end
    item
      Name = 'pwd_history2'
      DataType = ftMemo
    end
    item
      Name = 'default_warehouse'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'irnpool'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'state_license_number'
      DataType = ftString
      Size = 25
    end
    item
      Name = 'weno_prov_id'
      DataType = ftString
      Size = 15
    end
    item
      Name = 'newcrop_user_role'
      DataType = ftString
      Size = 30
    end
    item
      Name = 'cpoe'
      DataType = ftBoolean
    end
    item
      Name = 'physician_type'
      DataType = ftString
      Size = 50
    end
    item
      Name = 'main_menu_role'
      DataType = ftString
      Size = 50
    end
    item
      Name = 'patient_menu_role'
      DataType = ftString
      Size = 50
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint461: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postusers/'
    Response = RESTResponse461
    Left = 4610
    Top = 4610
  end
  object RESTResponse461: TRESTResponse
    Left = 5532
    Top = 5532
  end
object postusersPostMemTable461: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end
    item
      Name = 'username'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'password'
      DataType = ftMemo
    end
    item
      Name = 'authorized'
      DataType = ftShortint
    end
    item
      Name = 'info'
      DataType = ftMemo
    end
    item
      Name = 'source'
      DataType = ftShortint
    end
    item
      Name = 'fname'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'mname'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'lname'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'suffix'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'federaltaxid'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'federaldrugid'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'upin'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'facility'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'facility_id'
      DataType = ftInteger
    end
    item
      Name = 'see_auth'
      DataType = ftInteger
    end
    item
      Name = 'active'
      DataType = ftBoolean
    end
    item
      Name = 'npi'
      DataType = ftString
      Size = 15
    end
    item
      Name = 'title'
      DataType = ftString
      Size = 30
    end
    item
      Name = 'specialty'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'billname'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'email'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'email_direct'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'url'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'assistant'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'organization'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'valedictory'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'street'
      DataType = ftString
      Size = 60
    end
    item
      Name = 'streetb'
      DataType = ftString
      Size = 60
    end
    item
      Name = 'city'
      DataType = ftString
      Size = 30
    end
    item
      Name = 'state'
      DataType = ftString
      Size = 30
    end
    item
      Name = 'zip'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'street2'
      DataType = ftString
      Size = 60
    end
    item
      Name = 'streetb2'
      DataType = ftString
      Size = 60
    end
    item
      Name = 'city2'
      DataType = ftString
      Size = 30
    end
    item
      Name = 'state2'
      DataType = ftString
      Size = 30
    end
    item
      Name = 'zip2'
      DataType = ftString
      Size = 20
    end
    item
      Name = 'phone'
      DataType = ftString
      Size = 30
    end
    item
      Name = 'fax'
      DataType = ftString
      Size = 30
    end
    item
      Name = 'phonew1'
      DataType = ftString
      Size = 30
    end
    item
      Name = 'phonew2'
      DataType = ftString
      Size = 30
    end
    item
      Name = 'phonecell'
      DataType = ftString
      Size = 30
    end
    item
      Name = 'notes'
      DataType = ftMemo
    end
    item
      Name = 'cal_ui'
      DataType = ftShortint
    end
    item
      Name = 'taxonomy'
      DataType = ftString
      Size = 30
    end
    item
      Name = 'calendar'
      DataType = ftBoolean
    end
    item
      Name = 'abook_type'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'pwd_expiration_date'
      DataType = ftDate
    end
    item
      Name = 'pwd_history1'
      DataType = ftMemo
    end
    item
      Name = 'pwd_history2'
      DataType = ftMemo
    end
    item
      Name = 'default_warehouse'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'irnpool'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'state_license_number'
      DataType = ftString
      Size = 25
    end
    item
      Name = 'weno_prov_id'
      DataType = ftString
      Size = 15
    end
    item
      Name = 'newcrop_user_role'
      DataType = ftString
      Size = 30
    end
    item
      Name = 'cpoe'
      DataType = ftBoolean
    end
    item
      Name = 'physician_type'
      DataType = ftString
      Size = 50
    end
    item
      Name = 'main_menu_role'
      DataType = ftString
      Size = 50
    end
    item
      Name = 'patient_menu_role'
      DataType = ftString
      Size = 50
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postusersMemTable461: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint462: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteusers/?id={id}'
    Response = RESTResponse462
    Left = 4620
    Top = 4620
  end
  object RESTResponse462: TRESTResponse
    Left = 5544
    Top = 5544
  end

  object BackendEndpoint463: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getusers_facility/?format={format}'
    Response = RESTResponse463
    Left = 4630
    Top = 4630
  end
  object RESTResponse463: TRESTResponse
    Left = 5556
    Top = 5556
  end
object getusers_facilityMemTable463: TFDMemTable
  FieldDefs = <
    item
      Name = 'tablename'
      Attributes = [faRequired]
      DataType = ftString
      Size = 64
    end
    item
      Name = 'table_id'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'facility_id'
      Attributes = [faRequired]
      DataType = ftInteger
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint464: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postusers_facility/'
    Response = RESTResponse464
    Left = 4640
    Top = 4640
  end
  object RESTResponse464: TRESTResponse
    Left = 5568
    Top = 5568
  end
object postusers_facilityPostMemTable464: TFDMemTable
  FieldDefs = <
    item
      Name = 'tablename'
      Attributes = [faRequired]
      DataType = ftString
      Size = 64
    end
    item
      Name = 'table_id'
      Attributes = [faRequired]
      DataType = ftInteger
    end
    item
      Name = 'facility_id'
      Attributes = [faRequired]
      DataType = ftInteger
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postusers_facilityMemTable464: TFDMemTable
  FieldDefs = <
    item
      Name = 'tablename'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint465: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'tablename'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteusers_facility/?tablename={tablename}'
    Response = RESTResponse465
    Left = 4650
    Top = 4650
  end
  object RESTResponse465: TRESTResponse
    Left = 5580
    Top = 5580
  end

  object BackendEndpoint466: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getusers_secure/?format={format}'
    Response = RESTResponse466
    Left = 4660
    Top = 4660
  end
  object RESTResponse466: TRESTResponse
    Left = 5592
    Top = 5592
  end
object getusers_secureMemTable466: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      Attributes = [faRequired]
      DataType = ftLargeint
    end
    item
      Name = 'username'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'password'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'salt'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'last_update'
      DataType = ftTimeStamp
    end
    item
      Name = 'password_history1'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'salt_history1'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'password_history2'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'salt_history2'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'last_challenge_response'
      DataType = ftDateTime
    end
    item
      Name = 'login_work_area'
      DataType = ftMemo
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint467: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postusers_secure/'
    Response = RESTResponse467
    Left = 4670
    Top = 4670
  end
  object RESTResponse467: TRESTResponse
    Left = 5604
    Top = 5604
  end
object postusers_securePostMemTable467: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      Attributes = [faRequired]
      DataType = ftLargeint
    end
    item
      Name = 'username'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'password'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'salt'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'last_update'
      DataType = ftTimeStamp
    end
    item
      Name = 'password_history1'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'salt_history1'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'password_history2'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'salt_history2'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'last_challenge_response'
      DataType = ftDateTime
    end
    item
      Name = 'login_work_area'
      DataType = ftMemo
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postusers_secureMemTable467: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint468: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deleteusers_secure/?id={id}'
    Response = RESTResponse468
    Left = 4680
    Top = 4680
  end
  object RESTResponse468: TRESTResponse
    Left = 5616
    Top = 5616
  end

  object BackendEndpoint469: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getvalueset/?format={format}'
    Response = RESTResponse469
    Left = 4690
    Top = 4690
  end
  object RESTResponse469: TRESTResponse
    Left = 5628
    Top = 5628
  end
object getvaluesetMemTable469: TFDMemTable
  FieldDefs = <
    item
      Name = 'nqf_code'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'code'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'code_system'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'code_type'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'valueset'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'description'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'valueset_name'
      DataType = ftString
      Size = 500
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint470: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postvalueset/'
    Response = RESTResponse470
    Left = 4700
    Top = 4700
  end
  object RESTResponse470: TRESTResponse
    Left = 5640
    Top = 5640
  end
object postvaluesetPostMemTable470: TFDMemTable
  FieldDefs = <
    item
      Name = 'nqf_code'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'code'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'code_system'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'code_type'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'valueset'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'description'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'valueset_name'
      DataType = ftString
      Size = 500
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postvaluesetMemTable470: TFDMemTable
  FieldDefs = <
    item
      Name = 'nqf_code'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint471: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'nqf_code'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletevalueset/?nqf_code={nqf_code}'
    Response = RESTResponse471
    Left = 4710
    Top = 4710
  end
  object RESTResponse471: TRESTResponse
    Left = 5652
    Top = 5652
  end

  object BackendEndpoint472: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getversion/?format={format}'
    Response = RESTResponse472
    Left = 4720
    Top = 4720
  end
  object RESTResponse472: TRESTResponse
    Left = 5664
    Top = 5664
  end
object getversionMemTable472: TFDMemTable
  FieldDefs = <
    item
      Name = 'v_major'
      DataType = ftInteger
    end
    item
      Name = 'v_minor'
      DataType = ftInteger
    end
    item
      Name = 'v_patch'
      DataType = ftInteger
    end
    item
      Name = 'v_realpatch'
      DataType = ftInteger
    end
    item
      Name = 'v_tag'
      DataType = ftString
      Size = 31
    end
    item
      Name = 'v_database'
      DataType = ftInteger
    end
    item
      Name = 'v_acl'
      DataType = ftInteger
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint473: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getvoids/?format={format}'
    Response = RESTResponse473
    Left = 4730
    Top = 4730
  end
  object RESTResponse473: TRESTResponse
    Left = 5676
    Top = 5676
  end
object getvoidsMemTable473: TFDMemTable
  FieldDefs = <
    item
      Name = 'void_id'
      DataType = ftLargeint
    end
    item
      Name = 'patient_id'
      Attributes = [faRequired]
      DataType = ftLargeint
    end
    item
      Name = 'encounter_id'
      DataType = ftLargeint
    end
    item
      Name = 'what_voided'
      Attributes = [faRequired]
      DataType = ftString
      Size = 31
    end
    item
      Name = 'date_original'
      DataType = ftDateTime
    end
    item
      Name = 'date_voided'
      Attributes = [faRequired]
      DataType = ftDateTime
    end
    item
      Name = 'user_id'
      Attributes = [faRequired]
      DataType = ftLargeint
    end
    item
      Name = 'amount1'
      DataType = ftBCD
      Precision = 12
      Size = 2
    end
    item
      Name = 'amount2'
      DataType = ftBCD
      Precision = 12
      Size = 2
    end
    item
      Name = 'other_info'
      DataType = ftMemo
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint474: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postvoids/'
    Response = RESTResponse474
    Left = 4740
    Top = 4740
  end
  object RESTResponse474: TRESTResponse
    Left = 5688
    Top = 5688
  end
object postvoidsPostMemTable474: TFDMemTable
  FieldDefs = <
    item
      Name = 'void_id'
      DataType = ftLargeint
    end
    item
      Name = 'patient_id'
      Attributes = [faRequired]
      DataType = ftLargeint
    end
    item
      Name = 'encounter_id'
      DataType = ftLargeint
    end
    item
      Name = 'what_voided'
      Attributes = [faRequired]
      DataType = ftString
      Size = 31
    end
    item
      Name = 'date_original'
      DataType = ftDateTime
    end
    item
      Name = 'date_voided'
      Attributes = [faRequired]
      DataType = ftDateTime
    end
    item
      Name = 'user_id'
      Attributes = [faRequired]
      DataType = ftLargeint
    end
    item
      Name = 'amount1'
      DataType = ftBCD
      Precision = 12
      Size = 2
    end
    item
      Name = 'amount2'
      DataType = ftBCD
      Precision = 12
      Size = 2
    end
    item
      Name = 'other_info'
      DataType = ftMemo
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postvoidsMemTable474: TFDMemTable
  FieldDefs = <
    item
      Name = 'void_id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint475: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'void_id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletevoids/?void_id={void_id}'
    Response = RESTResponse475
    Left = 4750
    Top = 4750
  end
  object RESTResponse475: TRESTResponse
    Left = 5700
    Top = 5700
  end

  object BackendEndpoint476: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmGET
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'format'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/getx12_partners/?format={format}'
    Response = RESTResponse476
    Left = 4760
    Top = 4760
  end
  object RESTResponse476: TRESTResponse
    Left = 5712
    Top = 5712
  end
object getx12_partnersMemTable476: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftInteger
    end
    item
      Name = 'name'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'id_number'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'x12_sender_id'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'x12_receiver_id'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'processing_format'
      Attributes = [faFixed]
      DataType = ftFixedChar
      Size = 8
    end
    item
      Name = 'x12_isa01'
      DataType = ftString
      Size = 2
    end
    item
      Name = 'x12_isa02'
      DataType = ftString
      Size = 10
    end
    item
      Name = 'x12_isa03'
      DataType = ftString
      Size = 2
    end
    item
      Name = 'x12_isa04'
      DataType = ftString
      Size = 10
    end
    item
      Name = 'x12_isa05'
      Attributes = [faFixed]
      DataType = ftFixedChar
      Size = 2
    end
    item
      Name = 'x12_isa07'
      Attributes = [faFixed]
      DataType = ftFixedChar
      Size = 2
    end
    item
      Name = 'x12_isa14'
      Attributes = [faFixed]
      DataType = ftFixedChar
      Size = 1
    end
    item
      Name = 'x12_isa15'
      Attributes = [faFixed]
      DataType = ftFixedChar
      Size = 1
    end
    item
      Name = 'x12_gs02'
      DataType = ftString
      Size = 15
    end
    item
      Name = 'x12_per06'
      DataType = ftString
      Size = 80
    end
    item
      Name = 'x12_gs03'
      DataType = ftString
      Size = 15
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

  object BackendEndpoint477: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postx12_partners/'
    Response = RESTResponse477
    Left = 4770
    Top = 4770
  end
  object RESTResponse477: TRESTResponse
    Left = 5724
    Top = 5724
  end
object postx12_partnersPostMemTable477: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftInteger
    end
    item
      Name = 'name'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'id_number'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'x12_sender_id'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'x12_receiver_id'
      DataType = ftString
      Size = 255
    end
    item
      Name = 'processing_format'
      Attributes = [faFixed]
      DataType = ftFixedChar
      Size = 8
    end
    item
      Name = 'x12_isa01'
      DataType = ftString
      Size = 2
    end
    item
      Name = 'x12_isa02'
      DataType = ftString
      Size = 10
    end
    item
      Name = 'x12_isa03'
      DataType = ftString
      Size = 2
    end
    item
      Name = 'x12_isa04'
      DataType = ftString
      Size = 10
    end
    item
      Name = 'x12_isa05'
      Attributes = [faFixed]
      DataType = ftFixedChar
      Size = 2
    end
    item
      Name = 'x12_isa07'
      Attributes = [faFixed]
      DataType = ftFixedChar
      Size = 2
    end
    item
      Name = 'x12_isa14'
      Attributes = [faFixed]
      DataType = ftFixedChar
      Size = 1
    end
    item
      Name = 'x12_isa15'
      Attributes = [faFixed]
      DataType = ftFixedChar
      Size = 1
    end
    item
      Name = 'x12_gs02'
      DataType = ftString
      Size = 15
    end
    item
      Name = 'x12_per06'
      DataType = ftString
      Size = 80
    end
    item
      Name = 'x12_gs03'
      DataType = ftString
      Size = 15
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 281
  Top = 377
end

object postx12_partnersMemTable477: TFDMemTable
  FieldDefs = <
    item
      Name = 'id'
      DataType = ftLargeint
    end>
  IndexDefs = <>
  FetchOptions.AssignedValues = [evMode]
  FetchOptions.Mode = fmAll
  ResourceOptions.AssignedValues = [rvSilentMode]
  ResourceOptions.SilentMode = True
  UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
  UpdateOptions.CheckRequired = False
  UpdateOptions.AutoCommitUpdates = True
  StoreDefs = True
  Left = 377
  Top = 401
end

  object BackendEndpoint478: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
    item
      Kind = pkURLSEGMENT
      name = 'id'
      Options = [poAutoCreated]
    end>
    Resource = 'v1/deletex12_partners/?id={id}'
    Response = RESTResponse478
    Left = 4780
    Top = 4780
  end
  object RESTResponse478: TRESTResponse
    Left = 5736
    Top = 5736
  end

  object BackendAuth1: TBackendAuth
    Provider = EMSProvider1
    LoginPrompt = False
    UserDetails = <>
    DefaultAuthentication = Application
    Left = 392
    Top = 88
  end
  object EMSProvider1: TEMSProvider
    ApiVersion = '1'
    URLHost = 'localhost'
    URLPort = 8080
    Left = 240
    Top = 144
  end
end
