object HostelsRoomsInvertoryForm: THostelsRoomsInvertoryForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1054#1073#1097#1077#1078#1080#1090#1080#1103', '#1089#1090#1072#1080' '#1080' '#1089#1082#1083#1072#1076#1086#1074#1072' '#1085#1072#1083#1080#1095#1085#1086#1089#1090
  ClientHeight = 505
  ClientWidth = 719
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LabelHostels: TLabel
    Left = 9
    Top = 38
    Width = 61
    Height = 13
    Caption = #1054#1073#1097#1077#1078#1080#1090#1080#1103
  end
  object BevelRooms: TBevel
    Left = 40
    Top = 172
    Width = 361
    Height = 6
    Shape = bsTopLine
  end
  object BevelHostels: TBevel
    Left = 76
    Top = 46
    Width = 325
    Height = 10
    Shape = bsTopLine
  end
  object LabelRooms: TLabel
    Left = 8
    Top = 165
    Width = 25
    Height = 13
    Caption = #1057#1090#1072#1080
  end
  object LabelPersonsCount: TLabel
    Left = 9
    Top = 335
    Width = 92
    Height = 13
    Caption = #1053#1072#1077#1084#1072#1090#1077#1083#1080': 0 '#1086#1090' 0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Bevel1: TBevel
    Left = 108
    Top = 342
    Width = 293
    Height = 4
    Shape = bsTopLine
  end
  object BevelSplitter: TBevel
    Left = 409
    Top = 46
    Width = 4
    Height = 420
    Shape = bsLeftLine
  end
  object BevelInvertory: TBevel
    Left = 529
    Top = 46
    Width = 182
    Height = 10
    Shape = bsTopLine
  end
  object LabelInventory: TLabel
    Left = 417
    Top = 39
    Width = 106
    Height = 13
    Caption = #1057#1082#1083#1072#1076#1086#1074#1072' '#1085#1072#1083#1080#1095#1085#1086#1089#1090
  end
  object DBNavigator: TDBNavigator
    Left = 8
    Top = 8
    Width = 700
    Height = 25
    DataSource = DataSourceHostels
    TabOrder = 0
  end
  object DBGridHostels: TDBGrid
    Left = 8
    Top = 57
    Width = 393
    Height = 105
    DataSource = DataSourceHostels
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'SettlementName'
        Title.Caption = #1053#1072#1089#1077#1083#1077#1085#1086' '#1084#1103#1089#1090#1086
        Width = 105
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HAddress'
        Title.Caption = #1040#1076#1088#1077#1089
        Width = 158
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HNumber'
        Title.Caption = #1040#1073#1088#1077#1074'.'
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HPhone'
        Title.Caption = #1058#1077#1083#1077#1092#1086#1085
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HEmail'
        Title.Caption = #1048#1084#1077#1081#1083
        Width = 155
        Visible = True
      end>
  end
  object DBGridRooms: TDBGrid
    Left = 8
    Top = 182
    Width = 392
    Height = 147
    DataSource = DataSourceRooms
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'RNumber'
        Title.Caption = #1053#1086#1084#1077#1088
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RFloor'
        Title.Caption = #1045#1090#1072#1078
        Width = 41
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NumberOfBeds'
        Title.Caption = #1041#1088#1086#1081' '#1084#1077#1089#1090#1072
        Width = 95
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RStatus'
        PickList.Strings = (
          #1089#1074#1086#1073#1086#1076#1085#1072
          #1080#1079#1087#1086#1083#1079#1074#1072' '#1089#1077
          #1079#1072#1077#1090#1072
          #1074' '#1088#1077#1084#1086#1085#1090)
        Title.Caption = #1057#1098#1089#1090#1086#1103#1085#1080#1077
        Width = 133
        Visible = True
      end>
  end
  object DBGridPersons: TDBGrid
    Left = 10
    Top = 352
    Width = 393
    Height = 113
    DataSource = DataSourceAccForms
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'FirstName'
        Title.Caption = #1048#1084#1077
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MiddleName'
        Title.Caption = #1055#1088#1077#1079#1080#1084#1077
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LastName'
        Title.Caption = #1060#1072#1084#1080#1083#1080#1103
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AFNumber'
        Title.Caption = #1050'-'#1085' No'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AccDate'
        Title.Caption = #1050#1072#1088#1090#1086#1085' '#1076#1072#1090#1072
        Width = 74
        Visible = True
      end>
  end
  object DBGridInventory: TDBGrid
    Left = 419
    Top = 55
    Width = 293
    Height = 410
    DataSource = DataSourceInventory
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgCancelOnExit]
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'IName'
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 146
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Price'
        Title.Caption = #1062#1077#1085#1072
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ICount'
        Title.Caption = #1041#1088#1086#1081
        Visible = True
      end>
  end
  object BitBtnDeveloper: TBitBtn
    Left = 8
    Top = 471
    Width = 106
    Height = 26
    Caption = #1056#1072#1079#1088#1072#1073#1086#1090#1080#1083'..'
    Kind = bkHelp
    NumGlyphs = 2
    TabOrder = 5
    OnClick = BitBtnDeveloperClick
  end
  object BitBtnOk: TBitBtn
    Left = 543
    Top = 471
    Width = 81
    Height = 26
    Enabled = False
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 6
  end
  object BitBtnCancel: TBitBtn
    Left = 630
    Top = 471
    Width = 81
    Height = 26
    Caption = #1054#1090#1082#1072#1079
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 7
  end
  object DataSetSettlements: TADODataSet
    Active = True
    Connection = DM.Connection
    CursorType = ctStatic
    CommandText = 'Settlements'
    CommandType = cmdTable
    Parameters = <>
    Left = 328
    Top = 96
    object DataSetSettlementsPkSettlement: TAutoIncField
      FieldName = 'PkSettlement'
      ReadOnly = True
    end
    object DataSetSettlementsFkDistrict: TIntegerField
      FieldName = 'FkDistrict'
    end
    object DataSetSettlementsSType: TWideStringField
      FieldName = 'SType'
      Size = 10
    end
    object DataSetSettlementsSNAME: TWideStringField
      FieldName = 'SNAME'
      Size = 50
    end
    object DataSetSettlementsZipCode: TIntegerField
      FieldName = 'ZipCode'
    end
  end
  object DataSetHostels: TADODataSet
    Connection = DM.Connection
    CursorType = ctStatic
    CommandText = 'Hostels'
    CommandType = cmdTable
    Parameters = <>
    Left = 48
    Top = 96
    object DataSetHostelsPkHostel: TAutoIncField
      FieldName = 'PkHostel'
      ReadOnly = True
    end
    object DataSetHostelsHNumber: TWideStringField
      FieldName = 'HNumber'
      Size = 5
    end
    object DataSetHostelsFkSettlement: TIntegerField
      FieldKind = fkLookup
      FieldName = 'FkSettlement'
      LookupDataSet = DataSetSettlements
      LookupKeyFields = 'PkSettlement'
      LookupResultField = 'SNAME'
      KeyFields = 'FkSettlement'
      LookupCache = True
      Lookup = True
    end
    object DataSetHostelsHAddress: TWideStringField
      FieldName = 'HAddress'
      Size = 100
    end
    object DataSetHostelsHPhone: TWideStringField
      FieldName = 'HPhone'
    end
    object DataSetHostelsHEmail: TWideStringField
      FieldName = 'HEmail'
    end
  end
  object DataSourceHostels: TDataSource
    DataSet = DataSetHostels
    Left = 176
    Top = 104
  end
  object DataSetRooms: TADODataSet
    Connection = DM.Connection
    CursorType = ctStatic
    CommandText = 'Rooms'
    CommandType = cmdTable
    DataSource = DataSourceHostels
    IndexFieldNames = 'FkHostel'
    MasterFields = 'PkHostel'
    Parameters = <>
    Left = 56
    Top = 240
    object DataSetRoomsPkRoom: TAutoIncField
      FieldName = 'PkRoom'
      ReadOnly = True
    end
    object DataSetRoomsFkHostel: TIntegerField
      FieldName = 'FkHostel'
    end
    object DataSetRoomsRNumber: TWideStringField
      FieldName = 'RNumber'
      Size = 8
    end
    object DataSetRoomsRFloor: TWordField
      FieldName = 'RFloor'
    end
    object DataSetRoomsNumberOfBeds: TWordField
      FieldName = 'NumberOfBeds'
    end
    object DataSetRoomsRStatus: TWideStringField
      FieldName = 'RStatus'
    end
  end
  object DataSourceRooms: TDataSource
    DataSet = DataSetRooms
    Left = 200
    Top = 240
  end
  object DataSetAccForms: TADODataSet
    Active = True
    Connection = DM.Connection
    CursorType = ctStatic
    CommandText = 
      'SELECT Persons.FirstName,'#13#10'Persons.MiddleName,Persons.LastName,'#13 +
      #10'AccForms.AFNumber,'#13#10'AccForms.AccDate'#13#10'FROM'#13#10'AccForms INNER JOIN' +
      ' Persons on AccForms.FkPerson = Persons.PkPerson WHERE'#13#10' AFStatu' +
      's = '#39#1040#1082#1090#1080#1074#1077#1085#39
    DataSource = DataSourceRooms
    MasterFields = 'PkRoom'
    Parameters = <>
    Left = 80
    Top = 392
    object DataSetAccFormsFirstName: TWideStringField
      FieldName = 'FirstName'
      Size = 15
    end
    object DataSetAccFormsMiddleName: TWideStringField
      FieldName = 'MiddleName'
      Size = 15
    end
    object DataSetAccFormsLastName: TWideStringField
      FieldName = 'LastName'
      Size = 25
    end
    object DataSetAccFormsAFNumber: TWideStringField
      FieldName = 'AFNumber'
      Size = 8
    end
    object DataSetAccFormsAccDate: TWideStringField
      FieldName = 'AccDate'
      Size = 10
    end
  end
  object DataSourceAccForms: TDataSource
    DataSet = DataSetAccForms
    Left = 192
    Top = 416
  end
  object DataSetInventory: TADODataSet
    Connection = DM.Connection
    CursorType = ctStatic
    CommandText = 'Inventory'
    CommandType = cmdTable
    Parameters = <>
    Left = 512
    Top = 272
    object DataSetInventoryPkInventory: TAutoIncField
      FieldName = 'PkInventory'
      ReadOnly = True
    end
    object DataSetInventoryIName: TWideStringField
      FieldName = 'IName'
      Size = 30
    end
    object DataSetInventoryPrice: TBCDField
      FieldName = 'Price'
      DisplayFormat = '0.00" '#1083#1074'."'
      Precision = 19
    end
    object DataSetInventoryICount: TIntegerField
      FieldName = 'ICount'
    end
  end
  object DataSourceInventory: TDataSource
    DataSet = DataSetInventory
    Left = 512
    Top = 328
  end
end
