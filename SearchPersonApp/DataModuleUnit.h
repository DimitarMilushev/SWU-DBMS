//---------------------------------------------------------------------------

#ifndef DataModuleUnitH
#define DataModuleUnitH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Data.DB.hpp>
#include <Data.Win.ADODB.hpp>
//---------------------------------------------------------------------------
class TDM : public TDataModule
{
__published:	// IDE-managed Components
	TADOConnection *Connection;
private:	// User declarations
public:		// User declarations
	__fastcall TDM(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TDM *DM;
//---------------------------------------------------------------------------
#endif
