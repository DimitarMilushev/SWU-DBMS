//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "SearchPersonUnit.h"
#include "DataModuleUnit.h"
#include "DeveloperUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------


void __fastcall TForm1::FormCreate(TObject *Sender)
{
	ComboBoxOrderType->ItemIndex = 0;
	ComboBoxOptions->ItemIndex = 0;
}

//---------------------------------------------------------------------------


void __fastcall TForm1::BitBtnDeveloperClick(TObject *Sender)
{
	auto devForm = TDeveloperForm.Create
}
//---------------------------------------------------------------------------

