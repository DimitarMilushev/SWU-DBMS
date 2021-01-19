object NomenclaturesForm: TNomenclaturesForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1080
  ClientHeight = 355
  ClientWidth = 578
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
  object Splitter: TSplitter
    AlignWithMargins = True
    Left = 170
    Top = 31
    Width = 5
    Height = 285
    Margins.Left = 0
    Margins.Top = 31
    Margins.Right = 0
    Margins.Bottom = 6
    ExplicitLeft = 173
    ExplicitTop = 3
    ExplicitHeight = 349
  end
  object PanelLeft: TPanel
    Left = 0
    Top = 0
    Width = 170
    Height = 322
    Align = alLeft
    BevelOuter = bvNone
    Caption = 'PanelLeft'
    Constraints.MinWidth = 100
    TabOrder = 0
    ExplicitHeight = 355
    DesignSize = (
      170
      322)
    object LabelNomenclatures: TLabel
      Left = 9
      Top = 9
      Width = 85
      Height = 13
      Caption = #1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1080
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ListBoxNomenclatures: TListBox
      Left = 8
      Top = 31
      Width = 154
      Height = 253
      Anchors = [akLeft, akTop, akRight, akBottom]
      ItemHeight = 13
      Items.Strings = (
        #1042#1080#1076#1086#1074#1077' '#1090#1072#1082#1089#1080
        #1054#1089#1085#1086#1074#1072#1085#1080#1103' '#1079#1072' '#1085#1072#1089#1090#1072#1085#1103#1074#1072#1085#1077)
      TabOrder = 0
      OnClick = ListBoxNomenclaturesClick
      ExplicitHeight = 286
    end
  end
  object PanelRight: TPanel
    Left = 175
    Top = 0
    Width = 403
    Height = 322
    Align = alClient
    BevelOuter = bvNone
    Caption = 'PanelRight'
    Constraints.MinWidth = 100
    TabOrder = 1
    ExplicitLeft = 208
    ExplicitTop = 176
    ExplicitWidth = 185
    ExplicitHeight = 41
    DesignSize = (
      403
      322)
    object DBGrid: TDBGrid
      Left = 3
      Top = 34
      Width = 386
      Height = 253
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = DataSource
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'FTName'
          Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          Width = 340
          Visible = True
        end>
    end
    object DBNavigator: TDBNavigator
      Left = 8
      Top = 3
      Width = 387
      Height = 25
      DataSource = DataSource
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      Anchors = [akLeft, akTop, akRight]
      Hints.Strings = (
        #1055#1098#1088#1074#1080' '#1079#1072#1087#1080#1089
        #1055#1088#1077#1076#1077#1085' '#1079#1072#1087#1080#1089
        #1057#1083#1077#1076#1074#1072#1097' '#1079#1072#1087#1080#1089
        #1055#1086#1089#1083#1077#1076#1077#1085' '#1079#1072#1087#1080#1089
        #1044#1086#1073#1072#1074#1080' '#1079#1072#1087#1080#1089
        #1048#1079#1090#1088#1080#1081' '#1079#1072#1087#1080#1089
        #1055#1088#1086#1084#1077#1085#1080' '#1079#1072#1087#1080#1089
        #1047#1072#1087#1080#1096#1080' '#1087#1088#1086#1084#1077#1085#1080#1090#1077
        #1054#1090#1082#1072#1078#1080' '#1087#1088#1086#1084#1077#1085#1080#1090#1077)
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
  end
  object PanelBottom: TPanel
    Left = 0
    Top = 322
    Width = 578
    Height = 33
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitTop = 314
    DesignSize = (
      578
      33)
    object BitBtnDeveloper: TBitBtn
      Left = 7
      Top = 1
      Width = 106
      Height = 26
      Caption = #1056#1072#1079#1088#1072#1073#1086#1090#1080#1083'...'
      Kind = bkHelp
      NumGlyphs = 2
      TabOrder = 0
      OnClick = BitBtnDeveloperClick
    end
    object BitBtnClose: TBitBtn
      Left = 479
      Top = 1
      Width = 91
      Height = 26
      Anchors = [akTop, akRight]
      Caption = #1047#1072#1090#1074#1086#1088#1080
      TabOrder = 1
    end
  end
  object DataSet: TADODataSet
    Connection = DM.Connection
    CursorType = ctStatic
    CommandText = 'FeeTypes'
    CommandType = cmdTable
    FieldDefs = <
      item
        Name = 'PkFeeType'
        Attributes = [faReadonly, faFixed]
        DataType = ftAutoInc
      end
      item
        Name = 'FTName'
        DataType = ftWideString
        Size = 30
      end>
    Parameters = <>
    StoreDefs = True
    Left = 328
    Top = 112
  end
  object DataSource: TDataSource
    DataSet = DataSet
    Left = 328
    Top = 184
  end
end
