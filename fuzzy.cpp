#include <vcl.h>
#pragma hdrstop

#include "fuzzy.h"
#include "Robot.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
//#pragma resource "*.dfm"
//---------------------------------------------------------------------------
__fastcall TFuzzy::TFuzzy()
{
        for(int i=0;i<3;i++)
                for(int j=0;j<3;j++)
                        SetRuleBase(i,j,1,0);
//double max=Robot->SonarRange;

             for(int i=0;i<3;i++)oMF[i]=0;
};
//---------------------------------------------------------------------------
void TFuzzy::Calibr(double a0,double b0,double a1,double b1,double a,double b)
{       c[0][0]=a0;             c[1][0]=a1;
        c[0][1]=(a0+b0)/2;      c[1][1]=(a1+b1)/2;
        c[0][2]=b0;             c[1][2]=b1;
oc[0]=a;
        oc[2]=(a+b)/2;
                oc[4]=b;
                        oc[3]=(oc[4]+oc[2])/2;
                                oc[1]=(oc[0]+oc[2])/2;
        sigma[0]=(b0-a0)*0.233;//271.713/1000*max;
        sigma[1]=(b1-a1)*0.233;
        sigma[2]=(b-a)*0.233;
};
//---------------------------------------------------------------------------
void TFuzzy::FInput(int number,double x)
{
for(int i=0;i<3;i++)
   iMF[number][i]=exp(-(((x-c[number][i])/2/sigma[number])*((x-c[number][i])/2/sigma[number])));
};
//---------------------------------------------------------------------------
void TFuzzy::SetRuleBase(int i,int j,int r,double uver)
{
     RuleBaseS[i][j]=uver;
     RuleBaseNMF[i][j]=r;
};
//---------------------------------------------------------------------------
void TFuzzy::OutRuleBase(TForm1 *Sender)
{
   for(int i=0;i<3;i++)
   for(int j=0;j<3;j++)
   {
        Sender->Edit1->Text=i;
        Sender->Edit2->Text=j;
        Sender->Edit3->Text=RuleBaseNMF[i][j];
        Sender->Edit4->Text=RuleBaseS[i][j];
   };
};
//---------------------------------------------------------------------------
void TFuzzy::Logic(int NumInput1,int NumInput2)
{
   for(int i=0;i<5;i++)oMF[i]=0;
   for(int i=0;i<3;i++)
   for(int j=0;j<3;j++)
           oMF[RuleBaseNMF[i][j]]+=RuleBaseS[i][j]*
                                iMF[NumInput1][i]*
                                iMF[NumInput2][j];


};
//---------------------------------------------------------------------------
double TFuzzy::FOutput()
{
double cisl=0;double znam=0;
        for(int i=0;i<5;i++)
        {
                cisl+=oMF[i]*oc[i];
                znam+=oMF[i];
        };
        if (znam!=0)return cisl/znam;
        return 0;
};
//---------------------------------------------------------------------------
