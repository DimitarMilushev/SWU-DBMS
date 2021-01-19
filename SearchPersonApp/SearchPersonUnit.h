//---------------------------------------------------------------------------

#ifndef SearchPersonUnitH
#define SearchPersonUnitH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Data.DB.hpp>
#include <Data.Win.ADODB.hpp>
#include <System.ImageList.hpp>
#include <Vcl.Buttons.hpp>
#include <Vcl.ComCtrls.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.ImgList.hpp>
#include <Vcl.DBGrids.hpp>
#include <Vcl.Grids.hpp>
//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// IDE-managed Components
	TBevel *Bevel1;
	TBevel *Bevel2;
	TBevel *Bevel3;
	TLabel *LabelSearch;
	TComboBox *ComboBoxFields;
	TComboBox *ComboBoxFieldsBG;
	TComboBox *ComboBoxOptions;
	TEdit *EditSearchValue;
	TBitBtn *BitBtnSearch;
	TLabel *LabelOrderBy;
	TComboBox *ComboBoxOrderBG;
	TComboBox *ComboBoxOrder;
	TImageList *ImageList;
	TComboBoxEx *ComboBoxOrderType;
	TADODataSet *DataSetPersons;
	TAutoIncField *DataSetPerson;
	TWideStringField *DataSetPersonsTypeIdNumber;
	TWideStringField *DataSetPersonsIDNumber;
	TWideStringField *DataSetPersonsFirstName;
	TWideStringField *DataSetPersonsMiddleName;
	TWideStringField *DataSetPersonsLastName;
	TWideStringField *DataSetPersonsICNumber;
	TDataSource *DataSourcePersons;
	TDBGrid *DBGrid1;
	TBitBtn *BitBtnDeveloper;
	TBitBtn *BitBtnOk;
	TBitBtn *BitBtnCancel;
	void __fastcall FormCreate(TObject *Sender);
	void __fastcall BitBtnDeveloperClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
