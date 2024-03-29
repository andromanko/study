//---------------------------------------------------------------------------
#ifndef Unit1H
#define Unit1H
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ExtCtrls.hpp>
#include <conio.h>
#include <math.h>
#include "CSPIN.h"
#include <Grids.hpp>
//---------------------------------------------------------------------------

const int K=20;                         //���������� �����������
bool motion=1;
bool pause=0;

//const n=3;
const WorkSpaceMaxX=20;
const WorkSpaceMaxY=20;
const dx=WorkSpaceMaxX/3;               //���������� ��������� �� X
const dy=WorkSpaceMaxY/3;               // �� Y
const AngleMin=-45;
const AngleMax=45;                      //������� ����
short int Oscilator=0;

double Range(double x0,double y0,double x1,double y1);
class TForm1 : public TForm
{
__published:	// IDE-managed Components
        TButton *Button1;
        TImage *Image1;
        TButton *Button3;
        TButton *Button6;
        TButton *Button7;
        TGroupBox *GroupBox1;
        TButton *Button2;
        TEdit *Edit8;
        TEdit *Edit9;
        TLabel *Label1;
        TButton *Button4;
        TButton *Button5;
        TButton *Button8;
        TCheckBox *CheckBox1;
        TCSpinEdit *CSpinEdit3;
        TLabel *Label4;
        TEdit *Edit10;
        TLabel *Label5;
        TCheckBox *CheckBox2;
        TEdit *Edit11;
        TEdit *Edit13;
        TEdit *Edit14;
        TLabel *Label7;
        TLabel *Label8;
        TButton *Button9;
        TButton *Button10;
        TButton *Button11;
        TEdit *Edit18;
        TLabel *Label2;
        TLabel *Label3;
        TLabel *Label12;
        TEdit *Edit20;
        TLabel *Label13;
        TEdit *Edit21;
        TLabel *Label14;
        TLabel *Label15;
        TGroupBox *GroupBox2;
        TEdit *Edit15;
        TEdit *Edit16;
        TEdit *Edit17;
        TEdit *Edit22;
        TLabel *Label6;
        TLabel *Label9;
        TLabel *Label10;
        TLabel *Label11;
        TGroupBox *GroupBox3;
        TEdit *Edit1;
        TEdit *Edit2;
        TEdit *Edit3;
        TEdit *Edit4;
        TEdit *Edit5;
        TEdit *Edit6;
        TEdit *Edit7;
        TEdit *Edit12;
        TLabel *Label16;
        TLabel *Label17;
        TLabel *Label18;
        TButton *Button13;
        TGroupBox *GroupBox4;
        TEdit *Edit23;
        TEdit *Edit24;
        TEdit *Edit25;
        TEdit *Edit26;
        TEdit *Edit27;
        TLabel *Label19;
        TLabel *Label20;
        TLabel *Label21;
        TCSpinEdit *CSpinEdit1;
        TCSpinEdit *CSpinEdit2;
        TLabel *Label22;
        TLabel *Label23;
        TButton *Button14;
        TButton *Button15;
        TButton *Button16;
        TButton *Button17;
        TButton *Button18;
        TEdit *Edit19;
        TEdit *Edit28;
        TCheckBox *CheckBox3;
        TCheckBox *CheckBox4;
        TCheckBox *CheckBox5;
        TLabel *Label24;
        TEdit *Edit29;
        TLabel *Label25;
        TLabel *Label26;
        TButton *Button12;
        TGroupBox *GroupBox5;
        TStringGrid *StringGrid1;
        TStringGrid *StringGrid2;
        TStringGrid *StringGrid3;
        TStringGrid *StringGrid4;
        TLabel *Label27;
        TLabel *Label28;
        TLabel *Label29;
        TGroupBox *GroupBox6;
        TGroupBox *GroupBox7;
        TStringGrid *StringGrid5;
        TStringGrid *StringGrid6;
        TStringGrid *StringGrid7;
        TStringGrid *StringGrid8;
        TStringGrid *StringGrid9;
        TStringGrid *StringGrid10;
        TStringGrid *StringGrid11;
        TStringGrid *StringGrid12;
        TLabel *Label30;
        TLabel *Label31;
        TLabel *Label32;
        TLabel *Label33;
        TLabel *Label34;
        TLabel *Label35;
        TButton *Button19;
        TLabel *Label36;
        TLabel *Label37;
        TLabel *Label38;
        TLabel *Label39;
        TLabel *Label40;
        TLabel *Label41;
        TLabel *Label42;
        TLabel *Label43;
        TLabel *Label44;
        TLabel *Label45;
        TLabel *Label46;
        TLabel *Label47;
        TLabel *Label48;
        TLabel *Label49;
        TLabel *Label50;
        TCheckBox *CheckBox6;
        TButton *Button20;
        TButton *Button21;
        TEdit *Edit30;
        TEdit *Edit31;
        TEdit *Edit32;
        TLabel *Label51;
        TLabel *Label52;
        TEdit *Edit33;
        TEdit *Edit34;
        TEdit *Edit35;
        TEdit *Edit36;
        TEdit *Edit37;
        TEdit *Edit38;
        TEdit *Edit39;
        TLabel *Label53;
        TButton *Button22;
        TEdit *Edit40;
        TLabel *Label54;
        TLabel *Label56;
        TCSpinEdit *CSpinEdit4;
        TCSpinEdit *CSpinEdit5;
        void __fastcall Button2Click(TObject *Sender);
        void __fastcall Button3Click(TObject *Sender);
        void __fastcall Button1Click(TObject *Sender);
        void __fastcall Button5Click(TObject *Sender);
        void __fastcall Button4Click(TObject *Sender);
        void __fastcall Button6Click(TObject *Sender);
        void __fastcall Button7Click(TObject *Sender);
        void __fastcall Image1MouseMove(TObject *Sender, TShiftState Shift,
          int X, int Y);
        void __fastcall Button8Click(TObject *Sender);
        void __fastcall Button10Click(TObject *Sender);
        void __fastcall Button9Click(TObject *Sender);
        void __fastcall Image1MouseDown(TObject *Sender,
          TMouseButton Button, TShiftState Shift, int X, int Y);
        void __fastcall Button11Click(TObject *Sender);
        void __fastcall Image1MouseUp(TObject *Sender, TMouseButton Button,
          TShiftState Shift, int X, int Y);
        void __fastcall CSpinEdit1Change(TObject *Sender);
        void __fastcall Edit21Change(TObject *Sender);
        void __fastcall Button12Click(TObject *Sender);
        void __fastcall Button13Click(TObject *Sender);
        void __fastcall Button16Click(TObject *Sender);
        void __fastcall Button17Click(TObject *Sender);
        void __fastcall CSpinEdit2Change(TObject *Sender);
        void __fastcall Button18Click(TObject *Sender);
        void __fastcall Button14Click(TObject *Sender);
        void __fastcall Button15Click(TObject *Sender);
        void __fastcall CheckBox4Click(TObject *Sender);
        void __fastcall Edit29Change(TObject *Sender);
        void __fastcall Edit19Change(TObject *Sender);
        void __fastcall Edit20Change(TObject *Sender);
        void __fastcall Button19Click(TObject *Sender);
        void __fastcall Button21Click(TObject *Sender);
        void __fastcall Button20Click(TObject *Sender);
        void __fastcall Button22Click(TObject *Sender);
        void __fastcall CSpinEdit4Change(TObject *Sender);

private:	// User declarations
public:		// User declarations
        __fastcall TForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
