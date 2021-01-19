object CDSName: TCDSName
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1044#1098#1088#1078#1072#1074#1080' | '#1054#1073#1083#1072#1089#1090#1080' | '#1053#1072#1089#1077#1083#1077#1085#1080' '#1084#1077#1089#1090#1072
  ClientHeight = 416
  ClientWidth = 424
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DataSetCountries: TADODataSet
    Connection = DataModule1.Connection
    CommandText = 'SELECT * FROM Countries ORDER BY CName ASC'
    IndexFieldNames = 'CName'
    Parameters = <
      item
        Value = Null
      end>
    object DataSetCountriesPkCountry: TAutoIncField
      FieldName = 'PkCountry'
      end
    object DataSetCountriesCName: TStringField
      FieldName = 'CName'
      end
    Left = 64
    Top = 144
  end
  object DataSetDistricts: TADODataSet
    IndexFieldNames = 'DName'
    Parameters = <>
    Left = 200
    Top = 208
  end
end
