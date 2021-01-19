object StudentsForm: TStudentsForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1057#1090#1091#1076#1077#1085#1090#1080
  ClientHeight = 470
  ClientWidth = 664
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
  object Label1: TLabel
    Left = 8
    Top = 40
    Width = 50
    Height = 13
    Caption = #1060#1072#1082#1091#1083#1090#1077#1090
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 249
    Top = 40
    Width = 72
    Height = 13
    Caption = #1057#1087#1077#1094#1080#1072#1083#1085#1086#1089#1090#1080
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 216
    Width = 50
    Height = 13
    Caption = #1057#1090#1091#1076#1077#1085#1090#1080
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Bevel1: TBevel
    Left = 64
    Top = 47
    Width = 177
    Height = 2
    Shape = bsTopLine
  end
  object Bevel2: TBevel
    Left = 64
    Top = 223
    Width = 593
    Height = 4
    Shape = bsTopLine
  end
  object Bevel3: TBevel
    Left = 240
    Top = 47
    Width = 4
    Height = 162
    Shape = bsLeftLine
  end
  object Bevel4: TBevel
    Left = 328
    Top = 47
    Width = 330
    Height = 4
    Shape = bsTopLine
  end
  object DBGridFaculties: TDBGrid
    Left = 8
    Top = 56
    Width = 225
    Height = 153
    DataSource = DataSourceFaculties
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnEnter = DBGridFacultiesEnter
    Columns = <
      item
        Expanded = False
        FieldName = 'FName'
        Title.Caption = ' '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 188
        Visible = True
      end>
  end
  object DBNavigator: TDBNavigator
    Left = 8
    Top = 8
    Width = 650
    Height = 25
    DataSource = DataSourceFaculties
    TabOrder = 1
  end
  object DBGridPrograms: TDBGrid
    Left = 249
    Top = 56
    Width = 409
    Height = 153
    DataSource = DataSourcePrograms
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnEnter = DBGridProgramsEnter
    Columns = <
      item
        Expanded = False
        FieldName = 'PName'
        Title.Caption = ' '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 209
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EQD'
        PickList.Strings = (
          #1041#1072#1082#1072#1083#1072#1074#1098#1088
          #1052#1072#1075#1080#1089#1090#1098#1088)
        Title.Caption = ' '#1054#1050#1057
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EducationForm'
        PickList.Strings = (
          #1056#1077#1076#1086#1074#1085#1086
          #1047#1072#1076#1086#1095#1085#1086)
        Title.Caption = ' '#1060#1086#1088#1084#1072
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'StudyPeriod'
        Title.Caption = ' '#1055#1077#1088#1080#1086#1076
        Width = 47
        Visible = True
      end>
  end
  object DBGridStudents: TDBGrid
    Left = 8
    Top = 233
    Width = 649
    Height = 193
    DataSource = DataSourceStudents
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnEnter = DBGridStudentsEnter
    Columns = <
      item
        Expanded = False
        FieldName = 'FacultyNumber'
        Title.Caption = ' '#1060#1072#1082#1091#1083#1090#1077#1090#1077#1085' '#8470
        Width = 83
        Visible = True
      end
      item
        Color = 16448250
        Expanded = False
        FieldName = 'PersonName'
        Title.Caption = ' '#1048#1084#1077', '#1087#1088#1077#1079#1080#1084#1077' '#1080' '#1092#1072#1084#1080#1083#1080#1103
        Width = 200
        Visible = True
      end
      item
        Color = 16448250
        Expanded = False
        FieldName = 'TypeIDNumber'
        ReadOnly = True
        Title.Caption = ' '#1048#1044#1053
        Width = 42
        Visible = True
      end
      item
        Color = 16448250
        Expanded = False
        FieldName = 'IDNumber'
        ReadOnly = True
        Title.Caption = ' '#1048#1044#1053' '#1053#1086#1084#1077#1088
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AcademicYearStart'
        Title.Caption = ' '#1059#1095#1077#1073#1085#1072
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AcademicYearEnd'
        Title.Caption = ' '#1075#1086#1076#1080#1085#1072
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SStatus'
        PickList.Strings = (
          #1044#1077#1081#1089#1090#1074#1072#1097
          #1047#1072#1074#1098#1088#1096#1080#1083
          #1055#1088#1077#1082#1098#1089#1085#1072#1083)
        Title.Caption = ' '#1057#1090#1072#1090#1091#1090
        Width = 100
        Visible = True
      end>
  end
  object BitBtnAddStudent: TBitBtn
    Left = 182
    Top = 434
    Width = 139
    Height = 28
    Caption = ' '#1044#1086#1073#1072#1074#1080' '#1089#1090#1091#1076#1077#1085#1090'...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FF06780E06780E08741206680D035706035706FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1399231399234CBD6954C57A3E
      BD6921B15117A3410D8223044F09044F09FF00FFFF00FFFF00FFFF00FFFF00FF
      13992356C573AAE7C583DDA744C6742ABA5C1EB75118B54A17B64110AC30066B
      11034F09FF00FFFF00FFFF00FF1399236ACC88C5F0D868D08E22B65552C77DFF
      FFFFBFEDCF11AB340EA92D0DAB280AAB1F036509014503FF00FFFF00FF139923
      D0F4E366CF8C16AF481CB24E57CA81FFFFFFBAEAC606A01105A01309A41C07A4
      1504A30D014503FF00FF1DA43598E1B59AE1B620B4521BB14C22B55456CA80FF
      FFFFB7E9C2039E0C049F0D039E0F049E0D03A60C037808013002139923BDEED4
      50C77A23B55439BF6822B55457CA81FFFFFFB8EAC5049F0D07A01116AA20029D
      0A03A00B039C0B014103139923A7E7C438BD67AAE6C0F4FCF755CA7F49C573FF
      FFFFB5E9C2039E0C82D589D5F2D8039D0A029E0A039F0C02510413992390E0B1
      2CBA5D96DEB1FFFFFFE1F6E979D592FFFFFFB7E9C174D07DFFFFFFE9F8EA039E
      0C039F0C039F0C02510413992378D99F30BB6019B14884D99EFFFFFFFAFEFAFC
      FEFCF6FCF7FCFEFCF4FCF648C052039E0C03A00C039D0C014303138C2A49C779
      2FBC5D13AC3C11AA3288D99DFFFFFFFFFFFFFFFFFFF3FBF440BC4A039E0C039E
      0C03A50C027E09013302FF00FF1B9D3D23BC4F12AA340EA72910AB2F97DDA5FF
      FFFFEEFAEF3EBC48039E0C039E0C03A00C03A60C014D04FF00FFFF00FF1B9D3D
      11A3300FB02D0BA4200CA6271AAD33AAE3B054C55E039E0C039E0C039F0C03A7
      0C026906014D04FF00FFFF00FFFF00FF06620F0A991F09AF1C06A71607A51803
      A00C03A00C03A10C03A50C03A70C026A06013402FF00FFFF00FFFF00FFFF00FF
      FF00FF036B0A036B0A038C0A039D0C039F0C039F0C03960A037B08024C04024C
      04FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF01460301460302
      5205014A04014203014203FF00FFFF00FFFF00FFFF00FFFF00FF}
    ParentFont = False
    TabOrder = 4
    OnClick = BitBtnAddStudentClick
  end
  object BitBtnRemoveStudent: TBitBtn
    Left = 334
    Top = 434
    Width = 137
    Height = 28
    Caption = ' '#1054#1090#1087#1080#1096#1080' '#1089#1090#1091#1076#1077#1085#1090
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FF000288010893010B99010C99010893000389FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000186010D9D021CAF021FB402
      1FB5021FB5021FB2021CB0010F9F000287FF00FFFF00FFFF00FFFF00FFFF00FF
      00038A0118B2021FB7021EB1021DB1021DB1021DB1021DB1021EB2021FB40219
      AC00048EFF00FFFF00FFFF00FF0001830118BB0220CC011CBF0015B4011AB002
      1DB1021DB1011CB00015AD011BB0021FB4021AAC000287FF00FFFF00FF010CA7
      0121E0011CD30726CC4966D70B28BC0018B00019AF0622B44A66CE0D2BB7011B
      B0021FB5010F9FFF00FF000187011CDC0120ED0017DC3655E2FFFFFFA4B4ED05
      20BB0119B28B9EE1FFFFFF4E6ACF0014AC021EB2021CB000038900069A0120F8
      011FF6001DE9031FE1738BEEFFFFFFA0B1ED93A5E7FFFFFF91A4E20823B4011B
      B0021DB1021FB4010895020CAA0A2EFE0323FB011FF6001CEB0018E1788FF0FF
      FFFFFFFFFF96A7EA021BB50019AF021DB1021DB10220B5010C99040EAC294DFE
      0D30FB011FFA001CF7011CEE8EA1F4FFFFFFFFFFFFA6B6EE0520C20018B6021D
      B1021DB10220B5010B980208A04162FB2F51FC001EFA0725FA8AA0FEFFFFFF8E
      A3F67991F2FFFFFFA3B4EE0C29C6011BB8021DB4021FB2000793000189314FEF
      7690FF0F2DFA3354FBFFFFFF91A5FE021EF30017E7738BF3FFFFFF4765E00016
      C2021FBD021CB2000288FF00FF0C1BBC819AFF728BFE1134FA3456FB0526FA00
      1CFA001CF40220ED3353ED0625DA011DD00220CB010DA1FF00FFFF00FF000189
      2943E6A5B7FF849AFC2341FB0323FA011FFA011FFA001EF7011BEE021FE50121
      E20118BF000184FF00FFFF00FFFF00FF01038F2A45E693A9FFABBBFF758FFE49
      69FC3658FB3153FC2346FC092CF70118CB00038BFF00FFFF00FFFF00FFFF00FF
      FF00FF0001890F1DBF3E5BF36B87FE728CFF5E7BFE395BFB1231EB010FB50001
      84FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000189030AA306
      11B2050FB10107A0000188FF00FFFF00FFFF00FFFF00FFFF00FF}
    ParentFont = False
    TabOrder = 5
    OnClick = BitBtnRemoveStudentClick
  end
  object BitBtnClose: TBitBtn
    Left = 569
    Top = 434
    Width = 89
    Height = 28
    Caption = #1047#1072#1090#1074#1086#1088#1080
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Kind = bkClose
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 6
  end
  object DataSetFaculties: TADODataSet
    Connection = DM.Connection
    CursorType = ctStatic
    CommandText = 'Faculties'
    CommandType = cmdTable
    Parameters = <>
    Left = 48
    Top = 136
    object DataSetFacultiesPkFaculty: TAutoIncField
      FieldName = 'PkFaculty'
      ReadOnly = True
    end
    object DataSetFacultiesFName: TWideStringField
      FieldName = 'FName'
      Size = 50
    end
    object DataSetFacultiesAbbreviation: TWideStringField
      FieldName = 'Abbreviation'
      Size = 10
    end
  end
  object DataSourceFaculties: TDataSource
    DataSet = DataSetFaculties
    Left = 144
    Top = 136
  end
  object DataSetPrograms: TADODataSet
    Connection = DM.Connection
    CursorType = ctStatic
    CommandText = 'Programs'
    CommandType = cmdTable
    DataSource = DataSourceFaculties
    IndexFieldNames = 'FkFaculty'
    MasterFields = 'PkFaculty'
    Parameters = <>
    Left = 321
    Top = 144
    object DataSetProgramsPkProgram: TAutoIncField
      FieldName = 'PkProgram'
      ReadOnly = True
    end
    object DataSetProgramsFkFaculty: TIntegerField
      FieldName = 'FkFaculty'
    end
    object DataSetProgramsPName: TWideStringField
      FieldName = 'PName'
      Size = 50
    end
    object DataSetProgramsEQD: TWideStringField
      FieldName = 'EQD'
      Size = 15
    end
    object DataSetProgramsEducationForm: TWideStringField
      FieldName = 'EducationForm'
      Size = 15
    end
    object DataSetProgramsStudyPeriod: TWordField
      FieldName = 'StudyPeriod'
      DisplayFormat = '0" '#1075'."'
    end
  end
  object DataSourcePrograms: TDataSource
    DataSet = DataSetPrograms
    Left = 433
    Top = 144
  end
  object DataSetStudents: TADODataSet
    Connection = DM.Connection
    CursorType = ctStatic
    AfterOpen = DataSetStudentsAfterOpen
    BeforeDelete = DataSetStudentsBeforeDelete
    AfterScroll = DataSetStudentsAfterScroll
    CommandText = 
      'select'#13#10'  s.PkStudent, '#13#10'  s.FkPerson,'#13#10'  s.FacultyNumber,'#13#10'  (p' +
      '.FirstName + '#39' '#39' + p.MiddleName + '#39' '#39' + p.LastName) as PersonNam' +
      'e,'#13#10'  p.TypeIDNumber,'#13#10'  p.IDNumber,'#13#10'  s.AcademicYearStart,'#13#10'  ' +
      's.AcademicYearEnd,'#13#10'  s.SStatus,'#13#10'  s.FkProgram'#13#10'from'#13#10'  Student' +
      's as s inner join Persons as p on s.FkPerson = p.PkPerson'#13#10'where' +
      #13#10'  s.FkProgram = :PkProgram'#13#10'order by'#13#10'  s.FacultyNumber asc'
    DataSource = DataSourcePrograms
    IndexFieldNames = 'FkProgram;FacultyNumber'
    MasterFields = 'PkProgram'
    Parameters = <
      item
        Name = 'PkProgram'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 64
    Top = 296
    object DataSetStudentsPkStudent: TAutoIncField
      FieldName = 'PkStudent'
      ReadOnly = True
    end
    object DataSetStudentsFkPerson: TIntegerField
      FieldName = 'FkPerson'
    end
    object DataSetStudentsFacultyNumber: TWideStringField
      FieldName = 'FacultyNumber'
      Size = 15
    end
    object DataSetStudentsPersonName: TWideStringField
      FieldName = 'PersonName'
      ReadOnly = True
      Size = 57
    end
    object DataSetStudentsTypeIDNumber: TWideStringField
      FieldName = 'TypeIDNumber'
      FixedChar = True
      Size = 3
    end
    object DataSetStudentsIDNumber: TWideStringField
      FieldName = 'IDNumber'
      FixedChar = True
      Size = 10
    end
    object DataSetStudentsAcademicYearStart: TIntegerField
      FieldName = 'AcademicYearStart'
    end
    object DataSetStudentsAcademicYearEnd: TIntegerField
      FieldName = 'AcademicYearEnd'
    end
    object DataSetStudentsSStatus: TWideStringField
      FieldName = 'SStatus'
    end
    object DataSetStudentsFkProgram: TIntegerField
      FieldName = 'FkProgram'
    end
  end
  object DataSourceStudents: TDataSource
    DataSet = DataSetStudents
    Left = 176
    Top = 296
  end
end
