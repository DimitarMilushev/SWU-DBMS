object LoginForm: TLoginForm
  Left = 0
  Top = 0
  Caption = 'Login'
  ClientHeight = 279
  ClientWidth = 573
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object Label1: TLabel
    Left = 168
    Top = 69
    Width = 38
    Height = 21
    Caption = 'Email'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 168
    Top = 125
    Width = 66
    Height = 21
    Caption = 'Password'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object ButtonLogin: TButton
    Left = 168
    Top = 208
    Width = 225
    Height = 49
    Caption = 'Login'
    Enabled = False
    TabOrder = 0
    OnClick = ButtonLoginClick
  end
  object EditEmail: TEdit
    Left = 168
    Top = 96
    Width = 225
    Height = 23
    TabOrder = 1
    OnChange = OnEditBoxChange
  end
  object EditPassword: TEdit
    Left = 168
    Top = 152
    Width = 225
    Height = 23
    PasswordChar = '*'
    TabOrder = 2
    OnChange = OnEditBoxChange
  end
  object StaticText1: TStaticText
    Left = 168
    Top = 19
    Width = 63
    Height = 36
    Caption = 'Login'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
end
