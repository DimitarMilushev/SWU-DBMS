object HostelsRoomsInventoryForm: THostelsRoomsInventoryForm
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
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object LabelHostels: TLabel
    Left = 9
    Top = 38
    Width = 61
    Height = 13
    Caption = #1054#1073#1097#1077#1078#1080#1090#1080#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object BevelHostels: TBevel
    Left = 76
    Top = 46
    Width = 325
    Height = 10
    Shape = bsTopLine
  end
  object LabelRooms: TLabel
    Left = 9
    Top = 165
    Width = 25
    Height = 13
    Caption = #1057#1090#1072#1080
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object BevelRooms: TBevel
    Left = 40
    Top = 172
    Width = 361
    Height = 5
    Shape = bsTopLine
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
  object Bevel2: TBevel
    Left = 409
    Top = 46
    Width = 4
    Height = 420
    Shape = bsLeftLine
  end
  object Label1: TLabel
    Left = 417
    Top = 38
    Width = 106
    Height = 13
    Caption = #1057#1082#1083#1072#1076#1086#1074#1072' '#1085#1072#1083#1080#1095#1085#1086#1089#1090
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Bevel3: TBevel
    Left = 529
    Top = 46
    Width = 182
    Height = 10
    Shape = bsTopLine
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
    Top = 56
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
    OnEnter = DBGridHostelsEnter
    Columns = <
      item
        Expanded = False
        FieldName = 'SettlementName'
        Title.Caption = ' '#1053#1072#1089#1077#1083#1077#1085#1086' '#1084#1103#1089#1090#1086
        Width = 105
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HAddress'
        Title.Caption = ' '#1040#1076#1088#1077#1089
        Width = 158
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HNumber'
        Title.Caption = ' '#1040#1073#1088#1077#1074'.'
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HPhone'
        Title.Caption = ' '#1058#1077#1083#1077#1092#1086#1085
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HEmail'
        Title.Caption = ' '#1048#1084#1077#1081#1083
        Width = 155
        Visible = True
      end>
  end
  object DBGridRooms: TDBGrid
    Left = 9
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
    OnEnter = DBGridRoomsEnter
    Columns = <
      item
        Expanded = False
        FieldName = 'RNumber'
        Title.Caption = ' '#1053#1086#1084#1077#1088
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RFloor'
        Title.Caption = ' '#1045#1090#1072#1078
        Width = 41
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NumberOfBeds'
        Title.Caption = ' '#1041#1088#1086#1081' '#1084#1077#1089#1090#1072
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
        Title.Caption = ' '#1057#1098#1089#1090#1086#1103#1085#1080#1077
        Width = 133
        Visible = True
      end>
  end
  object BitBtnOk: TBitBtn
    Left = 543
    Top = 472
    Width = 81
    Height = 26
    Caption = 'OK'
    Enabled = False
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    ModalResult = 1
    NumGlyphs = 2
    TabOrder = 3
  end
  object BitBtnCancel: TBitBtn
    Left = 631
    Top = 472
    Width = 81
    Height = 26
    Caption = #1054#1090#1082#1072#1079
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333333333000033338833333333333333333F333333333333
      0000333911833333983333333388F333333F3333000033391118333911833333
      38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
      911118111118333338F3338F833338F3000033333911111111833333338F3338
      3333F8330000333333911111183333333338F333333F83330000333333311111
      8333333333338F3333383333000033333339111183333333333338F333833333
      00003333339111118333333333333833338F3333000033333911181118333333
      33338333338F333300003333911183911183333333383338F338F33300003333
      9118333911183333338F33838F338F33000033333913333391113333338FF833
      38F338F300003333333333333919333333388333338FFF830000333333333333
      3333333333333333333888330000333333333333333333333333333333333333
      0000}
    ModalResult = 2
    NumGlyphs = 2
    TabOrder = 4
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 352
    Width = 393
    Height = 113
    DataSource = DataSourceAccForms
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'FirstName'
        Title.Caption = ' '#1048#1084#1077
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MiddleName'
        Title.Caption = ' '#1055#1088#1077#1079#1080#1084#1077
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LastName'
        Title.Caption = ' '#1060#1072#1084#1080#1083#1080#1103
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AFNumber'
        Title.Caption = ' '#1050'-'#1085' No'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AccDate'
        Title.Caption = ' '#1050#1072#1088#1090#1086#1085' '#1076#1072#1090#1072
        Width = 74
        Visible = True
      end>
  end
  object DBGridInventory: TDBGrid
    Left = 418
    Top = 56
    Width = 293
    Height = 410
    DataSource = DataSourceInventory
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnEnter = DBGridInventoryEnter
    Columns = <
      item
        Expanded = False
        FieldName = 'IName'
        Title.Caption = ' '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 146
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Price'
        Title.Caption = ' '#1062#1077#1085#1072
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ICount'
        Title.Caption = ' '#1041#1088#1086#1081' '
        Width = 35
        Visible = True
      end>
  end
  object DataSetHostels: TADODataSet
    Connection = DM.Connection
    CursorType = ctStatic
    CommandText = 'Hostels'
    CommandType = cmdTable
    Parameters = <>
    Left = 128
    Top = 104
    object DataSetHostelsPkHostel: TAutoIncField
      FieldName = 'PkHostel'
      ReadOnly = True
    end
    object DataSetHostelsHNumber: TWideStringField
      FieldName = 'HNumber'
      Size = 5
    end
    object DataSetHostelsFkSettlement: TIntegerField
      FieldName = 'FkSettlement'
    end
    object DataSetHostelsSettlementName: TStringField
      FieldKind = fkLookup
      FieldName = 'SettlementName'
      LookupDataSet = DataSetSettlements
      LookupKeyFields = 'PkSettlement'
      LookupResultField = 'SName'
      KeyFields = 'FkSettlement'
      Size = 50
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
    Left = 224
    Top = 104
  end
  object DataSetRooms: TADODataSet
    Connection = DM.Connection
    CursorType = ctStatic
    AfterPost = DataSetRoomsAfterPost
    AfterScroll = DataSetRoomsAfterScroll
    OnNewRecord = DataSetRoomsNewRecord
    CommandText = 'Rooms'
    CommandType = cmdTable
    DataSource = DataSourceHostels
    IndexFieldNames = 'FkHostel'
    MasterFields = 'PkHostel'
    Parameters = <>
    Left = 161
    Top = 242
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
    Left = 273
    Top = 242
  end
  object DataSetSettlements: TADODataSet
    Connection = DM.Connection
    CursorType = ctStatic
    CommandText = 'Settlements'
    CommandType = cmdTable
    Parameters = <>
    Left = 328
    Top = 104
    object DataSetSettlementsPkSettlement: TAutoIncField
      FieldName = 'PkSettlement'
      ReadOnly = True
    end
    object DataSetSettlementsSName: TStringField
      FieldName = 'SName'
      Size = 50
    end
  end
  object DataSetAccForms: TADODataSet
    Connection = DM.Connection
    CursorType = ctStatic
    AfterScroll = DataSetAccFormsAfterScroll
    CommandText = 
      'select'#13#10'  Persons.FirstName, '#13#10'  Persons.MiddleName,'#13#10'  Persons.' +
      'LastName,'#13#10'  AccForms.AFNumber,'#13#10'  AccForms.AccDate'#13#10'from '#13#10'  Ac' +
      'cForms inner join Persons'#13#10'  on AccForms.FkPerson = Persons.PkPe' +
      'rson'#13#10'where '#13#10'  AFStatus = '#39#1040#1082#1090#1080#1074#1077#1085#39#13#10'  and'#13#10'  FkRoom = :PkRoom'
    DataSource = DataSourceRooms
    MasterFields = 'PkRoom'
    Parameters = <
      item
        Name = 'PkRoom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 144
    Top = 400
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
    object DataSetAccFormsAccDate: TDateTimeField
      FieldName = 'AccDate'
    end
  end
  object DataSourceAccForms: TDataSource
    DataSet = DataSetAccForms
    Left = 264
    Top = 400
  end
  object DataSetInventory: TADODataSet
    Connection = DM.Connection
    CursorType = ctStatic
    CommandText = 'Inventory'
    CommandType = cmdTable
    Parameters = <>
    Left = 488
    Top = 240
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
    Left = 600
    Top = 240
  end
end
