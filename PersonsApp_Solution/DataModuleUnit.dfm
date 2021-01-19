object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 280
  Width = 375
  object Connection: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Persist Security Info=False;Initial Catalog=' +
      'StudentHostels'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 128
    Top = 96
  end
end
