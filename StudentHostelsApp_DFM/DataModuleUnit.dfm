object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 280
  Width = 375
  object Connection: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=rdbMS_2019251421043;Persist Securit' +
      'y Info=True;User ID=20_19251421043;Initial Catalog=20_1925142104' +
      '3;Data Source=tcp:194.141.86.222\STUDENTSSQLSRV,4848'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 128
    Top = 96
  end
end
