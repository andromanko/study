//#include <vcl.h>
//#pragma hdrstop

#include "Robot.h"
#include "WorkSpace.h"



//---------------------------------------------------------------------------
//#pragma package(smart_init)
__fastcall TRobot::TRobot()
{
TForm2 *Form2;//Robot->SetGeomParam(20,30,10);
Width=0.6;
Lenght=0.7;
l1=0.7*Width;
FrontSonarRange=1;                // 3 метра Front
FrontSonarAngleRange=M_PI/3;      // 60 град угол расхождения Front
WallSonarRange=1.5;
WallSonarAngleRange=M_PI/6;

SetSonarParams(0,-0.0,  0,    -M_PI/6,      FrontSonarRange,FrontSonarAngleRange);//-M_PI/6);                                  //FrontLeft
SetSonarParams(1,0.0,   0,    M_PI/6,      FrontSonarRange,FrontSonarAngleRange);//M_PI/6);                                  //FrontRight
SetSonarParams(2,0.3, -Lenght+0.1,M_PI/6,      FrontSonarRange,FrontSonarAngleRange);                                 //FrontRightRight
SetSonarParams(3,-0.3,-Lenght+0.1,-M_PI/6,      FrontSonarRange,FrontSonarAngleRange);                               //FrontLeftLeft
SetSonarParams(4,-0.3,-0.1,-M_PI/2,WallSonarRange,WallSonarAngleRange);
SetSonarParams(5,-0.3,-Lenght+0.1,-M_PI/2,WallSonarRange,WallSonarAngleRange);
SetSonarParams(6,0.3,-0.1,M_PI/2,WallSonarRange,WallSonarAngleRange);
SetSonarParams(7,0.3,-Lenght+0.1,M_PI/2,WallSonarRange,WallSonarAngleRange);

X=10;
Y=3;
};
double TRobot::Detect(int j,double x,double y,TForm1 *Sender)//j - номер датчика, x,y - цель
{
        double SonarX=0,SonarY=0,SonarAlpha=0,r=0,p11=0,p12=0,ugol=0;
               SonarX=X+CosAlpha*dx[j]-SinAlpha*dy[j];
               SonarY=Y+SinAlpha*dx[j]+CosAlpha*dy[j];
        //a=atan2(sin(a),cos(a));
               SonarAlpha=atan2(sin(Alpha-angle[j]),cos(Alpha-angle[j]));
double b[3]={x-SonarX,y-SonarY,0};

     r=sqrt(b[0]*b[0]+b[1]*b[1]);               //расстояние до точки
//Sender->Edit4->Text=r;
     if (r>range[j]) return range[j];
//p11=cos(SonarAlpha);p12=-sin(SonarAlpha);
        ugol=atan2(sin(SonarAlpha+atan2(b[0]/r,b[1]/r)),cos(SonarAlpha+atan2(b[0]/r,b[1]/r)));//acos((b[0]*p11+b[1]*p12)/r);
//Sender->Edit5->Text=ugol*180/M_PI;
//Sender->Edit6->Text=SonarAlpha*180/M_PI;
//Sender->Edit7->Text=angle[j]*180/M_PI;
        if (fabs(ugol)<(anglerange[j]/2)){   return r; };
        return range[j];
        return range[j];
};
void __fastcall TRobot::RGraphics(bool c,TForm1 *Sender,double WSMaxY)
        {
Alpha=atan2(sin(Alpha),cos(Alpha));
        SinAlpha=sin(Alpha);
        CosAlpha=cos(Alpha);
        SinDAA=sin(DAlpha+Alpha);
        CosDAA=cos(DAlpha+Alpha);
       if (c==0)Sender->Image1->Canvas->Pen->Color=Sender->Color;
        else    Sender->Image1->Canvas->Pen->Color=Sender->Font->Color;
           Sender->Image1->Canvas->MoveTo(K*(X-Width/2*CosAlpha),K*(WorkSpaceMaxY-(Y-Width/2*SinAlpha)));
           Sender->Image1->Canvas->LineTo(K*(X-Width/2*CosAlpha+Lenght*SinAlpha),K*(WorkSpaceMaxY-(Y-Width/2*SinAlpha-Lenght*CosAlpha)));
           Sender->Image1->Canvas->LineTo(K*(X+Width/2*CosAlpha+Lenght*SinAlpha),K*(WorkSpaceMaxY-(Y+Width/2*SinAlpha-Lenght*CosAlpha)));
           Sender->Image1->Canvas->LineTo(K*(X+Width/2*CosAlpha),K*(WorkSpaceMaxY-(Y+Width/2*SinAlpha)));
           Sender->Image1->Canvas->LineTo(K*(X-Width/2*CosAlpha),K*(WorkSpaceMaxY-(Y-Width/2*SinAlpha)));
                Sender->Image1->Canvas->MoveTo(K*(X+l1/2*SinDAA),K*(WorkSpaceMaxY-(Y-l1/2*CosDAA)));
                Sender->Image1->Canvas->LineTo(K*(X-l1/2*SinDAA),K*(WorkSpaceMaxY-(Y+l1/2*CosDAA)));
                Sender->Image1->Canvas->Pen->Color=Sender->Font->Color;
Sender->Edit15->Text=X;
Sender->Edit16->Text=Y;
Sender->Edit17->Text=Alpha*180/M_PI;
        };
void __fastcall TRobot::Motion(double A, double Vel, TForm1 *Sender)
        {
//        здесь А - рад
        RGraphics(0,Sender,WorkSpaceMaxY);//стирание
//!!!ЗДЕСЬ ЗАДАЕТСЯ СКОРОСТЬ ПОВОРОТА РУЛЯ РОБОТА!!!
double VelDAlpha=1;
if (fabs(A)<=fabs(VelDAlpha)) DAlpha=A;
if (fabs(A)>fabs(VelDAlpha)) DAlpha=(A/fabs(A))*VelDAlpha;      
//        DAlpha=VelDAlpha;
        CosDA=cos(DAlpha);
        SinDA=sin(DAlpha);
        double dt=1,dr=0,dx,dy,dA;
        Sender->Image1->Repaint();
dr=Vel*dt;
dx=-SinDAA*dr;
dy=CosDAA*dr;
//Sender->Edit1->Text=dr;Sender->Edit2->Text=dx;Sender->Edit3->Text=dy;
dA=asin(Vel*dt/Lenght*sin(M_PI-DAlpha));
Alpha=Alpha+dA;
X=X+dx;
Y=Y+dy;
        RGraphics(1,Sender,WorkSpaceMaxY);
        Sender->Image1->Repaint();
    //    TargetDistance[0]=1000;        TargetDistance[1]=1000;
};
void __fastcall TRobot::RSGraphics(bool c,TForm2 *Sender)
{
double K=50,X=Sender->Image1->Width/2/K,Y=Sender->Image1->Height*0.5/K,WorkSpaceMaxY=Sender->Image1->Height/K;
Alpha=0;DAlpha=0;
        SinAlpha=sin(Alpha);
        CosAlpha=cos(Alpha);
        SinDAA=sin(DAlpha+Alpha);
        CosDAA=cos(DAlpha+Alpha);
       if (c==0)Sender->Image1->Canvas->Pen->Color=Sender->Color;
        else    Sender->Image1->Canvas->Pen->Color=Sender->Font->Color;
           Sender->Image1->Canvas->MoveTo(K*(X-Width/2*CosAlpha),K*(WorkSpaceMaxY-(Y-Width/2*SinAlpha)));
           Sender->Image1->Canvas->LineTo(K*(X-Width/2*CosAlpha+Lenght*SinAlpha),K*(WorkSpaceMaxY-(Y-Width/2*SinAlpha-Lenght*CosAlpha)));
           Sender->Image1->Canvas->LineTo(K*(X+Width/2*CosAlpha+Lenght*SinAlpha),K*(WorkSpaceMaxY-(Y+Width/2*SinAlpha-Lenght*CosAlpha)));
           Sender->Image1->Canvas->LineTo(K*(X+Width/2*CosAlpha),K*(WorkSpaceMaxY-(Y+Width/2*SinAlpha)));
           Sender->Image1->Canvas->LineTo(K*(X-Width/2*CosAlpha),K*(WorkSpaceMaxY-(Y-Width/2*SinAlpha)));
                Sender->Image1->Canvas->MoveTo(K*(X+l1/2*SinDAA),K*(WorkSpaceMaxY-(Y-l1/2*CosDAA)));
                Sender->Image1->Canvas->LineTo(K*(X-l1/2*SinDAA),K*(WorkSpaceMaxY-(Y+l1/2*CosDAA)));
                Sender->Image1->Canvas->Pen->Color=Sender->Font->Color;
//датчики//
double x,y,alfa,beta,b,l;
double rot[3][3];
double alf1[3][3];
double alf[3][3];
double rot1[3][3];
double rot2[3][3];
double q=10.7,w=4;
Sender->Image1->Canvas->Ellipse(K*(q)-3,K*(w)-3,K*(q)+3,K*(w)+3);
for(int i=0;i<8;i++)
{
Sender->Image1->Canvas->Pen->Color=clRed;
Sender->Image1->Canvas->Ellipse(K*(X+Robot->dx[i])-3,K*(Y-Robot->dy[i])-3,K*(X+Robot->dx[i])+3,K*(Y-Robot->dy[i])+3);
Sender->Image1->Canvas->MoveTo(K*(X+Robot->dx[i]),K*(Y-Robot->dy[i]));
Sender->Image1->Canvas->LineTo(K*(X+Robot->dx[i]+Robot->range[i]*cos(M_PI/2-Robot->angle[i])),K*(Y-Robot->dy[i]-Robot->range[i]*sin(M_PI/2+Robot->angle[i])));
Sender->Image1->Canvas->Pen->Color=Form2->Font->Color;
Sender->Image1->Canvas->MoveTo(K*(X+Robot->dx[i]),K*(Y-Robot->dy[i]));
Sender->Image1->Canvas->LineTo(
        K*(X+Robot->dx[i]+Robot->range[i]*cos(M_PI/2-Robot->angle[i]-Robot->anglerange[i]/2)),
        K*(Y-Robot->dy[i]-Robot->range[i]*sin(M_PI/2-Robot->angle[i]-Robot->anglerange[i]/2)));
Sender->Image1->Canvas->MoveTo(K*(X+Robot->dx[i]),K*(Y-Robot->dy[i]));
Sender->Image1->Canvas->LineTo(
        K*(X+Robot->dx[i]-Robot->range[i]*cos(M_PI/2+Robot->angle[i]-Robot->anglerange[i]/2)),
        K*(Y-Robot->dy[i]-Robot->range[i]*sin(M_PI/2+Robot->angle[i]-Robot->anglerange[i]/2)));
};
};
