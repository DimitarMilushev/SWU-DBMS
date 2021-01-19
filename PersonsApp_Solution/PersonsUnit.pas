unit PersonsUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtDlgs, Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TPersonsForm = class(TForm)
    Bevel6: TBevel;
    Bevel4: TBevel;
    Bevel3: TBevel;
    Bevel2: TBevel;
    Bevel1: TBevel;
    BevelIC: TBevel;
    LabelTypeIDNumber: TLabel;
    LabelIDNumber: TLabel;
    LabelFirstName: TLabel;
    LabelMiddleName: TLabel;
    LabelLastName: TLabel;
    LabelDateOfBirth: TLabel;
    LabelPhotoFrame: TLabel;
    LabelHomeAddress: TLabel;
    LabelICNumber: TLabel;
    LabelICDateOfIssue: TLabel;
    LabelICDateOfExpiry: TLabel;
    LabelMaritalStatus: TLabel;
    LabelSettlement: TLabel;
    LabelICFrame: TLabel;
    LabelAddressFrame: TLabel;
    LabelPersonDataFrame: TLabel;
    LabelMaritalStatusFrame: TLabel;
    LabelPersonContactsFrame: TLabel;
    DBEditIDNumber: TDBEdit;
    DBEditFirstName: TDBEdit;
    DBEditMiddleName: TDBEdit;
    DBEditLastName: TDBEdit;
    DBEditDateOfBirth: TDBEdit;
    DBImagePhoto: TDBImage;
    DBEditHomeAddress: TDBEdit;
    DBEditICNumber: TDBEdit;
    DBEditICDateOfIssue: TDBEdit;
    DBEditICDateOfExpiry: TDBEdit;
    ButtonSelectPhoto: TButton;
    PanelHeader: TPanel;
    BevelHeader: TBevel;
    SpeedButtonFindPerson: TSpeedButton;
    Bevel5: TBevel;
    DBNavigator: TDBNavigator;
    BitBtnSettlements: TBitBtn;
    DBEditSettlement: TDBEdit;
    DBComboBoxMaritalStatus: TDBComboBox;
    DBComboBoxTypeIDNumber: TDBComboBox;
    DBGridPersonContacts: TDBGrid;
    BitBtnOk: TBitBtn;
    BitBtnCancel: TBitBtn;
    DataSetPersons: TADODataSet;
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
    DataSourcePersons: TDataSource;
    OpenPictureDialog: TOpenPictureDialog;
    DataSetSettlement: TADODataSet;
    DataSetSettlementPkSettlement: TAutoIncField;
    DataSetSettlementSettlement: TStringField;
    DataSourceSettlement: TDataSource;
    DataSourcePersonContacts: TDataSource;
    DataSetPersonContacts: TADODataSet;
    DataSetPersonContactsPkPersonContact: TAutoIncField;
    DataSetPersonContactsFkPerson: TIntegerField;
    DataSetPersonContactsCType: TWideStringField;
    DataSetPersonContactsContact: TWideStringField;
    BitBtnDeveloper: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure ButtonSelectPhotoClick(Sender: TObject);
    procedure BitBtnSettlementsClick(Sender: TObject);
    procedure DBGridPersonContactsEnter(Sender: TObject);
    procedure DataSetPersonsControlsEnter(Sender: TObject);
    procedure DataSetPersonsAfterScroll(DataSet: TDataSet);
    procedure DataSetPersonsAfterPost(DataSet: TDataSet);
    procedure SpeedButtonFindPersonClick(Sender: TObject);
    procedure BitBtnDeveloperClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PersonsForm: TPersonsForm;

implementation

{$R *.dfm}

uses CDSUnit, DataModuleUnit, SearchPersonUnit, DeveloperUnit;

procedure TPersonsForm.FormCreate(Sender: TObject);
begin
//   DataSetPersons.Open();
//   DataSetSettlement.Open();
//   DataSetPersonContacts.Open();
end;

procedure TPersonsForm.ButtonSelectPhotoClick(Sender: TObject);
begin
  if (OpenPictureDialog.Execute()) then
  begin
	 if ((DataSetPersons.State <> dsInsert) or
       (DataSetPersons.State <> dsEdit)) then
   begin
     DataSetPersons.Edit();
   end;
	 DBImagePhoto.Picture.LoadFromFile(OpenPictureDialog.FileName);
  end
end;

procedure TPersonsForm.BitBtnSettlementsClick(Sender: TObject);
begin
  var f: TCDSForm := TCDSForm.Create(Self);
  if (f.ShowModal() = mrOk) then
  begin
	 if ((DataSetPersons.State <> dsInsert) or
		   (DataSetPersons.State <> dsEdit)) then
   begin
     DataSetPersons.Edit();
   end;
	 DataSetPersonsFkSettlement.AsInteger :=
	   f.DataSetSettlementsPkSettlement.AsInteger;

	 if (DataSetPersons.State = dsInsert) then
	 begin
		//Ако се вмъква нов запис все още няма записана стойност за
		//DataSetPersonsFkSettlement и няма да се покаже нищо,
		//макар, че потребителя ще очаква да види стойност в полето
		//DBEditSettlement, затова временно ще бъде генерирана такава,
		//стойност която ще бъде същата след като се съхрани
		//текущия запис в таблицата Persons.
		var SettlementValue: String :=
		f.DataSetSettlementsSType.AsString + ' ' +
		f.DataSetSettlementsSName.AsString + ', област ' +
		f.DataSetDistrictsDName.AsString;
		DBEditSettlement.Text := SettlementValue;
	 end;
  end;
  f.Free();
end;

procedure TPersonsForm.DBGridPersonContactsEnter(Sender: TObject);
begin
  // 1) - Ако Persons.State е dsBrowse и PkPerson > 0 се свързва
  //      DBNavigatora с DataSourcePersonContacts
  if ((DataSetPersons.State = dsBrowse) and
	    (DataSetPersonsPkPerson.AsInteger > 0)) then
  begin
	  if (DBNavigator.DataSource <> DataSourcePersonContacts) then
	  begin
      DBNavigator.DataSource := DataSourcePersonContacts;
    end;
	  Exit;
  end;
  // 2) - Ако Persons.State е dsEdit и PkPerson > 0 се записват промените
  //      и след това се свързва DBNavigatora с DataSourcePersonContacts
  if ((DataSetPersons.State = dsEdit) and
	    (DataSetPersonsPkPerson.AsInteger > 0)) then
  begin
	  DataSetPersons.Post();
	  if (DBNavigator.DataSource <> DataSourcePersonContacts) then
	  begin
      DBNavigator.DataSource := DataSourcePersonContacts;
    end;
	  Exit;
  end;
  // 3) - Ако Persons.State е dsInsert се прави опит за запис,
  //      ако записването на новодобавения Person е успешно, чак тогава
  //      се свързва DBNavigatora с DataSourcePersonContacts
  if (DataSetPersons.State = dsInsert) then //сега PkPerson = NULL
  begin
	  try
		  DataSetPersons.Post();
      DataSetSettlement.Refresh();
		  //ако не възникне грешка по време на Post, се пренасочва навигатора
		  if (DBNavigator.DataSource <> DataSourcePersonContacts) then
		  begin
        DBNavigator.DataSource := DataSourcePersonContacts;
      end
	  except
	    on E: Exception do
      begin
		    //ако е възникнала грешка по време на Post,
		    //например не са въведени данни за всички not null полета, то
		    DBEditFirstName.SetFocus();
		    Application.ShowException(E);
      end;
	  end;
  end
end;

procedure TPersonsForm.DataSetPersonsControlsEnter(Sender: TObject);
begin
  if (DBNavigator.DataSource <> DataSourcePersons) then
  begin
	  DBNavigator.DataSource := DataSourcePersons;
  end
end;

procedure TPersonsForm.DataSetPersonsAfterScroll(DataSet: TDataSet);
begin
  BitBtnOk.Enabled := (DataSetPersonsPkPerson.AsInteger > 0);
end;

procedure TPersonsForm.DataSetPersonsAfterPost(DataSet: TDataSet);
begin
  BitBtnOk.Enabled := (DataSetPersonsPkPerson.AsInteger > 0);
end;

procedure TPersonsForm.SpeedButtonFindPersonClick(Sender: TObject);
begin
  var f: TSearchPersonForm := TSearchPersonForm.Create(Self);
  if (f.ShowModal() = mrOk) then
  begin
	 //Потребителят е осъществил търсене и след това е натиснал бутона ОК.
	 //Това означава, че във форамата за търсене има избан запис, в противен
	 //случай бутон ОК ще бъде забранен. Сега локализираме гражданина,
	 //като настройваме параметъра PkPerson и презареждаме набора от данни.
	 if (DataSetPersons.Active) then DataSetPersons.Close();
	 DataSetPersons.Parameters.ParamByName('PkPerson').Value :=
     f.DataSetPersonsPkPerson.Value;
	 DataSetPersons.Open();
  end;
  f.Free();
end;

procedure TPersonsForm.BitBtnDeveloperClick(Sender: TObject);
begin
  var f: TDeveloperForm := TDeveloperForm.Create(Self);
  f.ShowModal();
  f.Free();
end;

end.
