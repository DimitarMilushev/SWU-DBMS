object CartForm: TCartForm
  Left = 0
  Top = 0
  ClientHeight = 313
  ClientWidth = 575
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object PanelActions: TPanel
    Left = 0
    Top = 0
    Width = 575
    Height = 73
    Align = alTop
    Caption = 'PanelActions'
    ShowCaption = False
    TabOrder = 0
    object StaticTextTotal: TStaticText
      Left = 8
      Top = 24
      Width = 172
      Height = 36
      Caption = 'Total amount: 0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object BitBtnCLose: TBitBtn
    Left = 492
    Top = 270
    Width = 75
    Height = 32
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 1
  end
  object BitBtnCheckout: TBitBtn
    Left = 8
    Top = 270
    Width = 113
    Height = 32
    Caption = 'Checkout'
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 2
    OnClick = BitBtnCheckoutClick
  end
  object StringGridOrders: TStringGrid
    Left = 8
    Top = 79
    Width = 559
    Height = 185
    ColCount = 3
    TabOrder = 3
    OnSelectCell = OnCellClick
    RowHeights = (
      24
      24
      24
      24
      28)
  end
  object BitBtnRemoveItem: TBitBtn
    Left = 127
    Top = 270
    Width = 113
    Height = 32
    Caption = 'Remove Item'
    Enabled = False
    NumGlyphs = 2
    TabOrder = 4
    OnClick = BitBtnRemoveItemClick
  end
end
