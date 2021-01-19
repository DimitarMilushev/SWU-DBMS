object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'XML Student Organizer'
  ClientHeight = 511
  ClientWidth = 849
  Color = clBtnFace
  Constraints.MinHeight = 550
  Constraints.MinWidth = 865
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  DesignSize = (
    849
    511)
  PixelsPerInch = 96
  TextHeight = 13
  object LabelStartFirstName: TLabel
    Left = 542
    Top = 79
    Width = 62
    Height = 13
    Anchors = [akTop, akRight]
    Caption = '<firstName>'
  end
  object LabelEndFirstName: TLabel
    Left = 753
    Top = 79
    Width = 66
    Height = 13
    Anchors = [akTop, akRight]
    Caption = '</firstName>'
  end
  object LabelStartMiddleName: TLabel
    Left = 531
    Top = 107
    Width = 73
    Height = 13
    Anchors = [akTop, akRight]
    Caption = '<middleName>'
  end
  object LabelEndMiddleName: TLabel
    Left = 753
    Top = 107
    Width = 77
    Height = 13
    Anchors = [akTop, akRight]
    Caption = '</middleName>'
  end
  object LabelStartLastName: TLabel
    Left = 544
    Top = 135
    Width = 60
    Height = 13
    Anchors = [akTop, akRight]
    Caption = '<lastName>'
  end
  object LabelEndLastName: TLabel
    Left = 753
    Top = 135
    Width = 64
    Height = 13
    Anchors = [akTop, akRight]
    Caption = '</lastName>'
  end
  object LabelStartProgram: TLabel
    Left = 548
    Top = 219
    Width = 56
    Height = 13
    Anchors = [akTop, akRight]
    Caption = '<program>'
  end
  object LabelEndProgram: TLabel
    Left = 753
    Top = 219
    Width = 60
    Height = 13
    Anchors = [akTop, akRight]
    Caption = '</program>'
  end
  object LabelStartDateBorn: TLabel
    Left = 544
    Top = 163
    Width = 60
    Height = 13
    Anchors = [akTop, akRight]
    Caption = '<dateBorn>'
  end
  object LabelEndDateBorn: TLabel
    Left = 753
    Top = 163
    Width = 64
    Height = 13
    Anchors = [akTop, akRight]
    Caption = '</dateBorn>'
  end
  object LabelStartFaculty: TLabel
    Left = 555
    Top = 191
    Width = 49
    Height = 13
    Anchors = [akTop, akRight]
    Caption = '<faculty>'
  end
  object LabelEndFaculty: TLabel
    Left = 753
    Top = 191
    Width = 53
    Height = 13
    Anchors = [akTop, akRight]
    Caption = '</faculty>'
  end
  object LabelStartFacultyNumber: TLabel
    Left = 518
    Top = 247
    Width = 86
    Height = 13
    Anchors = [akTop, akRight]
    Caption = '<facultyNumber>'
  end
  object LabelEndFacultyNumber: TLabel
    Left = 753
    Top = 247
    Width = 90
    Height = 13
    Anchors = [akTop, akRight]
    Caption = '</facultyNumber>'
  end
  object LabelStartStudyYear: TLabel
    Left = 539
    Top = 275
    Width = 65
    Height = 13
    Anchors = [akTop, akRight]
    Caption = '<studyYear>'
  end
  object LabelEndStudyYear: TLabel
    Left = 753
    Top = 275
    Width = 69
    Height = 13
    Anchors = [akTop, akRight]
    Caption = '</studyYear>'
  end
  object BevelButtonSection1: TBevel
    Left = 513
    Top = 304
    Width = 336
    Height = 4
    Anchors = [akTop, akRight]
    Shape = bsTopLine
  end
  object BevelButtonSection2: TBevel
    Left = 513
    Top = 354
    Width = 336
    Height = 2
    Anchors = [akTop, akRight]
    Shape = bsTopLine
  end
  object BevelHorizontal: TBevel
    Left = 472
    Top = 37
    Width = 377
    Height = 4
    Anchors = [akTop, akRight]
    Shape = bsTopLine
  end
  object BevelButtonSection3: TBevel
    Left = 513
    Top = 404
    Width = 336
    Height = 2
    Anchors = [akTop, akRight]
    Shape = bsTopLine
  end
  object BevelButtonSection4: TBevel
    Left = 513
    Top = 454
    Width = 336
    Height = 4
    Anchors = [akTop, akRight]
    Shape = bsTopLine
  end
  object BevelVertical: TBevel
    Left = 513
    Top = 0
    Width = 4
    Height = 510
    Anchors = [akTop, akRight, akBottom]
    Shape = bsLeftLine
  end
  object LabelVersion: TLabel
    Left = 10
    Top = 12
    Width = 56
    Height = 15
    Caption = 'Version='
    Color = clBtnFace
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Consolas'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    Layout = tlCenter
  end
  object LabelEncoding: TLabel
    Left = 136
    Top = 12
    Width = 63
    Height = 15
    Caption = 'Encoding='
    Color = clBtnFace
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Consolas'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    Layout = tlCenter
  end
  object LabelStandalone: TLabel
    Left = 335
    Top = 12
    Width = 77
    Height = 15
    Caption = 'Standalone='
    Color = clBtnFace
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Consolas'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    Layout = tlCenter
  end
  object LabelDeveloperInfo: TLabel
    Left = 518
    Top = 12
    Width = 328
    Height = 15
    Alignment = taCenter
    Anchors = [akTop, akRight]
    AutoSize = False
    Caption = 'Developer: FNumber, First, Middle && Last Name'
    Color = clBtnFace
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Consolas'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
    Layout = tlCenter
  end
  object BevelButtonSection5: TBevel
    Left = 513
    Top = 504
    Width = 336
    Height = 4
    Anchors = [akTop, akRight]
    Shape = bsTopLine
  end
  object LabelStartStudentID: TLabel
    Left = 532
    Top = 52
    Width = 68
    Height = 13
    Anchors = [akTop, akRight]
    Caption = '<student id="'
  end
  object LabelEndStudentID: TLabel
    Left = 667
    Top = 52
    Width = 12
    Height = 13
    Anchors = [akTop, akRight]
    Caption = '">'
  end
  object ButtonInsertStudent: TButton
    Left = 532
    Top = 312
    Width = 146
    Height = 36
    Anchors = [akTop, akRight]
    Caption = 'Insert Student'
    TabOrder = 0
    OnClick = ButtonInsertStudentClick
  end
  object EditFirstName: TEdit
    Left = 610
    Top = 76
    Width = 137
    Height = 21
    Anchors = [akTop, akRight]
    MaxLength = 15
    TabOrder = 1
  end
  object EditMiddleName: TEdit
    Left = 610
    Top = 104
    Width = 137
    Height = 21
    Anchors = [akTop, akRight]
    MaxLength = 15
    TabOrder = 2
  end
  object EditLastName: TEdit
    Left = 610
    Top = 132
    Width = 137
    Height = 21
    Anchors = [akTop, akRight]
    MaxLength = 15
    TabOrder = 3
  end
  object ButtonUpdateStudent: TButton
    Left = 532
    Top = 362
    Width = 146
    Height = 36
    Anchors = [akTop, akRight]
    Caption = 'Update Student'
    TabOrder = 9
    OnClick = ButtonUpdateStudentClick
  end
  object ButtonAppendStudent: TButton
    Left = 687
    Top = 312
    Width = 146
    Height = 36
    Anchors = [akTop, akRight]
    Caption = 'Append Student'
    TabOrder = 10
    OnClick = ButtonAppendStudentClick
  end
  object EditProgram: TEdit
    Left = 610
    Top = 216
    Width = 137
    Height = 21
    Anchors = [akTop, akRight]
    MaxLength = 100
    TabOrder = 6
  end
  object EditDateBorn: TEdit
    Left = 610
    Top = 160
    Width = 137
    Height = 21
    Anchors = [akTop, akRight]
    MaxLength = 10
    TabOrder = 4
  end
  object EditFaculty: TEdit
    Left = 610
    Top = 188
    Width = 137
    Height = 21
    Anchors = [akTop, akRight]
    MaxLength = 100
    TabOrder = 5
  end
  object EditFacultyNumber: TEdit
    Left = 610
    Top = 244
    Width = 137
    Height = 21
    Anchors = [akTop, akRight]
    MaxLength = 15
    NumbersOnly = True
    TabOrder = 7
  end
  object EditStudyYear: TEdit
    Left = 610
    Top = 272
    Width = 137
    Height = 21
    Anchors = [akTop, akRight]
    MaxLength = 1
    NumbersOnly = True
    TabOrder = 8
    OnKeyDown = EditStudyYearKeyDown
  end
  object ListBoxStudents: TListBox
    Left = 8
    Top = 37
    Width = 466
    Height = 468
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Consolas'
    Font.Style = []
    ItemHeight = 15
    Items.Strings = (
      '<students>'
      '</students>')
    ParentFont = False
    TabOrder = 11
    OnClick = ListBoxStudentsClick
    OnDblClick = ListBoxStudentsDblClick
  end
  object ButtonLocateStudent: TButton
    Left = 532
    Top = 412
    Width = 146
    Height = 36
    Anchors = [akTop, akRight]
    Caption = 'Locate Student...'
    TabOrder = 12
    OnClick = ButtonLocateStudentClick
  end
  object ButtonDeleteStudent: TButton
    Left = 687
    Top = 362
    Width = 146
    Height = 36
    Anchors = [akTop, akRight]
    Caption = 'Delete Student'
    TabOrder = 13
    OnClick = ButtonDeleteStudentClick
  end
  object ButtonSortStudentList: TButton
    Left = 687
    Top = 412
    Width = 146
    Height = 36
    Anchors = [akTop, akRight]
    Caption = 'Sort Student List '
    TabOrder = 14
    OnClick = ButtonSortStudentListClick
  end
  object ButtonMoveUp: TButton
    Left = 480
    Top = 230
    Width = 27
    Height = 36
    Anchors = [akTop, akRight]
    Caption = 'Up'
    TabOrder = 15
    OnClick = ButtonMoveUpClick
  end
  object ButtonMoveDown: TButton
    Left = 480
    Top = 270
    Width = 27
    Height = 36
    Anchors = [akTop, akRight]
    Caption = 'Dn'
    TabOrder = 16
    OnClick = ButtonMoveDownClick
  end
  object ComboBoxVersion: TComboBox
    Left = 71
    Top = 8
    Width = 57
    Height = 23
    Style = csDropDownList
    Ctl3D = True
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Consolas'
    Font.Style = []
    ItemIndex = 0
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 17
    Text = '"1.0"'
    Items.Strings = (
      '"1.0"'
      '"1.1"')
  end
  object ComboBoxEncoding: TComboBox
    Left = 204
    Top = 8
    Width = 125
    Height = 23
    Style = csDropDownList
    Ctl3D = True
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Consolas'
    Font.Style = []
    ItemIndex = 1
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 18
    Text = '"windows-1251"'
    Items.Strings = (
      '"UTF-8"'
      '"windows-1251"')
  end
  object ComboBoxStandalone: TComboBox
    Left = 417
    Top = 8
    Width = 57
    Height = 23
    Style = csDropDownList
    Ctl3D = True
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Consolas'
    Font.Style = []
    ItemIndex = 1
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 19
    Text = '"no"'
    Items.Strings = (
      '"yes"'
      '"no"')
  end
  object ButtonSaveDataToFile: TButton
    Left = 532
    Top = 462
    Width = 146
    Height = 36
    Anchors = [akTop, akRight]
    Caption = 'Save Data To File'
    TabOrder = 20
    OnClick = ButtonSaveDataToFileClick
  end
  object ButtonLoadDataFromFile: TButton
    Left = 687
    Top = 462
    Width = 146
    Height = 36
    Anchors = [akTop, akRight]
    Caption = 'Load Data From File'
    TabOrder = 21
    OnClick = ButtonLoadDataFromFileClick
  end
  object EditStudentID: TEdit
    Left = 610
    Top = 48
    Width = 51
    Height = 21
    Anchors = [akTop, akRight]
    Color = clInactiveBorder
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MaxLength = 15
    ParentFont = False
    ReadOnly = True
    TabOrder = 22
  end
  object ButtonClear: TButton
    Left = 685
    Top = 47
    Width = 62
    Height = 23
    Anchors = [akTop, akRight]
    Caption = 'Clear'
    TabOrder = 23
    OnClick = ButtonClearClick
  end
end
