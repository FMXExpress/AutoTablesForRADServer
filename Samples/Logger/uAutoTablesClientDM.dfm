object AutoTablesClientDM: TAutoTablesClientDM
  OldCreateOrder = False
  Height = 484
  Width = 669
  object BackendEndpoint1: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Params = <
      item
        Kind = pkURLSEGMENT
        name = 'format'
        Options = [poAutoCreated]
      end>
    Resource = 'v1/getlogger/?format={format}'
    Response = RESTResponse1
    Left = 50
    Top = 26
  end
  object RESTResponse1: TRESTResponse
    Left = 244
    Top = 28
  end
  object getloggerMemTable1: TFDMemTable
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CATEGORY'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'NAME'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'MESSAGE'
        DataType = ftString
        Size = 4096
      end
      item
        Name = 'LAST_MODIFIED'
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
    Left = 201
    Top = 313
  end
  object BackendEndpoint2: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postlogger/'
    Response = RESTResponse2
    Left = 36
    Top = 108
  end
  object RESTResponse2: TRESTResponse
    Left = 136
    Top = 40
  end
  object postloggerPostMemTable2: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CATEGORY'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'NAME'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'MESSAGE'
        DataType = ftString
        Size = 4096
      end
      item
        Name = 'LAST_MODIFIED'
        DataType = ftTimeStamp
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode]
    ResourceOptions.Persistent = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 273
    Top = 249
    Content = {
      414442530F00A037E3020000FF00010001FF02FF0304002E00000070006F0073
      0074006C006F00670067006500720050006F00730074004D0065006D00540061
      0062006C006500320005000A0000005400610062006C00650006000000000007
      0000080032000000090000FF0AFF0B0400040000004900440005000400000049
      0044000C00010000000E000D000F000110000111000112000113000400000049
      004400FEFF0B040010000000430041005400450047004F005200590005001000
      0000430041005400450047004F00520059000C00020000000E0014001500FF00
      00000F0001160001100001170001110001120001130010000000430041005400
      450047004F00520059001800FF000000FEFF0B0400080000004E0041004D0045
      000500080000004E0041004D0045000C00030000000E0014001500FF0000000F
      00011600011000011700011100011200011300080000004E0041004D00450018
      00FF000000FEFF0B04000E0000004D0045005300530041004700450005000E00
      00004D004500530053004100470045000C00040000000E001400150000100000
      0F000116000119000110000117000111000112000113000E0000004D00450053
      005300410047004500180000100000FEFF0B04001A0000004C00410053005400
      5F004D004F0044004900460049004500440005001A0000004C00410053005400
      5F004D004F004400490046004900450044000C00050000000E001A000F000116
      000110000117000111000112000113001A0000004C004100530054005F004D00
      4F00440049004600490045004400FEFEFF1BFEFF1CFEFF1DFF1E1F0000000000
      FF20000000000000010005000000446562756702000D0000004465627567204D
      657373616765030042000000546869732069732061206D657373616765207375
      626D697474656420746F20746865207365727665722076696120746865204175
      746F205461626C6573204150492EFEFEFEFEFEFF21FEFF22230001000000FF24
      FEFEFE0E004D0061006E0061006700650072001E005500700064006100740065
      0073005200650067006900730074007200790012005400610062006C0065004C
      006900730074000A005400610062006C00650008004E0061006D006500140053
      006F0075007200630065004E0061006D0065000A005400610062004900440024
      0045006E0066006F0072006300650043006F006E00730074007200610069006E
      00740073001E004D0069006E0069006D0075006D004300610070006100630069
      0074007900180043006800650063006B004E006F0074004E0075006C006C0014
      0043006F006C0075006D006E004C006900730074000C0043006F006C0075006D
      006E00100053006F007500720063006500490044000E006400740049006E0074
      0033003200100044006100740061005400790070006500140053006500610072
      0063006800610062006C0065000800420061007300650012004F0049006E0055
      007000640061007400650010004F0049006E00570068006500720065001A004F
      0072006900670069006E0043006F006C004E0061006D00650018006400740041
      006E007300690053007400720069006E0067000800530069007A006500120041
      006C006C006F0077004E0075006C006C0014004F0041006C006C006F0077004E
      0075006C006C00140053006F007500720063006500530069007A006500100042
      006C006F00620044006100740061001E00640074004400610074006500540069
      006D0065005300740061006D0070001C0043006F006E00730074007200610069
      006E0074004C00690073007400100056006900650077004C006900730074000E
      0052006F0077004C00690073007400060052006F0077000A0052006F00770049
      00440010004F0072006900670069006E0061006C001800520065006C00610074
      0069006F006E004C006900730074001C0055007000640061007400650073004A
      006F00750072006E0061006C001200530061007600650050006F0069006E0074
      000E004300680061006E00670065007300}
  end
  object postloggerMemTable2: TFDMemTable
    FieldDefs = <
      item
        Name = 'ID'
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
    Left = 417
    Top = 321
  end
  object BackendEndpoint3: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
      item
        Kind = pkURLSEGMENT
        name = 'ID'
        Options = [poAutoCreated]
      end>
    Resource = 'v1/deletelogger/?ID={ID}'
    Response = RESTResponse3
    Left = 54
    Top = 166
  end
  object RESTResponse3: TRESTResponse
    Left = 148
    Top = 148
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
