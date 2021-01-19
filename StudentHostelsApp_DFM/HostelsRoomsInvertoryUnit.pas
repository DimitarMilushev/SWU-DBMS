unit HostelsRoomsInvertoryUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  THostelsRoomsInventoryForm = class(TForm)
    LabelHostels: TLabel;
    BevelHostels: TBevel;
    LabelRooms: TLabel;
    BevelRooms: TBevel;
    DBNavigator: TDBNavigator;
    DBGridHostels: TDBGrid;
    DBGridRooms: TDBGrid;
    DataSetHostels: TADODataSet;
    DataSetHostelsPkHostel: TAutoIncField;
    DataSetHostelsHNumber: TWideStringField;
    DataSetHostelsFkSettlement: TIntegerField;
    DataSetHostelsSettlementName: TStringField;
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
    DataSetSettlements: TADODataSet;
    DataSetSettlementsPkSettlement: TAutoIncField;
    DataSetSettlementsSName: TStringField;
    BitBtnOk: TBitBtn;
    BitBtnCancel: TBitBtn;
    DataSetAccForms: TADODataSet;
    DataSourceAccForms: TDataSource;
    DBGrid1: TDBGrid;
    LabelPersonsCount: TLabel;
    Bevel1: TBevel;
    DataSetAccFormsFirstName: TWideStringField;
    DataSetAccFormsMiddleName: TWideStringField;
    DataSetAccFormsLastName: TWideStringField;
    DataSetAccFormsAFNumber: TWideStringField;
    DataSetAccFormsAccDate: TDateTimeField;
    DBGridInventory: TDBGrid;
    DataSetInventory: TADODataSet;
    DataSetInventoryPkInventory: TAutoIncField;
    DataSetInventoryIName: TWideStringField;
    DataSetInventoryPrice: TBCDField;
    DataSetInventoryICount: TIntegerField;
    DataSourceInventory: TDataSource;
    Bevel2: TBevel;
    Label1: TLabel;
    Bevel3: TBevel;
    procedure FormCreate(Sender: TObject);
    procedure DBGridHostelsEnter(Sender: TObject);
    procedure DBGridRoomsEnter(Sender: TObject);
    procedure DataSetRoomsNewRecord(DataSet: TDataSet);
    procedure DataSetRoomsAfterScroll(DataSet: TDataSet);
    procedure DataSetRoomsAfterPost(DataSet: TDataSet);
    procedure DataSetAccFormsAfterScroll(DataSet: TDataSet);
    procedure DBGridInventoryEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  HostelsRoomsInventoryForm: THostelsRoomsInventoryForm;

implementation

{$R *.dfm}

uses DataModuleUnit;

procedure THostelsRoomsInventoryForm.FormCreate(Sender: TObject);
begin
  DataSetHostels.Open();
  DataSetRooms.Open();
  DataSetSettlements.Open();
  DataSetAccForms.Open();
  DataSetInventory.Open();
end;

procedure THostelsRoomsInventoryForm.DBGridHostelsEnter(Sender: TObject);
begin
  if (DBNavigator.DataSource <> DBGridHostels.DataSource) then
  begin
    DBNavigator.DataSource := DBGridHostels.DataSource;
  end;
end;

procedure THostelsRoomsInventoryForm.DBGridInventoryEnter(Sender: TObject);
begin
  if (DBNavigator.DataSource <> DBGridInventory.DataSource) then
  begin
    DBNavigator.DataSource := DBGridInventory.DataSource;
  end;
end;

procedure THostelsRoomsInventoryForm.DBGridRoomsEnter(Sender: TObject);
begin
  if (DBNavigator.DataSource <> DBGridRooms.DataSource) then
  begin
    DBNavigator.DataSource := DBGridRooms.DataSource;
  end;
end;

procedure THostelsRoomsInventoryForm.DataSetRoomsNewRecord(DataSet: TDataSet);
begin
  DataSetRoomsRStatus.AsString := 'свободна';
end;

procedure THostelsRoomsInventoryForm.DataSetRoomsAfterScroll(DataSet: TDataSet);
begin
  BitBtnOk.Enabled := (DataSetRoomsPkRoom.AsInteger > 0);
end;

procedure THostelsRoomsInventoryForm.DataSetRoomsAfterPost(DataSet: TDataSet);
begin
  BitBtnOk.Enabled := (DataSetRoomsPkRoom.AsInteger > 0);
  if (DataSetAccForms.Active) then
  begin
    LabelPersonsCount.Caption := 'Наематели: ' +
      IntToStr(DataSetAccForms.RecordCount) + ' от ' +
      DataSetRoomsNumberOfBeds.AsString;
  end;
end;

procedure THostelsRoomsInventoryForm.DataSetAccFormsAfterScroll(DataSet: TDataSet);
begin
  if (DataSetAccForms.Active) then
  begin
    LabelPersonsCount.Caption := 'Наематели: ' +
      IntToStr(DataSetAccForms.RecordCount) + ' от ' +
      DataSetRoomsNumberOfBeds.AsString;
  end
end;

end.
