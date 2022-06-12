object RegisterForm: TRegisterForm
  Left = 0
  Top = 0
  Caption = 'Register'
  ClientHeight = 321
  ClientWidth = 563
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
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
  object Label4: TLabel
    Left = 168
    Top = 181
    Width = 127
    Height = 21
    Caption = 'Confirm Password'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object ButtonRegister: TButton
    Left = 168
    Top = 256
    Width = 225
    Height = 49
    Caption = 'Register'
    Enabled = False
    TabOrder = 0
    OnClick = ButtonRegisterClick
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
  object EditConfirmPassword: TEdit
    Left = 168
    Top = 208
    Width = 225
    Height = 23
    PasswordChar = '*'
    TabOrder = 3
    OnChange = OnEditBoxChange
  end
  object StaticText1: TStaticText
    Left = 168
    Top = 19
    Width = 90
    Height = 36
    Caption = 'Register'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
end
