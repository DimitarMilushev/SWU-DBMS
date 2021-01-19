//---------------------------------------------------------------------------

#ifndef CDSUnitH
#define CDSUnitH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Data.DB.hpp>
#include <Data.Win.ADODB.hpp>
//---------------------------------------------------------------------------
class TCDSName : public TForm
{
__published:	// IDE-managed Components
	TADODataSet *DataSetCountries;
	TADODataSet *DataSetDistricts;
private:	// User declarations
public:		// User declarations
	__fastcall TCDSName(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TCDSName *CDSName;
//---------------------------------------------------------------------------
#endif
