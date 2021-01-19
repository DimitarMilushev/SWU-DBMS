object PersonsForm: TPersonsForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1043#1088#1072#1078#1076#1072#1085#1080
  ClientHeight = 497
  ClientWidth = 540
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
  object Bevel6: TBevel
    Left = 8
    Top = 352
    Width = 525
    Height = 106
    Shape = bsFrame
  end
  object Bevel4: TBevel
    Left = 8
    Top = 280
    Width = 137
    Height = 57
    Shape = bsFrame
  end
  object Bevel3: TBevel
    Left = 152
    Top = 56
    Width = 380
    Height = 97
    Shape = bsFrame
  end
  object Bevel2: TBevel
    Left = 152
    Top = 168
    Width = 380
    Height = 97
    Shape = bsFrame
  end
  object Bevel1: TBevel
    Left = 8
    Top = 56
    Width = 137
    Height = 209
    Shape = bsFrame
  end
  object BevelIC: TBevel
    Left = 152
    Top = 280
    Width = 380
    Height = 57
    Shape = bsFrame
  end
  object LabelTypeIDNumber: TLabel
    Left = 163
    Top = 104
    Width = 43
    Height = 13
    Caption = #1048#1044#1053' '#1058#1080#1087
  end
  object LabelIDNumber: TLabel
    Left = 272
    Top = 104
    Width = 56
    Height = 13
    Caption = #1048#1044#1053' '#1053#1086#1084#1077#1088
    FocusControl = DBEditIDNumber
  end
  object LabelFirstName: TLabel
    Left = 163
    Top = 64
    Width = 19
    Height = 13
    Caption = #1048#1084#1077
    FocusControl = DBEditFirstName
  end
  object LabelMiddleName: TLabel
    Left = 272
    Top = 64
    Width = 42
    Height = 13
    Caption = #1055#1088#1077#1079#1080#1084#1077
    FocusControl = DBEditMiddleName
  end
  object LabelLastName: TLabel
    Left = 384
    Top = 64
    Width = 44
    Height = 13
    Caption = #1060#1072#1084#1080#1083#1080#1103
    FocusControl = DBEditLastName
  end
  object LabelDateOfBirth: TLabel
    Left = 384
    Top = 104
    Width = 89
    Height = 13
    Caption = #1044#1072#1090#1072' '#1085#1072' '#1088#1072#1078#1076#1072#1085#1077
    FocusControl = DBEditDateOfBirth
  end
  object LabelPhotoFrame: TLabel
    Left = 16
    Top = 48
    Width = 43
    Height = 13
    Caption = ' '#1057#1085#1080#1084#1082#1072' '
    FocusControl = DBImagePhoto
    Transparent = False
  end
  object LabelHomeAddress: TLabel
    Left = 163
    Top = 216
    Width = 31
    Height = 13
    Caption = #1040#1076#1088#1077#1089
    FocusControl = DBEditHomeAddress
  end
  object LabelICNumber: TLabel
    Left = 163
    Top = 288
    Width = 31
    Height = 13
    Caption = #1053#1086#1084#1077#1088
    FocusControl = DBEditICNumber
  end
  object LabelICDateOfIssue: TLabel
    Left = 283
    Top = 288
    Width = 92
    Height = 13
    Caption = #1044#1072#1090#1072' '#1085#1072' '#1080#1079#1076#1072#1074#1072#1085#1077
    FocusControl = DBEditICDateOfIssue
  end
  object LabelICDateOfExpiry: TLabel
    Left = 403
    Top = 288
    Width = 87
    Height = 13
    Caption = #1042#1072#1083#1080#1076#1085#1072' '#1076#1086' '#1076#1072#1090#1072
    FocusControl = DBEditICDateOfExpiry
  end
  object LabelMaritalStatus: TLabel
    Left = 19
    Top = 288
    Width = 102
    Height = 13
    Caption = #1057#1077#1084#1077#1081#1085#1086' '#1087#1086#1083#1086#1078#1077#1085#1080#1077
  end
  object LabelSettlement: TLabel
    Left = 163
    Top = 176
    Width = 122
    Height = 13
    Caption = #1053#1072#1089#1077#1083#1077#1085#1086' '#1084#1103#1089#1090#1086', '#1086#1073#1083#1072#1089#1090
    FocusControl = DBEditSettlement
  end
  object LabelICFrame: TLabel
    Left = 160
    Top = 272
    Width = 70
    Height = 13
    Caption = ' '#1051#1080#1095#1085#1072' '#1082#1072#1088#1090#1072' '
    FocusControl = DBEditICNumber
    Transparent = False
  end
  object LabelAddressFrame: TLabel
    Left = 160
    Top = 160
    Width = 93
    Height = 13
    Caption = ' '#1055#1086#1089#1090#1086#1103#1085#1077#1085' '#1072#1076#1088#1077#1089' '
    FocusControl = DBEditICNumber
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = False
  end
  object LabelPersonDataFrame: TLabel
    Left = 160
    Top = 48
    Width = 71
    Height = 13
    Caption = ' '#1051#1080#1095#1085#1080' '#1076#1072#1085#1085#1080' '
    FocusControl = DBEditICNumber
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = False
  end
  object LabelMaritalStatusFrame: TLabel
    Left = 16
    Top = 272
    Width = 71
    Height = 13
    Caption = ' '#1044#1088#1091#1075#1080' '#1076#1072#1085#1085#1080' '
    FocusControl = DBEditICNumber
    Transparent = False
  end
  object LabelPersonContactsFrame: TLabel
    Left = 16
    Top = 344
    Width = 55
    Height = 13
    Caption = ' '#1050#1086#1085#1090#1072#1082#1090#1080' '
    FocusControl = DBEditICNumber
    Transparent = False
  end
  object DBEditIDNumber: TDBEdit
    Left = 272
    Top = 120
    Width = 105
    Height = 21
    DataField = 'IDNumber'
    DataSource = DataSourcePersons
    TabOrder = 4
    OnEnter = DataSetPersonsControlsEnter
  end
  object DBEditFirstName: TDBEdit
    Left = 163
    Top = 80
    Width = 102
    Height = 21
    DataField = 'FirstName'
    DataSource = DataSourcePersons
    TabOrder = 0
    OnEnter = DataSetPersonsControlsEnter
  end
  object DBEditMiddleName: TDBEdit
    Left = 272
    Top = 80
    Width = 105
    Height = 21
    DataField = 'MiddleName'
    DataSource = DataSourcePersons
    TabOrder = 1
    OnEnter = DataSetPersonsControlsEnter
  end
  object DBEditLastName: TDBEdit
    Left = 384
    Top = 80
    Width = 137
    Height = 21
    DataField = 'LastName'
    DataSource = DataSourcePersons
    TabOrder = 2
    OnEnter = DataSetPersonsControlsEnter
  end
  object DBEditDateOfBirth: TDBEdit
    Left = 384
    Top = 120
    Width = 137
    Height = 21
    DataField = 'DateOfBirth'
    DataSource = DataSourcePersons
    TabOrder = 5
    OnEnter = DataSetPersonsControlsEnter
  end
  object DBImagePhoto: TDBImage
    Left = 16
    Top = 66
    Width = 120
    Height = 145
    DataField = 'Photo'
    DataSource = DataSourcePersons
    TabOrder = 9
    OnEnter = DataSetPersonsControlsEnter
  end
  object DBEditHomeAddress: TDBEdit
    Left = 163
    Top = 235
    Width = 358
    Height = 21
    DataField = 'HomeAddress'
    DataSource = DataSourcePersons
    TabOrder = 8
    OnEnter = DataSetPersonsControlsEnter
  end
  object DBEditICNumber: TDBEdit
    Left = 163
    Top = 304
    Width = 113
    Height = 21
    DataField = 'ICNumber'
    DataSource = DataSourcePersons
    TabOrder = 12
    OnEnter = DataSetPersonsControlsEnter
  end
  object DBEditICDateOfIssue: TDBEdit
    Left = 283
    Top = 304
    Width = 113
    Height = 21
    DataField = 'ICDateOfIssue'
    DataSource = DataSourcePersons
    TabOrder = 13
    OnEnter = DataSetPersonsControlsEnter
  end
  object DBEditICDateOfExpiry: TDBEdit
    Left = 403
    Top = 304
    Width = 118
    Height = 21
    DataField = 'ICDateOfExpiry'
    DataSource = DataSourcePersons
    TabOrder = 14
    OnEnter = DataSetPersonsControlsEnter
  end
  object ButtonSelectPhoto: TButton
    Left = 16
    Top = 221
    Width = 120
    Height = 30
    Caption = #1048#1079#1073#1077#1088#1080' '#1089#1085#1080#1084#1082#1072
    TabOrder = 10
    OnClick = ButtonSelectPhotoClick
    OnEnter = DataSetPersonsControlsEnter
  end
  object PanelHeader: TPanel
    Left = 0
    Top = 0
    Width = 540
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 18
    object BevelHeader: TBevel
      Left = 0
      Top = 32
      Width = 540
      Height = 9
      Align = alBottom
      Shape = bsBottomLine
      ExplicitWidth = 679
    end
    object SpeedButtonFindPerson: TSpeedButton
      Left = 392
      Top = 8
      Width = 137
      Height = 25
      Caption = #1058#1098#1088#1089#1080' '#1075#1088#1072#1078#1076#1072#1085#1080#1085'...'
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
    object Bevel5: TBevel
      Left = 384
      Top = 8
      Width = 9
      Height = 25
      Shape = bsLeftLine
    end
    object DBNavigator: TDBNavigator
      Left = 8
      Top = 8
      Width = 369
      Height = 25
      DataSource = DataSourcePersons
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      TabOrder = 0
    end
  end
  object BitBtnSettlements: TBitBtn
    Left = 486
    Top = 191
    Width = 35
    Height = 23
    Caption = '...'
    TabOrder = 7
    OnClick = BitBtnSettlementsClick
    OnEnter = DataSetPersonsControlsEnter
  end
  object DBEditSettlement: TDBEdit
    Left = 163
    Top = 192
    Width = 318
    Height = 21
    Color = clInactiveBorder
    DataField = 'Settlement'
    DataSource = DataSourceSettlement
    TabOrder = 6
    OnEnter = DataSetPersonsControlsEnter
  end
  object DBComboBoxMaritalStatus: TDBComboBox
    Left = 19
    Top = 304
    Width = 118
    Height = 21
    Style = csDropDownList
    DataField = 'MaritalStatus'
    DataSource = DataSourcePersons
    Items.Strings = (
      #1085#1077#1078#1077#1085#1077#1085
      #1085#1077#1086#1084#1098#1078#1077#1085#1072
      #1078#1077#1085#1077#1085
      #1086#1084#1098#1078#1077#1085#1072
      #1088#1072#1079#1074#1077#1076#1077#1085
      #1088#1072#1079#1074#1077#1076#1077#1085#1072
      #1074#1076#1086#1074#1077#1094
      #1074#1076#1086#1074#1080#1094#1072)
    TabOrder = 11
    OnEnter = DataSetPersonsControlsEnter
  end
  object DBComboBoxTypeIDNumber: TDBComboBox
    Left = 163
    Top = 120
    Width = 102
    Height = 21
    Style = csDropDownList
    DataField = 'TypeIDNumber'
    DataSource = DataSourcePersons
    Items.Strings = (
      #1045#1043#1053
      #1051#1053#1063
      #1057#1051#1046)
    TabOrder = 3
    OnEnter = DataSetPersonsControlsEnter
  end
  object DBGridPersonContacts: TDBGrid
    Left = 16
    Top = 368
    Width = 505
    Height = 81
    DataSource = DataSourcePersonContacts
    TabOrder = 15
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnEnter = DBGridPersonContactsEnter
    Columns = <
      item
        Expanded = False
        FieldName = 'CType'
        Title.Caption = #1042#1080#1076' '#1082#1086#1085#1090#1072#1082#1090
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Contact'
        Title.Caption = #1050#1086#1085#1090#1072#1082#1090
        Width = 340
        Visible = True
      end>
  end
  object BitBtnOk: TBitBtn
    Left = 363
    Top = 465
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
    TabOrder = 16
  end
  object BitBtnCancel: TBitBtn
    Left = 451
    Top = 465
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
    TabOrder = 17
  end
  object DataSetPersons: TADODataSet
    Connection = DM.Connection
    CursorType = ctStatic
    AfterPost = DataSetPersonsAfterPost
    AfterScroll = DataSetPersonsAfterScroll
    CommandText = 'select * from Persons  where PkPerson = :PkPerson'
    Parameters = <
      item
        Name = 'PkPerson'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    Left = 62
    Top = 76
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
  object DataSourcePersons: TDataSource
    DataSet = DataSetPersons
    Left = 62
    Top = 150
  end
  object OpenPictureDialog: TOpenPictureDialog
    Left = 446
    Top = 392
  end
  object DataSetSettlement: TADODataSet
    Connection = DM.Connection
    CursorType = ctStatic
    CommandText = 
      'select PkSettlement, (SType + '#39' '#39' + SName) + '#39', '#1086#1073#1083#1072#1089#1090' '#39' + D.DNa' +
      'me as Settlement '#13#10'from Settlements as S inner join Districts as' +
      ' D on S.FkDistrict = D.PkDistrict'#13#10'where PkSettlement = :FkSettl' +
      'ement'
    DataSource = DataSourcePersons
    MasterFields = 'FkSettlement'
    Parameters = <
      item
        Name = 'FkSettlement'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 301
    Top = 186
    object DataSetSettlementPkSettlement: TAutoIncField
      FieldName = 'PkSettlement'
      ReadOnly = True
    end
    object DataSetSettlementSettlement: TStringField
      FieldName = 'Settlement'
      ReadOnly = True
      Size = 61
    end
  end
  object DataSourceSettlement: TDataSource
    DataSet = DataSetSettlement
    Left = 405
    Top = 186
  end
  object DataSourcePersonContacts: TDataSource
    DataSet = DataSetPersonContacts
    Left = 312
    Top = 392
  end
  object DataSetPersonContacts: TADODataSet
    Connection = DM.Connection
    CursorType = ctStatic
    CommandText = 'select *  from PersonContacts '#13#10'where FkPerson = :PkPerson'
    DataSource = DataSourcePersons
    IndexFieldNames = 'FkPerson'
    MasterFields = 'PkPerson'
    Parameters = <
      item
        Name = 'PkPerson'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 160
    Top = 392
    object DataSetPersonContactsPkPersonContact: TAutoIncField
      FieldName = 'PkPersonContact'
      ReadOnly = True
    end
    object DataSetPersonContactsFkPerson: TIntegerField
      FieldName = 'FkPerson'
    end
    object DataSetPersonContactsCType: TWideStringField
      FieldName = 'CType'
      Size = 15
    end
    object DataSetPersonContactsContact: TWideStringField
      FieldName = 'Contact'
      Size = 30
    end
  end
end
