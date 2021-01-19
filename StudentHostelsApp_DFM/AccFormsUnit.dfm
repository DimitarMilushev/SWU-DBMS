object AccFormsForm: TAccFormsForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1053#1072#1089#1090#1072#1085#1080#1090#1077#1083#1085#1080' '#1082#1072#1088#1090#1086#1085#1080' | '#1055#1083#1072#1097#1072#1085#1080#1103' | '#1048#1085#1074#1077#1085#1090#1072#1088
  ClientHeight = 585
  ClientWidth = 518
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
  object Bevel10: TBevel
    Left = 154
    Top = 14
    Width = 216
    Height = 8
    Shape = bsTopLine
  end
  object Label11: TLabel
    Left = 8
    Top = 7
    Width = 128
    Height = 14
    Caption = #1053#1072#1089#1090#1072#1085#1080#1090#1077#1083#1085#1080' '#1082#1072#1088#1090#1086#1085#1080' '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SpeedButtonFindPerson: TSpeedButton
    Left = 376
    Top = 3
    Width = 135
    Height = 22
    Caption = #1058#1098#1088#1089#1080' '#1085#1072#1077#1084#1072#1090#1077#1083'...'
    Flat = True
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FF314B62
      AC7D7EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FF5084B20F6FE1325F8CB87E7AFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF32A0FE37A1FF
      106FE2325F8BB67D79FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FF37A4FE379FFF0E6DDE355F89BB7F79FF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      37A4FE359EFF0F6FDE35608BA67B7FFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF38A5FE329DFF156DCE444F5BFF
      00FF9C6B65AF887BAF887EAA8075FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FF3BABFFA1CAE7AD8679A98373E0CFB1FFFFDAFFFFDDFCF8CFCCB2
      9FA1746BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC0917DFC
      E9ACFFFFCCFFFFCFFFFFD0FFFFDEFFFFFAE3D3D1996965FF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFB08978FAD192FEF4C2FFFFD0FFFFDAFFFFF6FFFF
      FCFFFFFCB69384FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB08978FEDA97ED
      B478FBEEBBFFFFD3FFFFDCFFFFF4FFFFF4FFFFE2E9DDBCA67B73FF00FFFF00FF
      FF00FFFF00FFFF00FFB18A78FFDE99E9A167F4D199FEFCCCFFFFD5FFFFDAFFFF
      DCFFFFD7EFE6C5A97E75FF00FFFF00FFFF00FFFF00FFFF00FFAA7F73FAE0A4F0
      B778EEBA7BF6DDA6FEFBCCFFFFD3FFFFD1FFFFD7D9C5A7A3756CFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFCEB293FFFEDDF4D1A5EEBA7BF2C78FF8E1ABFCF0
      BAFCFACAA3776FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA1746BE1
      D4D3FFFEEEF7CC8CF0B473F7C788FCE3A5C2A088A5776CFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FF986865BA9587EAD7A4EAD59EE0C097A577
      6CA5776CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFA77E70A98073A4786EFF00FFFF00FFFF00FFFF00FF}
    OnClick = SpeedButtonFindPersonClick
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 127
    Width = 502
    Height = 418
    ActivePage = TabSheetBasicData
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TabSheetBasicData: TTabSheet
      Caption = #1054#1089#1085#1086#1074#1085#1080' '#1076#1072#1085#1085#1080
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      object Bevel9: TBevel
        Left = 225
        Top = 48
        Width = 264
        Height = 60
        Shape = bsFrame
      end
      object Bevel5: TBevel
        Left = 6
        Top = 48
        Width = 211
        Height = 60
        Shape = bsFrame
      end
      object Bevel1: TBevel
        Left = 6
        Top = 307
        Width = 136
        Height = 78
        Shape = bsFrame
      end
      object Bevel4: TBevel
        Left = 6
        Top = 121
        Width = 483
        Height = 173
        Shape = bsFrame
      end
      object Bevel2: TBevel
        Left = 148
        Top = 306
        Width = 341
        Height = 79
        Shape = bsFrame
      end
      object Label2: TLabel
        Left = 14
        Top = 60
        Width = 19
        Height = 14
        Caption = #1050#1086#1076
        FocusControl = DBEdit2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 55
        Top = 60
        Width = 33
        Height = 14
        Caption = #1053#1086#1084#1077#1088
        FocusControl = DBEdit6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 112
        Top = 60
        Width = 79
        Height = 14
        Caption = #1054#1090#1082#1088#1080#1090' '#1085#1072' '#1076#1072#1090#1072
        FocusControl = DBEdit7
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 315
        Top = 324
        Width = 14
        Height = 14
        Caption = 'No'
        FocusControl = DBEdit10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 386
        Top = 324
        Width = 3
        Height = 14
        Caption = '/'
        FocusControl = DBEdit11
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 235
        Top = 60
        Width = 78
        Height = 14
        Caption = #1047#1072#1082#1088#1080#1090' '#1085#1072' '#1076#1072#1090#1072
        FocusControl = DBEdit13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 337
        Top = 60
        Width = 56
        Height = 14
        Caption = #1057#1098#1089#1090#1086#1103#1085#1080#1077
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 14
        Top = 324
        Width = 25
        Height = 14
        Caption = #1057#1090#1072#1103
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 142
        Top = 130
        Width = 23
        Height = 14
        Caption = #1048#1084#1077
        FocusControl = DBEdit16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label21: TLabel
        Left = 238
        Top = 130
        Width = 44
        Height = 14
        Caption = #1055#1088#1077#1079#1080#1084#1077
        FocusControl = DBEdit18
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label22: TLabel
        Left = 334
        Top = 130
        Width = 46
        Height = 14
        Caption = #1060#1072#1084#1080#1083#1080#1103
        FocusControl = DBEdit19
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label23: TLabel
        Left = 142
        Top = 171
        Width = 147
        Height = 14
        Caption = #1048#1076#1077#1085#1077#1085#1090#1080#1092#1080#1082#1072#1094#1080#1086#1085#1077#1085' '#1085#1086#1084#1077#1088
        FocusControl = DBEdit20
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label24: TLabel
        Left = 344
        Top = 171
        Width = 71
        Height = 14
        Caption = #1056#1086#1078#1076#1077#1085#1072' '#1076#1072#1090#1072
        FocusControl = DBEdit21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label29: TLabel
        Left = 142
        Top = 248
        Width = 35
        Height = 14
        Caption = #1040#1076#1088#1077#1089
        FocusControl = DBEdit24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label31: TLabel
        Left = 142
        Top = 210
        Width = 49
        Height = 14
        Caption = #1051#1050' '#1085#1086#1084#1077#1088
        FocusControl = DBEdit26
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label32: TLabel
        Left = 246
        Top = 210
        Width = 65
        Height = 14
        Caption = #1048#1079#1076#1072#1076#1077#1085#1072' '#1085#1072
        FocusControl = DBEdit27
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label33: TLabel
        Left = 344
        Top = 210
        Width = 58
        Height = 14
        Caption = #1042#1072#1083#1080#1076#1085#1072' '#1076#1086
        FocusControl = DBEdit28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label41: TLabel
        Left = 155
        Top = 299
        Width = 147
        Height = 14
        Caption = ' '#1054#1089#1085#1086#1074#1072#1085#1080#1077' '#1079#1072' '#1085#1072#1089#1090#1072#1085#1103#1074#1072#1085#1077' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object Label43: TLabel
        Left = 12
        Top = 114
        Width = 57
        Height = 14
        Caption = ' '#1053#1072#1077#1084#1072#1090#1077#1083' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object Label44: TLabel
        Left = 12
        Top = 41
        Width = 124
        Height = 14
        Caption = ' '#1053#1072#1089#1090#1072#1085#1080#1090#1077#1083#1077#1085' '#1082#1072#1088#1090#1086#1085' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Label1: TLabel
        Left = 12
        Top = 300
        Width = 98
        Height = 14
        Caption = ' '#1057#1090#1072#1103' / '#1086#1073#1097#1077#1078#1080#1090#1080#1077' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object Label46: TLabel
        Left = 231
        Top = 41
        Width = 83
        Height = 14
        Caption = ' '#1055#1088#1080#1082#1083#1102#1095#1074#1072#1085#1077' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Label4: TLabel
        Left = 156
        Top = 354
        Width = 180
        Height = 14
        Caption = #1053#1072#1077#1084#1072#1090#1077#1083#1103#1090' '#1089#1077' '#1085#1072#1089#1090#1072#1085#1103#1074#1072' '#1089#1077' '#1082#1072#1090#1086':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit2: TDBEdit
        Left = 14
        Top = 76
        Width = 35
        Height = 22
        Color = clCream
        DataField = 'PkAccForm'
        DataSource = DSAccForms
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit6: TDBEdit
        Left = 55
        Top = 76
        Width = 50
        Height = 22
        DataField = 'AFNumber'
        DataSource = DSAccForms
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit7: TDBEdit
        Left = 112
        Top = 76
        Width = 97
        Height = 22
        DataField = 'AccDate'
        DataSource = DSAccForms
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit10: TDBEdit
        Left = 339
        Top = 321
        Width = 44
        Height = 22
        DataField = 'WarrantNumber'
        DataSource = DSAccForms
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object DBEdit11: TDBEdit
        Left = 396
        Top = 321
        Width = 80
        Height = 22
        DataField = 'WarrantDate'
        DataSource = DSAccForms
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object DBEdit13: TDBEdit
        Left = 236
        Top = 76
        Width = 93
        Height = 22
        DataField = 'DepartureDate'
        DataSource = DSAccForms
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object DBEdit16: TDBEdit
        Left = 142
        Top = 146
        Width = 99
        Height = 22
        Color = 16186106
        DataField = 'FirstName'
        DataSource = DataSourcePersons
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 6
      end
      object DBEdit18: TDBEdit
        Left = 238
        Top = 146
        Width = 99
        Height = 22
        Color = 16186106
        DataField = 'MiddleName'
        DataSource = DataSourcePersons
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 7
      end
      object DBEdit19: TDBEdit
        Left = 334
        Top = 146
        Width = 107
        Height = 22
        Color = 16186106
        DataField = 'LastName'
        DataSource = DataSourcePersons
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 8
      end
      object DBEdit20: TDBEdit
        Left = 192
        Top = 187
        Width = 145
        Height = 22
        Color = 16186106
        DataField = 'IDNumber'
        DataSource = DataSourcePersons
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 9
      end
      object DBEdit21: TDBEdit
        Left = 344
        Top = 187
        Width = 132
        Height = 22
        Color = 16186106
        DataField = 'DateOfBirth'
        DataSource = DataSourcePersons
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 10
      end
      object DBImage1: TDBImage
        Left = 14
        Top = 136
        Width = 120
        Height = 148
        DataField = 'Photo'
        DataSource = DataSourcePersons
        ReadOnly = True
        Stretch = True
        TabOrder = 11
      end
      object DBEdit24: TDBEdit
        Left = 142
        Top = 264
        Width = 334
        Height = 22
        Color = 16186106
        DataField = 'HomeAddress'
        DataSource = DataSourcePersons
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 12
      end
      object DBEdit26: TDBEdit
        Left = 142
        Top = 226
        Width = 99
        Height = 22
        Color = 16186106
        DataField = 'ICNumber'
        DataSource = DataSourcePersons
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 13
      end
      object DBEdit27: TDBEdit
        Left = 246
        Top = 226
        Width = 91
        Height = 22
        Color = 16186106
        DataField = 'ICDateOfIssue'
        DataSource = DataSourcePersons
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 14
      end
      object DBEdit28: TDBEdit
        Left = 344
        Top = 226
        Width = 132
        Height = 22
        Color = 16186106
        DataField = 'ICDateOfExpiry'
        DataSource = DataSourcePersons
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 15
      end
      object DBComboBox2: TDBComboBox
        Left = 337
        Top = 76
        Width = 139
        Height = 22
        Style = csDropDownList
        DataField = 'AFStatus'
        DataSource = DSAccForms
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          #1040#1082#1090#1080#1074#1077#1085
          #1047#1072#1082#1088#1080#1090)
        ParentFont = False
        TabOrder = 16
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 47
        Top = 320
        Width = 85
        Height = 22
        DataField = 'RNumber'
        DataSource = DSAccForms
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 17
      end
      object DBEdit1: TDBEdit
        Left = 142
        Top = 187
        Width = 43
        Height = 22
        Color = 16186106
        DataField = 'TypeIDNumber'
        DataSource = DataSourcePersons
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 18
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 156
        Top = 321
        Width = 144
        Height = 22
        DataField = 'WarrantName'
        DataSource = DSAccForms
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 19
      end
      object DBNavigatorBasicData: TDBNavigator
        Left = 5
        Top = 7
        Width = 490
        Height = 25
        DataSource = DSAccForms
        TabOrder = 20
      end
      object BitBtnRooms: TBitBtn
        Left = 47
        Top = 350
        Width = 86
        Height = 23
        Caption = #1048#1079#1073#1077#1088#1080' '#1089#1090#1072#1103'...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 21
        OnClick = BitBtnRoomsClick
      end
      object BitBtnPersons: TBitBtn
        Left = 448
        Top = 145
        Width = 29
        Height = 23
        Caption = '...'
        TabOrder = 22
        OnClick = BitBtnPersonsClick
      end
      object DBComboBox1: TDBComboBox
        Left = 339
        Top = 350
        Width = 137
        Height = 22
        Style = csDropDownList
        DataField = 'AccType'
        DataSource = DSAccForms
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          #1057#1077#1084#1077#1077#1085' / '#1072
          #1053#1077#1089#1077#1084#1077#1085' / '#1072)
        ParentFont = False
        TabOrder = 23
      end
    end
    object TabSheetPayments: TTabSheet
      Caption = #1055#1083#1072#1097#1072#1085#1080#1103
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Bevel3: TBevel
        Left = 6
        Top = 48
        Width = 483
        Height = 337
        Shape = bsFrame
      end
      object Label28: TLabel
        Left = 12
        Top = 41
        Width = 162
        Height = 14
        Caption = ' '#1044#1077#1087#1086#1079#1080#1090#1080' '#1080' '#1076#1088#1091#1075#1080' '#1087#1083#1072#1097#1072#1085#1080#1103' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object DBGrid1: TDBGrid
        Left = 16
        Top = 61
        Width = 462
        Height = 314
        DataSource = DSPayments
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'AcademicYearStart'
            Title.Caption = #1059#1095#1077#1073#1085#1072
            Width = 42
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AcademicYearEnd'
            Title.Caption = #1075#1086#1076#1080#1085#1072
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PMonth'
            Title.Caption = #1052#1077#1089#1077#1094
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FTName'
            Title.Caption = #1058#1080#1087' '#1085#1072' '#1087#1083#1072#1097#1072#1085#1077#1090#1086
            Width = 116
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Amount'
            Title.Caption = #1057#1091#1084#1072
            Width = 51
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ReceiptNumber'
            Title.Caption = #1050#1074'. No'
            Width = 38
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ReceiptDate'
            Title.Caption = #1044#1072#1090#1072
            Width = 86
            Visible = True
          end>
      end
      object DBNavigatorPayments: TDBNavigator
        Left = 5
        Top = 7
        Width = 490
        Height = 25
        DataSource = DSPayments
        TabOrder = 1
      end
    end
    object TabSheetItems: TTabSheet
      Caption = #1055#1086#1083#1091#1095#1077#1085#1080' '#1074#1077#1097#1080
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Bevel8: TBevel
        Left = 6
        Top = 48
        Width = 483
        Height = 337
        Shape = bsFrame
      end
      object Label45: TLabel
        Left = 12
        Top = 41
        Width = 154
        Height = 14
        Caption = ' '#1055#1086#1083#1091#1095#1077#1085#1080' '#1080' '#1074#1098#1088#1085#1072#1090#1080' '#1074#1077#1097#1080' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object DBGrid4: TDBGrid
        Left = 16
        Top = 61
        Width = 462
        Height = 314
        Ctl3D = True
        DataSource = DSItems
        ParentCtl3D = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'InventoryName'
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 148
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ReceivedDate'
            Title.Caption = #1044#1072#1090#1072
            Width = 83
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Amount'
            Title.Caption = #1041#1088#1086#1081
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ReturnedDate'
            Title.Caption = #1044#1072#1090#1072
            Width = 84
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BackAmount'
            Title.Caption = #1041#1088#1086#1081
            Width = 49
            Visible = True
          end>
      end
      object DBNavigatorItems: TDBNavigator
        Left = 5
        Top = 7
        Width = 490
        Height = 25
        DataSource = DSItems
        TabOrder = 1
      end
    end
  end
  object DBGrid5: TDBGrid
    Left = 8
    Top = 28
    Width = 503
    Height = 93
    DataSource = DSAccForms
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'AFNumber'
        Title.Caption = ' No'
        Width = 36
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AccDate'
        Title.Caption = ' '#1050'-'#1085' '#1076#1072#1090#1072
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'WarrantName'
        Title.Caption = ' '#1054#1089#1085#1086#1074#1072#1085#1080#1077
        Width = 116
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'WarrantNumber'
        Title.Caption = ' No'
        Width = 36
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'WarrantDate'
        Title.Caption = ' '#1054#1089#1085'. '#1076#1072#1090#1072
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RNumber'
        Title.Caption = ' '#1057#1090#1072#1103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AFStatus'
        Title.Caption = #1057#1090#1072#1090#1091#1089
        Width = 76
        Visible = True
      end>
  end
  object BitBtnClose: TBitBtn
    Left = 423
    Top = 552
    Width = 88
    Height = 26
    Caption = ' '#1047#1072#1090#1074#1086#1088#1080
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 2
    OnClick = BitBtnCloseClick
  end
  object DSAccForms: TDataSource
    DataSet = DataSetAccForms
    Left = 656
    Top = 232
  end
  object DataSetAccForms: TADODataSet
    Connection = DM.Connection
    CursorType = ctStatic
    AfterPost = DataSetAccFormsAfterPost
    AfterScroll = DataSetAccFormsAfterScroll
    CommandText = 
      'select * from AccForms where FkPerson = :FkPerson'#13#10'order by PkAc' +
      'cForm DESC'
    IndexFieldNames = 'AFStatus'
    Parameters = <
      item
        Name = 'FkPerson'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 576
    Top = 232
    object DataSetAccFormsPkAccForm: TAutoIncField
      FieldName = 'PkAccForm'
      ReadOnly = True
    end
    object DataSetAccFormsAFNumber: TWideStringField
      FieldName = 'AFNumber'
      Size = 8
    end
    object DataSetAccFormsAccDate: TDateTimeField
      FieldName = 'AccDate'
    end
    object DataSetAccFormsFkWarrant: TIntegerField
      FieldName = 'FkWarrant'
    end
    object DataSetAccFormsWarrantName: TStringField
      FieldKind = fkLookup
      FieldName = 'WarrantName'
      LookupDataSet = TableWarrants
      LookupKeyFields = 'PkWarrant'
      LookupResultField = 'WName'
      KeyFields = 'FkWarrant'
      Lookup = True
    end
    object DataSetAccFormsWarrantNumber: TWideStringField
      FieldName = 'WarrantNumber'
      Size = 8
    end
    object DataSetAccFormsWarrantDate: TDateTimeField
      FieldName = 'WarrantDate'
    end
    object DataSetAccFormsFkRoom: TIntegerField
      FieldName = 'FkRoom'
    end
    object DataSetAccFormsRNumber: TStringField
      FieldKind = fkLookup
      FieldName = 'RNumber'
      LookupDataSet = TableRooms
      LookupKeyFields = 'PkRoom'
      LookupResultField = 'RNumber'
      KeyFields = 'FkRoom'
      Size = 8
      Lookup = True
    end
    object DataSetAccFormsFkPerson: TIntegerField
      FieldName = 'FkPerson'
    end
    object DataSetAccFormsAccType: TWideStringField
      FieldName = 'AccType'
      Size = 15
    end
    object DataSetAccFormsDepartureDate: TDateTimeField
      FieldName = 'DepartureDate'
    end
    object DataSetAccFormsAFStatus: TWideStringField
      FieldName = 'AFStatus'
    end
  end
  object TableWarrants: TADOTable
    Connection = DM.Connection
    CursorType = ctStatic
    TableName = 'Warrants'
    Left = 576
    Top = 184
    object TableWarrantsPkWarrant: TAutoIncField
      FieldName = 'PkWarrant'
      ReadOnly = True
    end
    object TableWarrantsWName: TWideStringField
      FieldName = 'WName'
      Size = 40
    end
  end
  object TableRooms: TADOTable
    Connection = DM.Connection
    CursorType = ctStatic
    TableName = 'Rooms'
    Left = 656
    Top = 184
    object TableRoomsPkRoom: TAutoIncField
      FieldName = 'PkRoom'
      ReadOnly = True
    end
    object TableRoomsRNumber: TWideStringField
      FieldName = 'RNumber'
      Size = 8
    end
    object TableRoomsFkHostel: TIntegerField
      FieldName = 'FkHostel'
    end
  end
  object DataSourcePersons: TDataSource
    DataSet = DataSetPersons
    Left = 654
    Top = 454
  end
  object TablePayments: TADOTable
    Connection = DM.Connection
    CursorType = ctStatic
    IndexFieldNames = 'FkAccForm'
    MasterFields = 'PkAccForm'
    MasterSource = DSAccForms
    TableName = 'Payments'
    Left = 576
    Top = 344
    object TablePaymentsPkPayment: TAutoIncField
      FieldName = 'PkPayment'
      ReadOnly = True
    end
    object TablePaymentsFkAccForm: TIntegerField
      FieldName = 'FkAccForm'
    end
    object TablePaymentsAcademicYearStart: TIntegerField
      FieldName = 'AcademicYearStart'
    end
    object TablePaymentsAcademicYearEnd: TIntegerField
      FieldName = 'AcademicYearEnd'
    end
    object TablePaymentsPMonth: TWordField
      FieldName = 'PMonth'
    end
    object TablePaymentsFkFeeType: TIntegerField
      FieldName = 'FkFeeType'
    end
    object TablePaymentsFTName: TStringField
      FieldKind = fkLookup
      FieldName = 'FTName'
      LookupDataSet = TableFeeTypes
      LookupKeyFields = 'PkFeeType'
      LookupResultField = 'FTName'
      KeyFields = 'FkFeeType'
      Size = 30
      Lookup = True
    end
    object TablePaymentsAmount: TBCDField
      FieldName = 'Amount'
      DisplayFormat = '0.00" '#1083#1074'."'
      Precision = 19
    end
    object TablePaymentsReceiptNumber: TWideStringField
      FieldName = 'ReceiptNumber'
      Size = 8
    end
    object TablePaymentsReceiptDate: TDateTimeField
      FieldName = 'ReceiptDate'
    end
  end
  object TableFeeTypes: TADOTable
    Connection = DM.Connection
    CursorType = ctStatic
    TableName = 'FeeTypes'
    Left = 576
    Top = 400
    object TableFeeTypesPkFeeType: TAutoIncField
      FieldName = 'PkFeeType'
      ReadOnly = True
    end
    object TableFeeTypesFTName: TWideStringField
      FieldName = 'FTName'
      Size = 30
    end
  end
  object DSPayments: TDataSource
    DataSet = TablePayments
    Left = 656
    Top = 344
  end
  object TableItems: TADOTable
    Connection = DM.Connection
    CursorType = ctStatic
    IndexFieldNames = 'FkAccForm'
    MasterFields = 'PkAccForm'
    MasterSource = DSAccForms
    TableName = 'Items'
    Left = 576
    Top = 288
    object TableItemsPkItem: TAutoIncField
      DisplayWidth = 12
      FieldName = 'PkItem'
      ReadOnly = True
    end
    object TableItemsFkAccForm: TIntegerField
      DisplayWidth = 12
      FieldName = 'FkAccForm'
    end
    object TableItemsFkInventory: TIntegerField
      DisplayWidth = 12
      FieldName = 'FkInventory'
    end
    object TableItemsInventoryName: TStringField
      DisplayWidth = 26
      FieldKind = fkLookup
      FieldName = 'InventoryName'
      LookupDataSet = TableInventory
      LookupKeyFields = 'PkInventory'
      LookupResultField = 'IName'
      KeyFields = 'FkInventory'
      Size = 30
      Lookup = True
    end
    object TableItemsReceivedDate: TDateTimeField
      DisplayWidth = 22
      FieldName = 'ReceivedDate'
    end
    object TableItemsAmount: TWordField
      DisplayWidth = 12
      FieldName = 'Amount'
    end
    object TableItemsReturnedDate: TDateTimeField
      DisplayWidth = 22
      FieldName = 'ReturnedDate'
    end
    object TableItemsBackAmount: TWordField
      DisplayWidth = 12
      FieldName = 'BackAmount'
    end
  end
  object DSItems: TDataSource
    DataSet = TableItems
    Left = 656
    Top = 288
  end
  object TableInventory: TADOTable
    Connection = DM.Connection
    CursorType = ctStatic
    TableName = 'Inventory'
    Left = 656
    Top = 400
    object TableInventoryPkInventory: TAutoIncField
      FieldName = 'PkInventory'
      ReadOnly = True
    end
    object TableInventoryIName: TWideStringField
      FieldName = 'IName'
      Size = 30
    end
  end
  object DataSetPersons: TADODataSet
    Connection = DM.Connection
    CursorType = ctStatic
    CommandText = 'select * from Persons where PkPerson = :PkPerson'
    Parameters = <
      item
        Name = 'PkPerson'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 576
    Top = 456
    object DataSetPersonsPkPerson: TAutoIncField
      FieldName = 'PkPerson'
      ReadOnly = True
    end
    object DataSetPersonsTypeIDNumber: TWideStringField
      FieldName = 'TypeIDNumber'
      FixedChar = True
      Size = 3
    end
    object DataSetPersonsIDNumber: TWideStringField
      FieldName = 'IDNumber'
      FixedChar = True
      Size = 10
    end
    object DataSetPersonsFirstName: TWideStringField
      FieldName = 'FirstName'
      Size = 15
    end
    object DataSetPersonsMiddleName: TWideStringField
      FieldName = 'MiddleName'
      Size = 15
    end
    object DataSetPersonsLastName: TWideStringField
      FieldName = 'LastName'
      Size = 25
    end
    object DataSetPersonsDateOfBirth: TDateTimeField
      FieldName = 'DateOfBirth'
    end
    object DataSetPersonsPhoto: TBlobField
      FieldName = 'Photo'
    end
    object DataSetPersonsFkSettlement: TIntegerField
      FieldName = 'FkSettlement'
    end
    object DataSetPersonsHomeAddress: TWideStringField
      FieldName = 'HomeAddress'
      Size = 60
    end
    object DataSetPersonsICNumber: TWideStringField
      FieldName = 'ICNumber'
      Size = 15
    end
    object DataSetPersonsICDateOfIssue: TDateTimeField
      FieldName = 'ICDateOfIssue'
    end
    object DataSetPersonsICDateOfExpiry: TDateTimeField
      FieldName = 'ICDateOfExpiry'
    end
    object DataSetPersonsMaritalStatus: TWideStringField
      FieldName = 'MaritalStatus'
      Size = 15
    end
  end
end
