//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit2.h"
#include "Unit1.h"
#include "Robot.h"
#include <math.h>
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "CSPIN"
#pragma resource "*.dfm"
TForm2 *Form2;
//---------------------------------------------------------------------------
__fastcall TForm2::TForm2(TComponent* Owner)
        : TForm(Owner)
{
Image1->Canvas->Brush->Color=Form1->Color;
Image1->Canvas->Pen->Color=Form1->Font->Color;
Image1->Canvas->Rectangle(0,0,Image1->Width,Image1->Height);
DecimalSeparator='.';
Edit1->Text=Robot->Width;
Edit2->Text=Robot->Lenght;
int i=CSpinEdit1->Text.ToInt();
Edit6->Text=Robot->dx[i];
Edit7->Text=Robot->dy[i];
Edit8->Text=Robot->angle[i]*180/M_PI;
Edit3->Text=Robot->range[i];
Edit4->Text=Robot->anglerange[i]*180/M_PI;
Robot->RSGraphics(1,Form2);
}
//---------------------------------------------------------------------------

void __fastcall TForm2::Button1Click(TObject *Sender)
{
Form1->Show();
Form2->Close();
}
//---------------------------------------------------------------------------
void __fastcall TForm2::Button2Click(TObject *Sender)
{
Form1->Show();
Form2->Close();
}
//---------------------------------------------------------------------------
void __fastcall TForm2::Button3Click(TObject *Sender)
{
Robot->Width=Edit1->Text.ToDouble();
Robot->Lenght=Edit2->Text.ToDouble();
i=CSpinEdit1->Text.ToInt();
Robot->dx[i]=Edit6->Text.ToDouble();
Robot->dy[i]=Edit7->Text.ToDouble();
Robot->angle[i]=Edit8->Text.ToDouble()*M_PI/180;
Robot->range[i]=Edit3->Text.ToDouble();
Robot->anglerange[i]=Edit4->Text.ToDouble()*M_PI/180;

Image1->Canvas->Rectangle(0,0,Image1->Width,Image1->Height);
Robot->RSGraphics(1,Form2);
Image1->Repaint();
}
//---------------------------------------------------------------------------

void __fastcall TForm2::CSpinEdit1Change(TObject *Sender)
{
i=CSpinEdit1->Text.ToInt();
Edit6->Text=Robot->dx[i];
Edit7->Text=Robot->dy[i];
Edit8->Text=Robot->angle[i]*180/M_PI;
Edit3->Text=Robot->range[i];
Edit4->Text=Robot->anglerange[i]*180/M_PI;
}
//---------------------------------------------------------------------------

