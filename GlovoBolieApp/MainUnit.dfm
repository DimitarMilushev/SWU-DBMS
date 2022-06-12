object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'GlovoBolie v0.1'
  ClientHeight = 740
  ClientWidth = 816
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object ButtonLogin: TButton
    Left = 296
    Top = 561
    Width = 225
    Height = 49
    Align = alCustom
    Caption = 'Login'
    TabOrder = 0
    Visible = False
    OnClick = ButtonLoginClick
  end
  object ButtonRegister: TButton
    Left = 296
    Top = 616
    Width = 225
    Height = 49
    Margins.Right = 200
    Align = alCustom
    Caption = 'Register'
    TabOrder = 1
    Visible = False
    OnClick = ButtonRegisterClick
  end
  object LoginLabel: TStaticText
    Left = 264
    Top = 149
    Width = 295
    Height = 64
    Caption = 'GlovoBolie'
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -48
    Font.Name = 'Showcard Gothic'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 2
    Visible = False
  end
  object PanelLoggedIn: TPanel
    Left = 0
    Top = 0
    Width = 816
    Height = 740
    Align = alClient
    AutoSize = True
    TabOrder = 3
    Visible = False
    object ProductsGrid: TDBCtrlGrid
      Left = 199
      Top = 84
      Width = 621
      Height = 654
      Align = alCustom
      AllowDelete = False
      AllowInsert = False
      ColCount = 2
      Color = clBtnFace
      DataSource = ProductsDataSource
      PanelHeight = 218
      PanelWidth = 302
      ParentColor = False
      TabOrder = 0
      TabStop = False
      SelectedColor = clMoneyGreen
      Visible = False
      object DBProductName: TDBText
        Left = 9
        Top = 191
        Width = 208
        Height = 26
        DataField = 'Name'
        DataSource = ProductsDataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBProductCost: TDBText
        Left = 223
        Top = 191
        Width = 74
        Height = 26
        Alignment = taRightJustify
        DataField = 'Cost'
        DataSource = ProductsDataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object DBProductImage: TDBImage
        Left = 9
        Top = 7
        Width = 288
        Height = 178
        BorderStyle = bsNone
        DataField = 'Image'
        DataSource = ProductsDataSource
        Stretch = True
        TabOrder = 0
      end
    end
    object ActionPanel: TPanel
      Left = 1
      Top = 85
      Width = 199
      Height = 654
      Align = alLeft
      Caption = 'ActionPanel'
      ShowCaption = False
      TabOrder = 1
      object RadioGroupFoodTypes: TRadioGroup
        Left = 11
        Top = 6
        Width = 174
        Height = 218
        Caption = 'Choose a food type:'
        TabOrder = 0
        OnClick = UpdateFilter
      end
      object BitBtnAdd: TBitBtn
        Left = 11
        Top = 592
        Width = 174
        Height = 57
        Caption = 'Add to Cart'
        Kind = bkOK
        NumGlyphs = 2
        TabOrder = 1
        OnClick = BitBtnAddClick
      end
    end
    object ButtonsPanel: TPanel
      Left = 1
      Top = 1
      Width = 814
      Height = 84
      Align = alTop
      Caption = 'ActionPanel'
      ParentBackground = False
      ShowCaption = False
      TabOrder = 2
      object ButtonCMS: TButton
        Left = 644
        Top = 21
        Width = 75
        Height = 44
        Caption = 'CMS'
        TabOrder = 0
        Visible = False
        StyleName = 'Windows'
        OnClick = ButtonCMSClick
      end
      object ButtonCart: TButton
        Left = 199
        Top = 21
        Width = 75
        Height = 44
        Caption = 'Cart'
        TabOrder = 1
        StyleName = 'Windows'
        OnClick = OnCartClick
      end
      object ButtonLogout: TButton
        Left = 725
        Top = 21
        Width = 75
        Height = 44
        Caption = 'Logout'
        TabOrder = 2
        StyleName = 'Windows'
        OnClick = ButtonLogoutClick
      end
      object StaticTextLoggedInAs: TStaticText
        Left = 11
        Top = 21
        Width = 77
        Height = 19
        Caption = 'Logged in as: '
        TabOrder = 3
      end
      object StaticTextUserEmail: TStaticText
        Left = 11
        Top = 46
        Width = 33
        Height = 19
        Caption = 'Email'
        TabOrder = 4
      end
    end
  end
  object ProductsDataSource: TDataSource
    DataSet = ProductsDataSet
    Left = 672
    Top = 136
  end
  object ProductsDataSet: TADODataSet
    Connection = DM.Connection
    CursorType = ctStatic
    CommandText = 'Product'
    CommandType = cmdTable
    Parameters = <>
    Left = 672
    Top = 200
    object ProductsDataSetID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object ProductsDataSetName: TWideStringField
      FieldName = 'Name'
      Size = 255
    end
    object ProductsDataSetImage: TBlobField
      FieldName = 'Image'
    end
    object ProductsDataSetCost: TBCDField
      FieldName = 'Cost'
      DisplayFormat = '0.00 "$"'
      Precision = 19
    end
    object ProductsDataSetFkProductType: TWideStringField
      FieldName = 'FkProductType'
      Size = 255
    end
  end
  object ProductTypesDataSet: TADODataSet
    Connection = DM.Connection
    CursorType = ctStatic
    CommandText = 'ProductType'
    CommandType = cmdTable
    Parameters = <>
    Left = 568
    Top = 200
    object ProductTypesDataSetID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object ProductTypesDataSetName: TWideStringField
      FieldName = 'Name'
      Size = 255
    end
  end
end
