unit AccFormsUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.ComCtrls, Vcl.Buttons;

type
  TAccFormsForm = class(TForm)
    Bevel10: TBevel;
    Label11: TLabel;
    PageControl1: TPageControl;
    TabSheetBasicData: TTabSheet;
    Bevel9: TBevel;
    Bevel5: TBevel;
    Bevel1: TBevel;
    Bevel4: TBevel;
    Bevel2: TBevel;
    Label2: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label29: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label41: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label1: TLabel;
    Label46: TLabel;
    DBEdit2: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBImage1: TDBImage;
    DBEdit24: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBComboBox2: TDBComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    DBNavigatorBasicData: TDBNavigator;
    TabSheetPayments: TTabSheet;
    Bevel3: TBevel;
    Label28: TLabel;
    DBGrid1: TDBGrid;
    DBNavigatorPayments: TDBNavigator;
    TabSheetItems: TTabSheet;
    Bevel8: TBevel;
    Label45: TLabel;
    DBGrid4: TDBGrid;
    DBNavigatorItems: TDBNavigator;
    DBGrid5: TDBGrid;
    DSAccForms: TDataSource;
    DataSetAccForms: TADODataSet;
    DataSetAccFormsPkAccForm: TAutoIncField;
    DataSetAccFormsAFNumber: TWideStringField;
    DataSetAccFormsAccDate: TDateTimeField;
    DataSetAccFormsFkWarrant: TIntegerField;
    DataSetAccFormsWarrantName: TStringField;
    DataSetAccFormsWarrantNumber: TWideStringField;
    DataSetAccFormsWarrantDate: TDateTimeField;
    DataSetAccFormsFkRoom: TIntegerField;
    DataSetAccFormsRNumber: TStringField;
    DataSetAccFormsFkPerson: TIntegerField;
    DataSetAccFormsAccType: TWideStringField;
    DataSetAccFormsDepartureDate: TDateTimeField;
    DataSetAccFormsAFStatus: TWideStringField;
    TableWarrants: TADOTable;
    TableWarrantsPkWarrant: TAutoIncField;
    TableWarrantsWName: TWideStringField;
    TableRooms: TADOTable;
    TableRoomsPkRoom: TAutoIncField;
    TableRoomsRNumber: TWideStringField;
    DataSourcePersons: TDataSource;
    TablePayments: TADOTable;
    TablePaymentsPkPayment: TAutoIncField;
    TablePaymentsFkAccForm: TIntegerField;
    TablePaymentsAcademicYearStart: TIntegerField;
    TablePaymentsAcademicYearEnd: TIntegerField;
    TablePaymentsPMonth: TWordField;
    TablePaymentsFkFeeType: TIntegerField;
    TablePaymentsFTName: TStringField;
    TablePaymentsAmount: TBCDField;
    TablePaymentsReceiptNumber: TWideStringField;
    TablePaymentsReceiptDate: TDateTimeField;
    TableFeeTypes: TADOTable;
    TableFeeTypesPkFeeType: TAutoIncField;
    TableFeeTypesFTName: TWideStringField;
    DSPayments: TDataSource;
    TableItems: TADOTable;
    TableItemsPkItem: TAutoIncField;
    TableItemsFkAccForm: TIntegerField;
    TableItemsFkInventory: TIntegerField;
    TableItemsInventoryName: TStringField;
    TableItemsReceivedDate: TDateTimeField;
    TableItemsAmount: TWordField;
    TableItemsReturnedDate: TDateTimeField;
    TableItemsBackAmount: TWordField;
    DSItems: TDataSource;
    TableInventory: TADOTable;
    TableInventoryPkInventory: TAutoIncField;
    TableInventoryIName: TWideStringField;
    SpeedButtonFindPerson: TSpeedButton;
    BitBtnRooms: TBitBtn;
    BitBtnPersons: TBitBtn;
    DataSetPersons: TADODataSet;
    Label4: TLabel;
    DBComboBox1: TDBComboBox;
    TableRoomsFkHostel: TIntegerField;
    DataSetPersonsPkPerson: TAutoIncField;
    DataSetPersonsTypeIDNumber: TWideStringField;
    DataSetPersonsIDNumber: TWideStringField;
    DataSetPersonsFirstName: TWideStringField;
    DataSetPersonsMiddleName: TWideStringField;
    DataSetPersonsLastName: TWideStringField;
    DataSetPersonsDateOfBirth: TDateTimeField;
    DataSetPersonsPhoto: TBlobField;
    DataSetPersonsFkSettlement: TIntegerField;
    DataSetPersonsHomeAddress: TWideStringField;
    DataSetPersonsICNumber: TWideStringField;
    DataSetPersonsICDateOfIssue: TDateTimeField;
    DataSetPersonsICDateOfExpiry: TDateTimeField;
    DataSetPersonsMaritalStatus: TWideStringField;
    BitBtnDeveloper: TBitBtn;
    BitBtnClose: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButtonFindPersonClick(Sender: TObject);
    procedure BitBtnRoomsClick(Sender: TObject);
    procedure BitBtnPersonsClick(Sender: TObject);
    procedure DataSetAccFormsAfterScroll(DataSet: TDataSet);
    procedure DataSetAccFormsAfterPost(DataSet: TDataSet);
    procedure BitBtnDeveloperClick(Sender: TObject);
    procedure BitBtnCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AccFormsForm: TAccFormsForm;

implementation

{$R *.dfm}

uses DataModuleUnit, CDSUnit, HostelsRoomsInvertoryUnit, SearchPersonUnit,
  DeveloperUnit;

procedure TAccFormsForm.FormCreate(Sender: TObject);
begin
  DataSetAccForms.Open();
  TableWarrants.Open();
  TableRooms.Open();
  DataSetPersons.Open();
  TableFeeTypes.Open();
  TablePayments.Open();
  TableItems.Open();
end;

procedure TAccFormsForm.SpeedButtonFindPersonClick(Sender: TObject);
begin
  var f: TSearchPersonForm := TSearchPersonForm.Create(Self);
  if(f.ShowModal() = mrOk) then
  begin
    if(DataSetAccForms.Active) then DataSetAccForms.Close();

    DataSetAccForms.Open();

    if(DataSetPersons.Active) then DataSetPersons.Close();

    DataSetPersons.Parameters.ParamByName('PkPerson').Value :=
      DataSetAccFormsFkPerson.Value;

    DataSetPersons.Open();

    if not (DataSetAccFormsFkPerson.Value > 0) then
    begin
      ShowMessage('Този наемател няма картон!');
    end;

  end;
  f.Free();
end;

procedure TAccFormsForm.BitBtnRoomsClick(Sender: TObject);
begin
  var f: THostelsRoomsInvertoryForm := THostelsRoomsInvertoryForm.Create(Self);
  f.Width := 415;
  f.DbNavigator.Width := 395;
  f.BitBtnOk.Left := f.BitBtnOk.Left - 310;
  f.BitBtnCancel.Left := f.BitBtnCancel.Left - 310;

  if(f.ShowModal() = mrOk) then
  begin
    if((DataSetAccForms.State <> dsInsert) or
        (DataSetAccForms.State <> dsEdit)) then
        begin
          DataSetAccForms.Edit();
        end;
        DataSetAccFormsFkRoom.AsInteger :=
          f.DataSetRoomsPkRoom.AsInteger;
  end;
  f.Free();
end;

procedure TAccFormsForm.BitBtnPersonsClick(Sender: TObject);
begin
  var f: TSearchPersonForm := TSearchPersonForm.Create(Self);
  if(f.ShowModal() = mrOk) then
  begin
    if((dataSetAccForms.State <> dsInsert) or
      (DataSetAccForms.State <> dsEdit)) then
      begin
        DataSetAccForms.Edit();
      end;
      DataSetAccFormsFkPerson.AsInteger :=
        f.DataSetPersonsPkPerson.AsInteger;
        if(DataSetPersons.Active) then DataSetPersons.Close();
        DataSetPersons.Parameters.ParamByName('PkPerson').Value :=
          f.DataSetPersonsPkPerson.AsInteger;
          DataSetPersons.Open();

  end;
  f.Free();
end;

procedure TAccFormsForm.DataSetAccFormsAfterScroll(DataSet: TDataSet);
begin

  if(DataSetPersons.Active) then
  begin
    DataSetPersons.Close();
  end;
  DataSetPersons.Parameters.ParamByName('PkPerson').Value :=
    DataSetAccFormsFkPerson.AsInteger;

    DataSetPersons.Open();

    if(DataSetAccFormsAFStatus.AsString = 'Закрит') then
    begin
      TabSheetBasicData.Enabled := False;
      TabSheetPayments.Enabled := False;
      TabSheetItems.Enabled := False;
      DBEdit2.Color := clSilver;
      DBEdit6.Color := clSilver;
      DBEdit7.Color := clSilver;
      DBEdit13.Color := clSilver;
      DBComboBox2.Style := csSimple;
      DBComboBox2.Color := clSilver;
      DBLookupComboBox1.Color := clSilver;
      DBLookupComboBox2.Color := clSilver;
      DBEdit10.Color := clSilver;
      DBEdit11.Color := clSilver;
      DBComboBox1.Style := csSimple;
      DBComboBox1.Color := clSilver;
      DBEdit16.Color := clSilver;
      DBEdit18.Color := clSilver;
      DBEdit19.Color := clSilver;
      DBEdit1.Color := clSilver;
      DBEdit20.Color := clSilver;
      DBEdit21.Color := clSilver;
      DBEdit26.Color := clSilver;
      DBEdit27.Color := clSilver;
      DBEdit28.Color := clSilver;
      DBEdit24.Color := clSilver;
      end else
      begin
      TabSheetBasicData.Enabled := True;
      TabSheetPayments.Enabled := True;
      DBEdit2.Color := clCream;
      DBEdit6.Color := clWindow;
      DBEdit7.Color := clWindow;
      DBEdit13.Color := clWindow;
      DBComboBox2.Style := csDropDownList;
      DBComboBox2.Color := clWindow;
      DBEdit10.Color := clWindow;
      DBEdit11.Color := clWindow;
      DBComboBox1.Style := csDropDownList;
      DBComboBox1.Color := clWindow;
      DBEdit16.Color := $00F6FAFA;
      DBEdit18.Color := $00F6FAFA;
      DBEdit19.Color := $00F6FAFA;
      DBEdit1.Color := $00F6FAFA;
      DBEdit20.Color := $00F6FAFA;
      DBEdit21.Color := $00F6FAFA;
      DBEdit26.Color := $00F6FAFA;
      DBEdit27.Color := $00F6FAFA;
      DBEdit28.Color := $00F6FAFA;
      DBEdit24.Color := $00F6FAFA;
    end;
end;

procedure TAccFormsForm.DataSetAccFormsAfterPost(DataSet: TDataSet);
begin
  if(DataSetAccForms.Active) then
  begin
    if(DataSetAccFormsFkPerson.Value > 0) then
    begin
      var CurrentPkPerson: Integer :=
        DataSetAccFormsFkPerson.Value;
        DataSetAccForms.Close();
        DataSetAccForms.Parameters.ParamByName(
        'FkPerson').Value := CurrentPkPerson;
        DataSetAccForms.Open();
    end;
  end;
end;

procedure TAccFormsForm.BitBtnCloseClick(Sender: TObject);
begin
  Close();
end;

procedure TAccFormsForm.BitBtnDeveloperClick(Sender: TObject);
begin
  var f: TDeveloperForm := TDeveloperForm.Create(Self);
  f.ShowModal();
  f.Free();
end;

end.
