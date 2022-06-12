object DM: TDM
  Height = 480
  Width = 640
  object Connection: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=F:\SW' +
      'U\GlovoBolieApp\db\GlovoBolieDB.mdb;Mode=Share Deny None;Persist' +
      ' Security Info=False;Jet OLEDB:System database="";Jet OLEDB:Regi' +
      'stry Path="";Jet OLEDB:Database Password="";Jet OLEDB:Engine Typ' +
      'e=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Partial B' +
      'ulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Dat' +
      'abase Password="";Jet OLEDB:Create System Database=False;Jet OLE' +
      'DB:Encrypt Database=False;Jet OLEDB:Don'#39't Copy Locale on Compact' +
      '=False;Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:' +
      'SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 304
    Top = 224
  end
  object QueryLoginLookup: TADOQuery
    Connection = Connection
    Parameters = <>
    Left = 136
    Top = 152
  end
  object QueryRegisterUser: TADOQuery
    Connection = Connection
    Parameters = <>
    Left = 136
    Top = 216
  end
  object QueryRegisterLookup: TADOQuery
    Connection = Connection
    Parameters = <>
    Left = 144
    Top = 304
  end
  object QueryInsertOrder: TADOQuery
    Connection = Connection
    Parameters = <>
    Left = 352
    Top = 120
  end
  object QueryProductLookup: TADOQuery
    Parameters = <>
    Left = 464
    Top = 256
  end
end
