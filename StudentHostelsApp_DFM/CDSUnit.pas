unit CDSUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TCDSForm = class(TForm)
    LabelCountries: TLabel;
    LabelDistricts: TLabel;
    LabelSettlements: TLabel;
    Bevel: TBevel;
    DBGridCountries: TDBGrid;
    DBGridDistricts: TDBGrid;
    DBGridSettlements: TDBGrid;
    DBNavigator: TDBNavigator;
    BitBtnOk: TBitBtn;
    BitBtnCancel: TBitBtn;
    DataSourceCountries: TDataSource;
    DataSourceDistricts: TDataSource;
    DataSourceSettlements: TDataSource;
    DataSetCountries: TADODataSet;
    DataSetCountriesPkCountry: TAutoIncField;
    DataSetCountriesCName: TStringField;
    DataSetDistricts: TADODataSet;
    DataSetDistrictsPkDistrict: TAutoIncField;
    DataSetDistrictsFkCountry: TIntegerField;
    DataSetDistrictsDName: TWideStringField;
    DataSetSettlements: TADODataSet;
    DataSetSettlementsPkSettlement: TAutoIncField;
    DataSetSettlementsFkDistrict: TIntegerField;
    DataSetSettlementsSType: TStringField;
    DataSetSettlementsSName: TStringField;
    DataSetSettlementsZipCode: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure DBGridCountriesEnter(Sender: TObject);
    procedure DBGridDistrictsEnter(Sender: TObject);
    procedure DBGridSettlementsEnter(Sender: TObject);
    procedure DataSetSettlementsAfterScroll(DataSet: TDataSet);
    procedure DataSetSettlementsAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CDSForm: TCDSForm;

implementation

{$R *.dfm}

uses DataModuleUnit;

procedure TCDSForm.FormCreate(Sender: TObject);
begin
  DataSetCountries.Open();
  DataSetDistricts.Open();
  DataSetSettlements.Open();
end;

procedure TCDSForm.DBGridCountriesEnter(Sender: TObject);
begin
  if (DBNavigator.DataSource <> DBGridCountries.DataSource) then
    DBNavigator.DataSource := DBGridCountries.DataSource;
end;

procedure TCDSForm.DBGridDistrictsEnter(Sender: TObject);
begin
  if (DBNavigator.DataSource <> DBGridDistricts.DataSource) then
    DBNavigator.DataSource := DBGridDistricts.DataSource;
end;

procedure TCDSForm.DBGridSettlementsEnter(Sender: TObject);
begin
  if (DBNavigator.DataSource <> DBGridSettlements.DataSource) then
    DBNavigator.DataSource := DBGridSettlements.DataSource;
end;

procedure TCDSForm.DataSetSettlementsAfterScroll(DataSet: TDataSet);
begin
  BitBtnOk.Enabled := (DataSetSettlementsPkSettlement.AsInteger > 0);
end;

procedure TCDSForm.DataSetSettlementsAfterPost(DataSet: TDataSet);
begin
  BitBtnOk.Enabled := (DataSetSettlementsPkSettlement.AsInteger > 0);
end;

end.
