object CMSForm: TCMSForm
  Left = 0
  Top = 0
  Caption = 'CMS'
  ClientHeight = 503
  ClientWidth = 613
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object DBNavigator1: TDBNavigator
    Left = 184
    Top = 32
    Width = 420
    Height = 25
    DataSource = ProductsDataSource
    TabOrder = 0
  end
  object CMSPageControl: TPageControl
    Left = 8
    Top = 8
    Width = 596
    Height = 449
    ActivePage = TabSheet2
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Products'
      object SpeedButtonSelectImage: TSpeedButton
        Left = 442
        Top = 255
        Width = 111
        Height = 34
        Caption = 'Select'
        OnClick = SpeedButtonSelectImageClick
      end
      object DBGridProducts: TDBGrid
        Left = 3
        Top = 48
        Width = 409
        Height = 368
        DataSource = ProductsDataSource
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
      object DBImageProduct: TDBImage
        Left = 418
        Top = 48
        Width = 167
        Height = 186
        DataSource = ProductsDataSource
        TabOrder = 1
      end
      object DBNavigatorProducts: TDBNavigator
        Left = 3
        Top = 16
        Width = 312
        Height = 26
        DataSource = ProductsDataSource
        VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
        TabOrder = 2
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Product Types'
      ImageIndex = 1
      object DBNavigatorProductTypes: TDBNavigator
        Left = 3
        Top = 16
        Width = 312
        Height = 26
        DataSource = ProductTypesDataSource
        VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
        TabOrder = 0
      end
      object DBGridProductTypes: TDBGrid
        Left = 3
        Top = 48
        Width = 574
        Height = 368
        DataSource = ProductTypesDataSource
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
    end
  end
  object BitBtnClose: TBitBtn
    Left = 520
    Top = 465
    Width = 85
    Height = 32
    Caption = 'Close'
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 2
  end
  object ProductsDataSet: TADODataSet
    Active = True
    Connection = DM.Connection
    CursorType = ctStatic
    CommandText = 'Product'
    CommandType = cmdTable
    Parameters = <>
    Left = 112
    Top = 408
    object ProductsDataSetID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'ID'
      ReadOnly = True
    end
    object ProductsDataSetName: TWideStringField
      DisplayWidth = 20
      FieldName = 'Name'
      Size = 255
    end
    object ProductsDataSetCost: TBCDField
      DisplayWidth = 7
      FieldName = 'Cost'
      Precision = 19
    end
    object ProductsDataSetFkProductType: TWideStringField
      DisplayWidth = 16
      FieldName = 'FkProductType'
      Size = 255
    end
    object ProductsDataSetImage: TBlobField
      DisplayWidth = 10
      FieldName = 'Image'
    end
  end
  object ProductsDataSource: TDataSource
    DataSet = ProductsDataSet
    Left = 184
    Top = 400
  end
  object OpenPictureDialog: TOpenPictureDialog
    Left = 32
    Top = 408
  end
  object ProductTypesDataSet: TADODataSet
    Active = True
    Connection = DM.Connection
    CursorType = ctStatic
    CommandText = 'ProductType'
    CommandType = cmdTable
    Parameters = <>
    Left = 512
    Top = 352
  end
  object ProductTypesDataSource: TDataSource
    DataSet = ProductTypesDataSet
    Left = 512
    Top = 408
  end
end
