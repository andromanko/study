#ifndef FuzzyH
#define FuzzyH
//---------------------------------------------------------------------------
#include <math.h>
#include "Unit1.h"

//---------------------------------------------------------------------------
class TFuzzy
{
public: __fastcall TFuzzy();
        void Calibr(double a0,double b0,double a1,double b1,double a,double b);
        void FInput(int number,double x);
                //number - ����� ��������������� ����������
                //x - ������� ��������
        void SetRuleBase(int i,int j,int r,double uver);
        void OutRuleBase(TForm1 *Sender);
        void Logic(int NumInput1,int NumInput2);
        double FOutput();
        double RuleBaseS[3][3];
        int RuleBaseNMF[3][3];
        double iMF[2][3];        //������� iMF
        double c[2][3];            //�������������� �������� ������� ��������
        double sigma[3];          //3 ������� �������� �� ������ �����. ����������.
        double oMF[5];        //�������� oMF
        double oc[5];

};

extern PACKAGE TFuzzy *Fuzzy1;
//---------------------------------------------------------------------------
#endif
