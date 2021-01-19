//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "CDSUnit.h"
#include "DataModule.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TCDSName *CDSName;
//---------------------------------------------------------------------------
__fastcall TCDSName::TCDSName(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
