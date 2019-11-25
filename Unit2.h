//---------------------------------------------------------------------------

#ifndef Unit2H
#define Unit2H
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ExtCtrls.hpp>
#include <Graphics.hpp>
#include "CSPIN.h"
//---------------------------------------------------------------------------
class TForm2 : public TForm
{
__published:	// IDE-managed Components
        TButton *Button1;
        TLabel *Label1;
        TLabel *Label2;
        TEdit *Edit1;
        TEdit *Edit2;
        TButton *Button2;
        TEdit *Edit3;
        TImage *Image1;
        TLabel *Label5;
        TEdit *Edit4;
        TLabel *Label6;
        TLabel *Label3;
        TEdit *Edit6;
        TEdit *Edit7;
        TEdit *Edit8;
        TLabel *Label4;
        TLabel *Label7;
        TLabel *Label8;
        TCSpinEdit *CSpinEdit1;
        TButton *Button3;
        TLabel *Label9;
        TLabel *Label10;
        TLabel *Label11;
        TLabel *Label12;
        TLabel *Label13;
        TLabel *Label14;
        TLabel *Label15;
        TLabel *Label16;
        void __fastcall Button1Click(TObject *Sender);
        void __fastcall Button2Click(TObject *Sender);
        void __fastcall Button3Click(TObject *Sender);
        void __fastcall CSpinEdit1Change(TObject *Sender);
private:	// User declarations
        int i;
public:		// User declarations
        __fastcall TForm2(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm2 *Form2;
//---------------------------------------------------------------------------
#endif
