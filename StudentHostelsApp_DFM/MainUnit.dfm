object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = #1057#1090#1091#1076#1077#1085#1090#1089#1082#1080' '#1086#1073#1097#1077#1078#1080#1090#1080#1103
  ClientHeight = 541
  ClientWidth = 784
  Color = clBtnFace
  Constraints.MinHeight = 600
  Constraints.MinWidth = 800
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object LabelDesktop: TLabel
    Left = 0
    Top = 0
    Width = 784
    Height = 516
    Align = alClient
    Alignment = taCenter
    Color = 14608359
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -43
    Font.Name = 'Calibri'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = False
    Layout = tlCenter
    WordWrap = True
    ExplicitWidth = 10
    ExplicitHeight = 53
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 516
    Width = 784
    Height = 25
    Panels = <
      item
        Text = ' '#1055#1086#1090#1088#1077#1073#1080#1090#1077#1083' : '
        Width = 190
      end
      item
        Text = ' '#1041#1044' : '
        Width = 190
      end
      item
        Text = ' '#1056#1077#1078#1080#1084' : '#1053#1077#1089#1074#1098#1088#1079#1072#1085
        Width = 190
      end
      item
        Width = 50
      end>
  end
  object MainMenu: TMainMenu
    Left = 104
    Top = 80
    object N1: TMenuItem
      Caption = #1057#1080#1089#1090#1077#1084#1072
      object miLogIn: TMenuItem
        Caption = #1042#1093#1086#1076' '#1074' '#1089#1080#1089#1090#1077#1084#1072#1090#1072'...'
        ShortCut = 16460
        OnClick = miLogInClick
      end
      object miLogOut: TMenuItem
        Caption = #1048#1079#1083#1080#1079#1072#1085#1077' '#1086#1090' '#1089#1080#1089#1090#1077#1084#1072#1090#1072'...'
        OnClick = miLogOutClick
      end
      object N8: TMenuItem
        Caption = '-'
      end
      object miClose: TMenuItem
        Caption = #1047#1072#1090#1074#1086#1088#1080
        ShortCut = 32883
        OnClick = miCloseClick
      end
    end
    object N2: TMenuItem
      Caption = #1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1080
      object miSettlements: TMenuItem
        Caption = #1053#1072#1089#1077#1083#1077#1085#1080' '#1084#1077#1089#1090#1072'...'
        ShortCut = 118
        OnClick = miSettlementsClick
      end
      object miNomenclatures: TMenuItem
        Caption = #1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1080'...'
        ShortCut = 117
        OnClick = miNomenclaturesClick
      end
      object N11: TMenuItem
        Caption = '-'
      end
      object miSearch: TMenuItem
        Caption = #1058#1098#1088#1089#1077#1085#1077'...'
        ShortCut = 114
        OnClick = miSearchClick
      end
      object miPersons: TMenuItem
        Caption = #1043#1088#1072#1078#1076#1072#1085#1080'...'
        ShortCut = 119
        OnClick = miPersonsClick
      end
      object miStudents: TMenuItem
        Caption = #1057#1090#1091#1076#1077#1085#1090#1080'...'
        ShortCut = 115
        OnClick = miStudentsClick
      end
      object N16: TMenuItem
        Caption = '-'
      end
      object miHostelsRoomsInvertory: TMenuItem
        Caption = #1054#1073#1097#1077#1078#1080#1090#1080#1103', '#1089#1090#1072#1080' '#1080' '#1089#1082#1083#1072#1076#1086#1074#1072' '#1085#1072#1083#1080#1095#1085#1086#1089#1090'...'
        OnClick = miHostelsRoomsInvertoryClick
      end
      object N17: TMenuItem
        Caption = '-'
      end
      object miAccForms: TMenuItem
        Caption = #1053#1072#1089#1090#1072#1085#1080#1090#1077#1083#1085#1080' '#1082#1072#1088#1090#1086#1085#1080'...'
        ShortCut = 116
        OnClick = miAccFormsClick
      end
    end
    object N12: TMenuItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
      object miSetDesktopColor: TMenuItem
        Caption = #1047#1072#1076#1072#1081' '#1094#1074#1103#1090' '#1085#1072' '#1076#1077#1089#1082#1090#1086#1087#1072'...'
        OnClick = miSetDesktopColorClick
      end
      object N10: TMenuItem
        Caption = '-'
      end
      object miShowWelcomeMessage: TMenuItem
        Caption = #1055#1086#1082#1072#1078#1080' / '#1057#1082#1088#1080#1081' '#1087#1086#1079#1076#1088#1072#1074#1080#1090#1077#1083#1077#1085' '#1090#1077#1082#1089#1090
        Enabled = False
        OnClick = miShowWelcomeMessageClick
      end
    end
    object N4: TMenuItem
      Caption = #1055#1086#1084#1086#1097
      object miHelpContent: TMenuItem
        Caption = #1057#1098#1076#1098#1088#1078#1072#1085#1080#1077'...'
        OnClick = miHelpContentClick
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object miHelpAbout: TMenuItem
        Caption = #1047#1072' '#1087#1088#1080#1083#1086#1078#1077#1085#1080#1077#1090#1086' '#1080' '#1088#1072#1079#1088#1072#1073#1086#1090#1095#1080#1082#1072'...'
        OnClick = miHelpAboutClick
      end
    end
  end
  object ColorDialog: TColorDialog
    Options = [cdFullOpen]
    Left = 200
    Top = 80
  end
end
