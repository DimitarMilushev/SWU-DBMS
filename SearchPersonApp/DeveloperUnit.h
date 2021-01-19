//---------------------------------------------------------------------------

#ifndef DeveloperUnitH
#define DeveloperUnitH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.Buttons.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Imaging.pngimage.hpp>
//---------------------------------------------------------------------------
class TDeveloperForm : public TForm
{
__published:	// IDE-managed Components
	TImage *Image;
	TLabel *LabelDev;
	TPanel *Panel;
	TLabel *ProductName;
	TLabel *Version;
	TLabel *Copyright;
	TBitBtn *BitBtnOK;
private:	// User declarations
public:		// User declarations
	__fastcall TDeveloperForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TDeveloperForm *DeveloperForm;
//---------------------------------------------------------------------------
#endif
