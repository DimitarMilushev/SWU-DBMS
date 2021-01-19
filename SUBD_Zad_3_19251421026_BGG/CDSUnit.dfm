object CDSForm: TCDSForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1044#1098#1088#1078#1072#1074#1080' | '#1054#1073#1083#1072#1089#1090#1080' | '#1053#1072#1089#1077#1083#1077#1085#1080' '#1084#1077#1089#1090#1072
  ClientHeight = 473
  ClientWidth = 445
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 8
    Top = 39
    Width = 425
    Height = 10
    Shape = bsTopLine
  end
  object Label1: TLabel
    Left = 8
    Top = 47
    Width = 47
    Height = 13
    Caption = #1044#1098#1088#1078#1072#1074#1080
  end
  object Label2: TLabel
    Left = 232
    Top = 47
    Width = 43
    Height = 13
    Caption = #1054#1073#1083#1072#1089#1090#1080
  end
  object Label3: TLabel
    Left = 8
    Top = 239
    Width = 80
    Height = 13
    Caption = #1053#1072#1089#1077#1083#1077#1085#1080' '#1084#1077#1089#1090#1072
  end
  object DBGridCountries: TDBGrid
    Left = 8
    Top = 66
    Width = 209
    Height = 167
    DataSource = DataSourceCountries
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CName'
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Visible = True
      end>
  end
  object DBNavigator: TDBNavigator
    Left = 8
    Top = 8
    Width = 423
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
    TabOrder = 1
  end
  object DBGridDistricts: TDBGrid
    Left = 232
    Top = 66
    Width = 201
    Height = 167
    DataSource = DataSourceDistricts
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'DName'
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Visible = True
      end>
  end
  object DBGridSettlements: TDBGrid
    Left = 8
    Top = 256
    Width = 425
    Height = 169
    DataSource = DataSourceSettlements
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'SType'
        PickList.Strings = (
          #1075#1088'.'
          #1089'.')
        Title.Caption = #1058#1080#1087
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SName'
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 171
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ZipCode'
        Title.Caption = #1055'. '#1082#1086#1076
        Visible = True
      end>
  end
  object BitBtnDeveloper: TBitBtn
    Left = 8
    Top = 431
    Width = 89
    Height = 33
    Caption = #1056#1072#1079#1088#1072#1073#1086#1090#1080#1083'...'
    Kind = bkHelp
    NumGlyphs = 2
    TabOrder = 4
    OnClick = BitBtnDeveloperClick
  end
  object BitBtnOk: TBitBtn
    Left = 264
    Top = 431
    Width = 75
    Height = 25
    Enabled = False
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 5
  end
  object BitBtnCancel: TBitBtn
    Left = 358
    Top = 431
    Width = 75
    Height = 25
    Caption = #1054#1090#1082#1072#1079
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 6
  end
  object DataSetCountries: TADODataSet
    Connection = DM.Connection
    CursorType = ctStatic
    CommandText = 'select * from Countries order by CName ASC'
    IndexFieldNames = 'CName'
    Parameters = <>
    Left = 56
    Top = 104
    object DataSetCountriesPkCountry: TAutoIncField
      FieldName = 'PkCountry'
      ReadOnly = True
    end
    object DataSetCountriesCName: TStringField
      FieldName = 'CName'
    end
  end
  object DataSourceCountries: TDataSource
    DataSet = DataSetCountries
    Left = 56
    Top = 160
  end
  object DataSetDistricts: TADODataSet
    Connection = DM.Connection
    CursorType = ctStatic
    CommandText = 'select * from Districts where FkCountry = :PkCountry'
    DataSource = DataSourceCountries
    IndexFieldNames = 'FkCountry;DName'
    MasterFields = 'PkCountry'
    Parameters = <
      item
        Name = 'PkCountry'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 272
    Top = 120
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
  object DataSourceDistricts: TDataSource
    DataSet = DataSetDistricts
    Left = 272
    Top = 168
  end
  object DataSourceSettlements: TDataSource
    DataSet = DataSetSettlements
    Left = 192
    Top = 344
  end
  object DataSetSettlements: TADODataSet
    Connection = DM.Connection
    CursorType = ctStatic
    AfterPost = DataSetSettlementsAfterPost
    AfterScroll = DataSetSettlementsAfterScroll
    CommandText = 'select * from Settlements where FkDistrict = :PkDistrict'
    DataSource = DataSourceDistricts
    IndexFieldNames = 'FkDistrict;SType;SName'
    MasterFields = 'PkDistrict'
    Parameters = <
      item
        Name = 'PkDistrict'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 192
    Top = 292
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
