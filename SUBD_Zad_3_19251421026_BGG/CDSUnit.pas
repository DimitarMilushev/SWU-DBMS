unit CDSUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TCDSForm = class(TForm)
    DBGridCountries: TDBGrid;
    DataSetCountries: TADODataSet;
    DataSourceCountries: TDataSource;
    DataSetCountriesPkCountry: TAutoIncField;
    DataSetCountriesCName: TStringField;
    DataSetDistricts: TADODataSet;
    DataSourceDistricts: TDataSource;
    DataSetDistrictsPkDistrict: TAutoIncField;
    DataSetDistrictsFkCountry: TIntegerField;
    DataSetDistrictsDName: TWideStringField;
    DataSourceSettlements: TDataSource;
    DataSetSettlements: TADODataSet;
    DataSetSettlementsPkSettlement: TAutoIncField;
    DataSetSettlementsFkDistrict: TIntegerField;
    DataSetSettlementsSType: TStringField;
    DataSetSettlementsSName: TStringField;
    DataSetSettlementsZipCode: TIntegerField;
    DBNavigator: TDBNavigator;
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBGridDistricts: TDBGrid;
    DBGridSettlements: TDBGrid;
    BitBtnDeveloper: TBitBtn;
    BitBtnOk: TBitBtn;
    BitBtnCancel: TBitBtn;
    procedure BitBtnDeveloperClick(Sender: TObject);
    procedure TCDSFormDBGridSettlementsEnter (Sender: TObject);
    procedure DataSetSettlementsAfterPost(DataSet: TDataSet);
    procedure DataSetSettlementsAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CDSForm: TCDSForm;

implementation

{$R *.dfm}

uses DataModuleUnit, DeveloperUnit;

procedure TCDSForm.BitBtnDeveloperClick(Sender: TObject);
begin
  var f: TDeveloperForm := TDeveloperForm.Create (self);
  f.Showmodal ();
  f.Free ();
end;

procedure TCDSForm.DataSetSettlementsAfterPost(DataSet: TDataSet);
begin
BitBtnOK.Enabled := (DataSetSettlementsPkSettlement.AsInteger >0);
end;

procedure TCDSForm.DataSetSettlementsAfterScroll(DataSet: TDataSet);
begin
BitBtnOK.Enabled := (DataSetSettlementsPkSettlement.AsInteger >0);
end;

procedure TCDSForm.TCDSFormDBGridSettlementsEnter (Sender: TObject);
begin
  if (DBNavigator.DataSource <> DBGridSettlements.DataSource) then
   DBNavigator.DataSource := DBgridSettlements.DataSource;
end;
end.


