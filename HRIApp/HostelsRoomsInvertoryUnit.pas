unit HostelsRoomsInvertoryUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.ExtCtrls,
   System.Actions, Vcl.ActnList, Vcl.ActnMan, Vcl.StdCtrls,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons;

type
  THostelsRoomsInvertoryForm = class(TForm)
    DataSetSettlements: TADODataSet;
    DataSetSettlementsPkSettlement: TAutoIncField;
    DataSetSettlementsFkDistrict: TIntegerField;
    DataSetSettlementsSType: TWideStringField;
    DataSetSettlementsSNAME: TWideStringField;
    DataSetSettlementsZipCode: TIntegerField;
    DataSetHostels: TADODataSet;
    DataSetHostelsPkHostel: TAutoIncField;
    DataSetHostelsHNumber: TWideStringField;
    DataSetHostelsFkSettlement: TIntegerField;
    DataSetHostelsHAddress: TWideStringField;
    DataSetHostelsHPhone: TWideStringField;
    DataSetHostelsHEmail: TWideStringField;
    DataSourceHostels: TDataSource;
    DataSetRooms: TADODataSet;
    DataSetRoomsPkRoom: TAutoIncField;
    DataSetRoomsFkHostel: TIntegerField;
    DataSetRoomsRNumber: TWideStringField;
    DataSetRoomsRFloor: TWordField;
    DataSetRoomsNumberOfBeds: TWordField;
    DataSetRoomsRStatus: TWideStringField;
    DataSourceRooms: TDataSource;
    DataSetAccForms: TADODataSet;
    DataSetAccFormsFirstName: TWideStringField;
    DataSetAccFormsMiddleName: TWideStringField;
    DataSetAccFormsLastName: TWideStringField;
    DataSetAccFormsAFNumber: TWideStringField;
    DataSetAccFormsAccDate: TWideStringField;
    DataSourceAccForms: TDataSource;
    DataSetInventory: TADODataSet;
    DataSetInventoryPkInventory: TAutoIncField;
    DataSetInventoryIName: TWideStringField;
    DataSetInventoryPrice: TBCDField;
    DataSetInventoryICount: TIntegerField;
    DataSourceInventory: TDataSource;
    DBNavigator: TDBNavigator;
    LabelHostels: TLabel;
    BevelRooms: TBevel;
    BevelHostels: TBevel;
    LabelRooms: TLabel;
    LabelPersonsCount: TLabel;
    Bevel1: TBevel;
    BevelSplitter: TBevel;
    BevelInvertory: TBevel;
    DBGridHostels: TDBGrid;
    DBGridRooms: TDBGrid;
    DBGridPersons: TDBGrid;
    DBGridInventory: TDBGrid;
    BitBtnDeveloper: TBitBtn;
    BitBtnOk: TBitBtn;
    BitBtnCancel: TBitBtn;
    LabelInventory: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure DBGridHostelsEnter(Sender: TObject);
    procedure DBGridInventoryEnter(Sender: TObject);
    procedure DBGridRoomsEnter(Sender: TObject);
    procedure DataSetRoomsNewRecord(Sender: TObject);
    procedure DataSetRoomsAfterScroll(DataSet: TDataSet);
    procedure DataSetRoomsAfterPost(DataSet: TDataSet);
    procedure DataSetAccFormsAfterScroll(DataSet: TDataSet);
    procedure BitBtnDeveloperClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  HostelsRoomsInvertoryForm: THostelsRoomsInvertoryForm;

implementation

{$R *.dfm}

uses DataModuleUnit, DeveloperUnit;

procedure THostelsRoomsInvertoryForm.FormCreate(Sender: TObject);
begin
  DataSetHostels.Open();
  DataSetRooms.Open();
  DataSetSettlements.Open();
  DataSetAccForms.Open();
  DataSetInventory.Open();
end;

procedure THostelsRoomsInvertoryForm.DBGridHostelsEnter(Sender: TObject);
begin
  if(DBNavigator.DataSource <> DBGridHostels.DataSource) then
  begin
    DBNavigator.DataSource := DBGridHostels.DataSource;
  end;
end;

procedure THostelsRoomsInvertoryForm.DBGridInventoryEnter(Sender: TObject);
begin
  if(DBNavigator.DataSource <> DBGridInventory.DataSource) then
  begin
    DBNavigator.DataSource := DBGridInventory.DataSource;
  end;
end;

procedure THostelsRoomsInvertoryForm.DBGridRoomsEnter(Sender: TObject);
begin
  if(DBNavigator.DataSource <> DBGridRooms.DataSource) then
  begin
    DBNavigator.DataSource := DBGridRooms.DataSource;
  end;
end;

procedure THostelsRoomsInvertoryForm.DataSetRoomsNewRecord(Sender: TObject);
begin
  DataSetRoomsRStatus.AsString := 'свободна';
end;

procedure THostelsRoomsInvertoryForm.DataSetRoomsAfterScroll(DataSet: TDataSet);
begin
  BitBtnOk.Enabled := (DataSetRoomsPkRoom.AsInteger > 0);
end;

procedure THostelsRoomsInvertoryForm.DataSetRoomsAfterPost(DataSet: TDataSet);
begin
  BitBtnOk.Enabled := (DataSetRoomsPkRoom.AsInteger > 0);
  if(DataSetAccForms.Active) then
  begin
    LabelPersonsCount.Caption := 'Наематели: ' +
    IntToStr(DataSetAccForms.RecordCount) + ' от ' +
    DataSetRoomsNumberOfBeds.AsString;
  end;
end;

procedure THostelsRoomsInvertoryForm.DataSetAccFormsAfterScroll(DataSet: TDataSet);
begin
  if(DataSetAccForms.Active) then
  begin
    LabelPersonsCount.Caption := 'Наематели: ' +
    IntToStr(DataSetAccForms.RecordCount) + ' от ' +
    DataSetRoomsNumberOfBeds.AsString;
  end;
end;

procedure THostelsRoomsInvertoryForm.BitBtnDeveloperClick(Sender: TObject);
begin
  var f: TDeveloperForm := TDeveloperForm.Create(Self);
  f.ShowModal();
  f.Free();
end;

end.
