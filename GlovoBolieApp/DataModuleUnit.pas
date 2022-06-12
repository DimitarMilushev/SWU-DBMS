unit DataModuleUnit;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDM = class(TDataModule)
    Connection: TADOConnection;
    QueryLoginLookup: TADOQuery;
    QueryRegisterUser: TADOQuery;
    QueryRegisterLookup: TADOQuery;
    QueryInsertOrder: TADOQuery;
    QueryProductLookup: TADOQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
