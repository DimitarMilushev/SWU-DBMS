object CDSForm: TCDSForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1044#1098#1088#1078#1072#1074#1080' | '#1054#1073#1083#1072#1089#1090#1080' | '#1053#1072#1089#1077#1083#1077#1085#1080' '#1084#1077#1089#1090#1072
  ClientHeight = 416
  ClientWidth = 424
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
  object LabelCountries: TLabel
    Left = 8
    Top = 48
    Width = 47
    Height = 13
    Caption = #1044#1098#1088#1078#1072#1074#1080
  end
  object LabelDistricts: TLabel
    Left = 216
    Top = 48
    Width = 43
    Height = 13
    Caption = #1054#1073#1083#1072#1089#1090#1080
  end
  object LabelSettlements: TLabel
    Left = 8
    Top = 216
    Width = 80
    Height = 13
    Caption = #1053#1072#1089#1077#1083#1077#1085#1080' '#1084#1077#1089#1090#1072
  end
  object Bevel: TBevel
    Left = 8
    Top = 39
    Width = 409
    Height = 9
    Shape = bsTopLine
  end
  object DBGridCountries: TDBGrid
    Left = 8
    Top = 64
    Width = 201
    Height = 145
    DataSource = DataSourceCountries
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnEnter = DBGridCountriesEnter
    Columns = <
      item
        Expanded = False
        FieldName = 'CName'
        Title.Caption = ' '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 160
        Visible = True
      end>
  end
  object DBGridDistricts: TDBGrid
    Left = 216
    Top = 64
    Width = 201
    Height = 145
    DataSource = DataSourceDistricts
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnEnter = DBGridDistrictsEnter
    Columns = <
      item
        Expanded = False
        FieldName = 'DName'
        Title.Caption = ' '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 160
        Visible = True
      end>
  end
  object DBGridSettlements: TDBGrid
    Left = 8
    Top = 232
    Width = 409
    Height = 145
    DataSource = DataSourceSettlements
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnEnter = DBGridSettlementsEnter
    Columns = <
      item
        Expanded = False
        FieldName = 'SType'
        PickList.Strings = (
          #1075#1088'.'
          #1089'.')
        Title.Caption = ' '#1058#1080#1087
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SName'
        Title.Caption = ' '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 228
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ZipCode'
        Title.Caption = ' '#1055'. '#1082#1086#1076
        Width = 71
        Visible = True
      end>
  end
  object DBNavigator: TDBNavigator
    Left = 8
    Top = 8
    Width = 405
    Height = 25
    DataSource = DataSourceCountries
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
    Hints.Strings = (
      #1055#1098#1088#1074#1080' '#1079#1072#1087#1080#1089
      #1055#1088#1077#1076#1080#1096#1077#1085' '#1079#1072#1087#1080#1089
      #1057#1083#1077#1076#1074#1072#1097' '#1079#1072#1087#1080#1089
      #1055#1086#1089#1083#1077#1076#1077#1085' '#1079#1072#1087#1080#1089
      #1042#1084#1098#1082#1085#1080' '#1079#1072#1087#1080#1089
      #1048#1079#1090#1088#1080#1081' '#1079#1072#1087#1080#1089
      #1056#1077#1076#1072#1082#1090#1080#1088#1072#1081' '#1079#1072#1087#1080#1089
      #1047#1072#1087#1080#1096#1080' '#1087#1088#1086#1084#1077#1085#1080#1090#1077
      #1054#1090#1082#1072#1078#1080' '#1087#1088#1086#1084#1077#1085#1080#1090#1077)
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
  end
  object BitBtnOk: TBitBtn
    Left = 249
    Top = 384
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
    TabOrder = 4
  end
  object BitBtnCancel: TBitBtn
    Left = 337
    Top = 384
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
    TabOrder = 5
  end
  object DataSourceCountries: TDataSource
    DataSet = DataSetCountries
    Left = 80
    Top = 152
  end
  object DataSourceDistricts: TDataSource
    DataSet = DataSetDistricts
    Left = 288
    Top = 152
  end
  object DataSourceSettlements: TDataSource
    DataSet = DataSetSettlements
    Left = 224
    Top = 280
  end
  object DataSetCountries: TADODataSet
    Connection = DM.Connection
    CursorType = ctStatic
    CommandText = 'select * from Countries'#13#10'order by CName ASC'
    IndexFieldNames = 'CName'
    Parameters = <>
    Left = 80
    Top = 104
    object DataSetCountriesPkCountry: TAutoIncField
      FieldName = 'PkCountry'
      ReadOnly = True
    end
    object DataSetCountriesCName: TStringField
      FieldName = 'CName'
    end
  end
  object DataSetDistricts: TADODataSet
    Connection = DM.Connection
    CursorType = ctStatic
    CommandText = 'select * from Districts'#13#10'where FkCountry = :PkCountry'
    DataSource = DataSourceCountries
    IndexFieldNames = 'FkCountry;DName'
    Parameters = <
      item
        Name = 'PkCountry'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 288
    Top = 104
    object DataSetDistrictsPkDistrict: TAutoIncField
      FieldName = 'PkDistrict'
      ReadOnly = True
    end
    object DataSetDistrictsFkCountry: TIntegerField
      FieldName = 'FkCountry'
    end
    object DataSetDistrictsDName: TWideStringField
      FieldName = 'DName'
      Size = 30
    end
  end
  object DataSetSettlements: TADODataSet
    Connection = DM.Connection
    CursorType = ctStatic
    AfterPost = DataSetSettlementsAfterPost
    AfterScroll = DataSetSettlementsAfterScroll
    CommandText = 'select * from Settlements'#13#10'where FkDistrict = :PkDistrict'
    DataSource = DataSourceDistricts
    IndexFieldNames = 'FkDistrict;SType;SName'
    Parameters = <
      item
        Name = 'PkDistrict'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 104
    Top = 280
    object DataSetSettlementsPkSettlement: TAutoIncField
      FieldName = 'PkSettlement'
      ReadOnly = True
    end
    object DataSetSettlementsFkDistrict: TIntegerField
      FieldName = 'FkDistrict'
    end
    object DataSetSettlementsSType: TStringField
      FieldName = 'SType'
      Size = 10
    end
    object DataSetSettlementsSName: TStringField
      FieldName = 'SName'
      Size = 50
    end
    object DataSetSettlementsZipCode: TIntegerField
      FieldName = 'ZipCode'
    end
  end
end
