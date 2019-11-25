#include "WorkSpace.h"

//---------------------------------------------------------------------------
void TWorkSpace::SetObstacle(int i,int j,int k,double x,double y)
                {ObstacleX[i][j][k]=x;ObstacleY[i][j][k]=y;};
//---------------------------------------------------------------------------
void TWorkSpace::SetTarget(double Tx,double Ty,double Ta)
                {TargetX=Tx,TargetY=Ty;TargetAngle=Ta;};
//---------------------------------------------------------------------------
void __fastcall TWorkSpace::Graphics(TForm1 *Sender)
                                //Çäåñü è ïðîèñõîäèò êîíâåðòàöèÿ ÌÅÒÐÛ->ÏÈÊÑÅËÈ
{
    Sender->Image1->Canvas->Rectangle(0,0,WorkSpaceMaxX*K,WorkSpaceMaxY*K);
        //ÂÛÂÎÄ ÐÀÁ.ÏÐÎÑÒÐÀÍÑÒÂÀ
       Sender->Image1->Canvas->Pen->Color=clSilver;
for(int i=0;i<10;i++)
{
        Sender->Image1->Canvas->MoveTo(2*K*i,0);
        Sender->Image1->Canvas->LineTo(2*K*i,Sender->Image1->Height);
        Sender->Image1->Canvas->MoveTo(0,2*K*i);
        Sender->Image1->Canvas->LineTo(Sender->Image1->Width,2*K*i);
};
Sender->Image1->Canvas->Pen->Color=Sender->Font->Color;
    for(int i=0;i<10;i++)
        for(int j=0;j<10;j++)
                    for(int k=0;k<WorkSpace->countO[i][j];k++)
                           Sender->Image1->Canvas->Ellipse(K*ObstacleX[i][j][k]-1,K*(WorkSpaceMaxY-ObstacleY[i][j][k])-1,K*ObstacleX[i][j][k]+1,K*(WorkSpaceMaxY-ObstacleY[i][j][k])+1);
};
//---------------------------------------------------------------------------
void TWorkSpace::PromTarget(double x,double y,TForm1 *Sender)
{
Sender->Image1->Canvas->Ellipse(K*x-3,K*(WorkSpaceMaxY-y)-3,K*x,K*(WorkSpaceMaxY-y)+3);
};
//---------------------------------------------------------------------------
void TWorkSpace::Line(double xb,double yb,double xe,double ye)
{
        if (fabs(xb-xe)<fabs(yb-ye))
        {       double x;int i,j;
                if (ye<yb) {double yp=ye;ye=yb;yb=yp;};
                for(double y=yb;y<=ye;y=y+0.1)
                {
                x=xb+(y-yb)*(xe-xb)/(ye-yb);
                i=x/2;
                j=y/2;
                WorkSpace->ObstacleX[i][j][WorkSpace->countO[i][j]]=x;
                WorkSpace->ObstacleY[i][j][WorkSpace->countO[i][j]]=y;
                WorkSpace->countO[i][j]++;
                };
         };
if (fabs(xb-xe)>=fabs(yb-ye))
         {
                double y;int i,j;
                if (xe<xb) {double xp=xe;xe=xb;xb=xp;};
                for(double x=xb;x<=xe;x=x+0.1)
                {
                y=yb+(x-xb)*(ye-yb)/(xe-xb);
                i=x/2;
                j=y/2;
//                Edit13->Text=i;
 //               Edit14->Text=j;
                WorkSpace->ObstacleX[i][j][WorkSpace->countO[i][j]]=x;
                WorkSpace->ObstacleY[i][j][WorkSpace->countO[i][j]]=y;
                WorkSpace->countO[i][j]++;
                };
         };
};
//---------------------------------------------------------------------------
void TWorkSpace::Rect(double xb,double yb,double xe,double ye)
{
Line(xb,yb,xe,yb);
Line(xb,yb,xb,ye);
Line(xe,ye,xe,yb);
Line(xe,ye,xb,ye);
};
//---------------------------------------------------------------------------

void __fastcall TWorkSpace::GraphTarget(double x,double y,int c,TForm1 *Sender)
{
       Sender->Image1->Canvas->Pen->Color=c;
       Sender->Image1->Canvas->Ellipse(K*x-3,K*(WorkSpaceMaxY-y)-3,K*x+3,K*(WorkSpaceMaxY-y)+3);
       Sender->Image1->Canvas->Pen->Color=Sender->Font->Color;
}
