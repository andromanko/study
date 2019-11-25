//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
#include "fuzzy.h"
#include "Robot.h"
#include "WorkSpace.h"
#include "Unit2.h"
#include <iostream.h>
#include <fstream.h>
#include "Unit3.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "CSPIN"
#pragma resource "*.dfm"
char WSdata[]="WorkSpa0.dat";
char LogicName[]="LogicDt0.dat";
char progr[]="Program0.dat";
TForm1 *Form1;
TWorkSpace *WorkSpace;
TRobot *Robot;
TFuzzy *FuzzyFront1;
TFuzzy *FuzzyWallLeft;
TFuzzy *FuzzyWallRight;
TFuzzy *FuzzyRealTarget;
//TFuzzy *Fuzzy2;
//РАЗМЕРЫ В МЕТРАХ!!!
double da=0;
bool Orient=1;
void SystemDatchiks();
void SystemMotors();
void SystemLogic();
void ScreenRefresh();
void LogicScreenUpdate();
void ScreenLogicUpdate();
double Velocity(double Vel);
//---
int h=0;
int t=0;
bool DemoMotion=1;
double RobotSonarRange[8];//чтобы восстановить в конце движения
double WorkSpaceTargetX,WorkSpaceTargetY;
double DeltaAngleApproach;//[рад]
double DeltaLenghtApproach;//[м]DeltaLenghtApproach
double MirrorTargetRange=0;
double TimerRuleCorrectSet=10;
double CalibratorFuzzy[6];
bool FlagPerecalibrovki=0;
bool FlagFuzzyFront=1;//1-состояние1; 0 - состояние 2;
short int CounterFlagChange=0;
unsigned int FuzzyTimer=0;
unsigned short int Mode=9;
double ConstPogrMnimTarget=0.1;
double ConstPogrUgolGrad=3;
//double time=0;
int LastTickCount;
//---------------------------------------------------------------------------
double Velocity(double Vel)
{

//velocity_mgn=velocity-exp(-(GetTickCount()-LastTickCount))
//return ;
};
//---------------------------------------------------------------------------
void SystemDatchiks()
{



};
//---------------------------------------------------------------------------
void SystemMotors()
{


};
//---------------------------------------------------------------------------
void SystemLogic()
{


};
//---------------------------------------------------------------------------
void ScreenRefresh()
{


};
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
        : TForm(Owner)
{
WorkSpace=new TWorkSpace;
Robot=new TRobot;
FuzzyFront1=new TFuzzy;                              // калибровка перед вызовом
FuzzyWallLeft=new TFuzzy;
FuzzyWallRight=new TFuzzy;
FuzzyRealTarget=new TFuzzy;
Image1->Canvas->Brush->Color=Form1->Color;
Image1->Canvas->Pen->Color=Form1->Font->Color;
Image1->Canvas->Rectangle(0,0,1000,1000);
Button11->Caption=="Rectangle";
Button5Click(Form1);


                                //задание базы знаний табл2стр8перевода
FuzzyFront1->SetRuleBase(0,0,2,1);FuzzyFront1->SetRuleBase(0,1,1,1);FuzzyFront1->SetRuleBase(0,2,0,1);
FuzzyFront1->SetRuleBase(1,0,3,1);FuzzyFront1->SetRuleBase(1,1,2,1);FuzzyFront1->SetRuleBase(1,2,1,1);
FuzzyFront1->SetRuleBase(2,0,4,1);FuzzyFront1->SetRuleBase(2,1,3,1);FuzzyFront1->SetRuleBase(2,2,2,1);

FuzzyWallLeft->SetRuleBase(0,0,3,1);FuzzyWallLeft->SetRuleBase(0,1,1,1);FuzzyWallLeft->SetRuleBase(0,2,0,1);
FuzzyWallLeft->SetRuleBase(1,0,4,1);FuzzyWallLeft->SetRuleBase(1,1,2,1);FuzzyWallLeft->SetRuleBase(1,2,0,1);
FuzzyWallLeft->SetRuleBase(2,0,4,1);FuzzyWallLeft->SetRuleBase(2,1,3,1);FuzzyWallLeft->SetRuleBase(2,2,1,1);

FuzzyWallRight->SetRuleBase(0,0,1,1);FuzzyWallRight->SetRuleBase(0,1,3,1);FuzzyWallRight->SetRuleBase(0,2,4,1);
FuzzyWallRight->SetRuleBase(1,0,0,1);FuzzyWallRight->SetRuleBase(1,1,2,1);FuzzyWallRight->SetRuleBase(1,2,4,1);
FuzzyWallRight->SetRuleBase(2,0,0,1);FuzzyWallRight->SetRuleBase(2,1,1,1);FuzzyWallRight->SetRuleBase(2,2,3,1);

FuzzyRealTarget->SetRuleBase(0,0,0,1);FuzzyRealTarget->SetRuleBase(1,0,2,1);FuzzyRealTarget->SetRuleBase(2,0,2,1);
FuzzyRealTarget->SetRuleBase(0,1,0,1);FuzzyRealTarget->SetRuleBase(1,1,2,1);FuzzyRealTarget->SetRuleBase(2,1,2,1);
FuzzyRealTarget->SetRuleBase(0,2,0,1);FuzzyRealTarget->SetRuleBase(1,2,2,1);FuzzyRealTarget->SetRuleBase(2,2,2,1);

FuzzyFront1->Calibr(0,Robot->range[0],0,Robot->range[1],-180*M_PI/180,180*M_PI/180);
FuzzyWallLeft->Calibr(0,Robot->range[4],0,Robot->range[5],-180*M_PI/180,180*M_PI/180);
FuzzyWallRight->Calibr(0,Robot->range[6],0,Robot->range[7],-180*M_PI/180,180*M_PI/180);
//CalibratorFuzzy[0]=0;CalibratorFuzzy[1]=Robot->range[0];CalibratorFuzzy[2]=0;CalibratorFuzzy[3]=Robot->range[1];CalibratorFuzzy[4]=-180*M_PI/180;CalibratorFuzzy[5]=180*M_PI/180;
LogicScreenUpdate();

DecimalSeparator='.';
DeltaAngleApproach=Edit29->Text.ToDouble()*M_PI/180;
DeltaLenghtApproach=Edit19->Text.ToDouble();
Orient=CheckBox4->State;
MirrorTargetRange=Edit20->Text.ToDouble();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button2Click(TObject *Sender)
{
Button2->Caption="PutTarget";
WorkSpace->Graphics(Form1);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button3Click(TObject *Sender)
{

double Timer_RuleCorrect=0;
double aa,bb;//для режима Obstacle
double RangeRobotTarget;
for(int i=0;i<8;i++) RobotSonarRange[i]=Robot->range[i];
GroupBox1->Visible=0;
GroupBox2->Visible=1;
GroupBox3->Visible=1;
Button4->Caption="WorkSpaceEdit";
motion=1;
Robot->RGraphics(1,Form1,WorkSpaceMaxY);
//калибровка нечетких звеньев
//FuzzyFront1->Calibr(0,Robot->range[0],0,Robot->range[1],-30,30);
//FuzzyWallLeft->Calibr(0,Robot->range[4],0,Robot->range[5],-30,30);
//FuzzyWallRight->Calibr(0,Robot->range[6],0,Robot->range[7],-30,30);


//double AI=30;double AO=30;
//FuzzyRealTarget->Calibr(-AI,AI,-AI,AI,-AO,AO);

double a=0;                                                      // угол, поворота руля
int MSec;

double TD[8]={0,0,0,0,0,0,0,0};
for(int i=0;i<8;i++)TD[i]=Robot->range[i];
                                               // расстояния до целей передних датчиков
double DD[8]={0,0,0,0,0,0,0,0};
//Robot->Alpha=0;
Robot->DAlpha=0;
WorkSpace->Graphics(Form1);
Robot->RGraphics(1,Form1,WorkSpaceMaxY);
da=0;

if (Orient==0)MirrorTargetRange=0;
else MirrorTargetRange=Edit20->Text.ToDouble();
double RobotTargetX=WorkSpace->TargetX-MirrorTargetRange*sin(WorkSpace->TargetAngle);
double RobotTargetY=WorkSpace->TargetY-MirrorTargetRange*cos(WorkSpace->TargetAngle);

int TargetMode=0;
Mode=6;
if (Orient==0) TargetMode=3;
double chutchut=0;
double velocity;
int ii,jj,ib,jb,ie,je;

bool f=0;       //флаг изменения радиуса действия датчиков
double b[3]={0,0,0};
double r,ugol;
//---------------------------------------------------НАЧАЛО-ДВИЖЕНИЯ------------
double time=0;
double StartTickCount=GetTickCount();
if (Orient==1)WorkSpace->GraphTarget(WorkSpace->TargetX,WorkSpace->TargetY,clBlack,Form1);
WorkSpace->GraphTarget(WorkSpaceTargetX,WorkSpaceTargetY,clRed,Form1);
if ((Orient==0)&&(CheckBox5->State==1)) WorkSpace->GraphTarget(WorkSpace->TargetX,WorkSpace->TargetY,clBlack,Form1);

short int Timer0Datchik=5;
short int Timer0Motor=5;
short int Timer0Screen=5;
short int Timer0Logic=5;

short int TimerDatchik=Timer0Datchik-4;
short int TimerMotor=Timer0Motor-2;
short int TimerScreen=Timer0Screen-1;
short int TimerLogic=Timer0Logic-3;
LastTickCount=GetTickCount();
for(;motion==1;)
{
        MSec=GetTickCount();                                    //для реализации realtime
        while (GetTickCount()-MSec<=1) Application->ProcessMessages();
//velocity=CSpinEdit3->Value;
time=((int)(GetTickCount()-StartTickCount)/100);

if (TimerDatchik--==0)
{
        TimerDatchik=Timer0Datchik;
        ///!!!Радиус действия датчиков Выполнено!//меньше расстояния до цели!!!
        //RangeRobotTarget=Range(Robot->X,Robot->Y,WorkSpace->TargetX,WorkSpace->TargetY);
        RangeRobotTarget=Range(Robot->X,Robot->Y,RobotTargetX,RobotTargetY);
        f=0;//флаг изменения радиуса действия датчиков
        //радиус действия датчиков------------------------
        for(int i=0;i<8;i++)
                if (Robot->range[i]>RangeRobotTarget)
                {
                        Robot->range[i]=RangeRobotTarget;
                        f=1;  //флаг того, что изменились радиусы датчиков
                };
        //detect obstacles            // перебирается 9 квадратов по n препятствий в каждом
        //определить в какой области в каком квадрате находится робот
        ii=Robot->X/2; jj=Robot->Y/2;
        ib=ii-1; ie=ii+1; jb=jj-1; je=jj+1;
        if (ib<0) {ib=0;};  if (ie>9) {ie=9;};if (jb<0) {jb=0;};  if (je>9) {je=9;};
        Edit13->Text=ii;   Edit14->Text=jj;
        for(int n=0;n<8;n++)TD[n]=Robot->range[n];
        for(int i=ib;i<=ie;i++)
              for(int j=jb;j<=je;j++)
                        for(int k=0;k<WorkSpace->countO[i][j];k++)
                                for(int n=0;n<8;n++)
                                {
                                        DD[n]=Robot->Detect(n,WorkSpace->ObstacleX[i][j][k],WorkSpace->ObstacleY[i][j][k],Form1);
                                        if (TD[n]>DD[n])TD[n]=DD[n];
                                };
};
if (TimerMotor--==0)
{
        TimerMotor=Timer0Motor;
//--------------------------------------------------ограничение перемещения руля
        //поворот руля
        a=atan2(sin(a),cos(a));
        if (a>80*M_PI/180) a=80*M_PI/180;
        if (a<-80*M_PI/180) a=-80*M_PI/180;

        if (pause==0)     Robot->Motion(a, (fabs(GetTickCount()-LastTickCount)/1000)*velocity, Form1);
        FuzzyTimer+=GetTickCount()-LastTickCount;
        LastTickCount=GetTickCount();

};
if (TimerScreen--==0)
{
        TimerScreen=Timer0Screen;
        Label15->Caption=time/10;
        Edit18->Text=RangeRobotTarget;
        Edit1->Text=TD[0];Edit2->Text=TD[1];Edit3->Text=TD[3];Edit4->Text=TD[2];
        Edit5->Text=TD[4];Edit6->Text=TD[5];Edit7->Text=TD[6];Edit12->Text=TD[7];
        //выводится промежут. цель
        if (Orient==1)
                WorkSpace->PromTarget(RobotTargetX,RobotTargetY,Form1);
        WorkSpace->GraphTarget(WorkSpaceTargetX,WorkSpaceTargetY,clRed,Form1);
        Edit22->Text=a*180/M_PI;
        Edit39->Text=velocity;
        Edit40->Text=FuzzyTimer;
       switch ( Mode )
       {
       case 1 : Edit11->Text="DANGER"; break;
       case 2 : Edit11->Text="FINISH"; break;
       case 3 : Edit11->Text="OBTACLE"; break;
       case 4 : Edit11->Text="LEFT WALL"; break;
       case 5 : Edit11->Text="RIGHT WALL"; break;
       case 6 : Edit11->Text="MTARGET"; break;
       case 7 : Edit11->Text="1TARGET"; break;
       case 8 : Edit11->Text="2TARGET"; break;
       case 9 : Edit11->Text="TARGET"; break;
//       default : <statement>;
       };
};
if (TimerLogic--==0)
{
        TimerLogic=Timer0Logic;
        velocity=CSpinEdit3->Value;

//ПЕРЕКАЛИБЮРОВКА если изменились радиусы действия -
        if (f==1)
        {
        FuzzyFront1->Calibr(0,Robot->range[0],0,Robot->range[1],-180*M_PI/180,180*M_PI/180);
        FuzzyWallLeft->Calibr(0,Robot->range[4],0,Robot->range[5],-180*M_PI/180,180*M_PI/180);
        FuzzyWallRight->Calibr(0,Robot->range[6],0,Robot->range[7],-180*M_PI/180,180*M_PI/180);
        };
//угол к цели:
                b[0]=-Robot->X+RobotTargetX; b[1]=-Robot->Y+RobotTargetY;
                r=sqrt(b[0]*b[0]+b[1]*b[1]);               //расстояние до точки
                ugol=-(Robot->Alpha+atan2(b[0]/r,b[1]/r)); //[рад]
                a=ugol;//угол поворота руля
                a=atan2(sin(a),cos(a));
//проверка "а не приехал ли наш робот"
        if (
        (Orient==1)&&
        (Range(Robot->X,Robot->Y,RobotTargetX,RobotTargetY)<DeltaLenghtApproach)&&
        (fabs(-Robot->Alpha-WorkSpace->TargetAngle)<DeltaAngleApproach)
        ||
        (
        (Orient==0)&&
        (Range(Robot->X,Robot->Y,RobotTargetX,RobotTargetY)<DeltaLenghtApproach))
        )
        {
                motion=0;
                for(int i=0;i<8;i++) Robot->range[i]=RobotSonarRange[i];
                break;
        };
//-----------------определение РЕЖИМА РАБОТЫ------------------------------------
//чрезвычайный режим
                                                        //испольузется TD[i] Robot->Range[i]
        if ((TD[0]<Robot->range[0])||(TD[1]<Robot->range[1])||(TD[2]<Robot->range[2])||(TD[3]<Robot->range[3]))
                Mode=3;
        else
        {
                if ((((TD[4]<Robot->range[4])||(TD[5]<Robot->range[5]))&&(a<=0))||
                   (((TD[6]<Robot->range[6])||(TD[7]<Robot->range[7]))&&(a>=0))||
                   ((TD[4]==Robot->range[4])&&(TD[5]==Robot->range[5])&&(TD[6]==Robot->range[6])&&(TD[7]==Robot->range[7])))
                {//выборка одного из режимов Target
                        if (Orient==0){Mode=9;}
                        if (Mode==6)//TargetMode==0
                        {
                                Mode=6;
                                if (Range(RobotTargetX,RobotTargetY,Robot->X,Robot->Y)<ConstPogrMnimTarget)//0.05
                                {
                                        Mode=7;//TargetMode=1;
                                        b[0]=-Robot->X+WorkSpace->TargetX;b[1]=-Robot->Y+WorkSpace->TargetY;
                                        r=sqrt(b[0]*b[0]+b[1]*b[1]);               //расстояние до точки
                                        ugol=-(Robot->Alpha+atan2(b[0]/r,b[1]/r));
                                                //!!!ДОРАБОТАТЬ ФОРМУЛУ!!!
                                                //chutchut=Robot->Lenght*(1-sin(10*M_PI/180)*(+(1/cos(Robot->Alpha))-fabs(tan(Robot->Alpha))));
                                        chutchut=Robot->Lenght*(1-sin(10*M_PI/180)*(fabs(1/cos(Robot->Alpha))-fabs(tan(Robot->Alpha))));
                                                //if ((Robot->Alpha*180/M_PI)>90)chutchut=Robot->Lenght*(1-sin(10*M_PI/180)*(-1/cos(Robot->Alpha)+tan(Robot->Alpha)));
                                                //if ((Robot->Alpha*180/M_PI)<0)chutchut=Robot->Lenght*(1-sin(10*M_PI/180)*(+1/cos(Robot->Alpha)+tan(Robot->Alpha)));
                                                //if ((Robot->Alpha*180/M_PI)<-90)chutchut=Robot->Lenght*(1-sin(10*M_PI/180)*(-1/cos(Robot->Alpha)+tan(Robot->Alpha)));
                                        RobotTargetX-=(chutchut)*sin(Robot->Alpha);
                                        RobotTargetY+=(chutchut)*cos(Robot->Alpha);
//!!!ЗДЕСЬ ВВОДИТСЯ ПОГРЕШНОСТЬ УГЛА ПОДХОДА К ЦЕЛИ!!!
                                        if (fabs(ugol)<ConstPogrUgolGrad*M_PI/180)Mode=9;//TargetMode=3;//3*M_PI/180
                                };
                        };
                        if ((TargetMode==1)&&(Range(RobotTargetX,RobotTargetY,Robot->X,Robot->Y)<ConstPogrMnimTarget))//если робот проехал чуть-чуть
                        {
                                Mode=8;//TargetMode=2;
                        };
//                        if (TargetMode==1)Edit11->Text="1Target";//режим когда чуть проехать вперед
  //                      if (TargetMode==2)Edit11->Text="2Target";//поворот руля пока не совместятся углы Target и Robot
    //                    if (TargetMode==3)Edit11->Text="Target";
                }
                else
                {
                if (((TD[4]<Robot->range[4])||(TD[5]<Robot->range[5]))&&(a>0))
                        Mode=4;//Edit11->Text="LeftWall";
                if (((TD[6]<Robot->range[6])||(TD[7]<Robot->range[7]))&&(a<0))
                        Mode=5;//Edit11->Text="RightWall";
                };
        };
        if (CheckBox2->State==1)
        {
                for(int i=0;i<8;i++)
                        if (TD[i]<=Edit10->Text.ToDouble()*Robot->range[i])
                                Mode=1;//Form1->Button7Click(Form1); //STOP
        }
//---------КОНЕЦ-ВЫБОРА-ЕЖИМОВ--------------------------------------------------------------
a=0;
//-----------------------------------------РЕЖИМЫ-------------------------------------------------
        if (Mode==1)
        {
                Edit11->Text="DANGER";
                Button7->Click();
                break; //STOP!!!
        };
        if (Mode==2)
        {
                Edit11->Text="RichGoal";
                Button7->Click();
                break; //STOP!!!
        };
//уровень объезда препятствия
        if (Mode==3)
        {      aa=TD[0];bb=TD[1];
               if (TD[0]>TD[3]) aa=TD[3]; //left
               if (TD[1]>TD[2]) bb=TD[2]; //right
                  //TD[0]=(TD[0]+TD[3])/2; TD[1]=(TD[1]+TD[2])/2;
//изменяемость базы знаний
                Timer_RuleCorrect++;
/*              if (fabs(TD[0]+TD[3]+TD[4]+TD[5]-(TD[1]+TD[2]+TD[6]+TD[7]))<0.2)
                        {

                        aa=TD[0]+TD[3]+TD[4]+TD[5];
                        bb=TD[1]+TD[2]+TD[6]+TD[7];
                        };
bool FlagPerecalibrovki=0;
bool FlagFuzzyFront=1;//1-состояние1; 0 - состояние 2;
short int CounterFlagChange=0;
  */
           if (FuzzyTimer>=100)
           {
                if ((CheckBox6->State==1)&&(aa>bb))//&&(Timer_RuleCorrect>TimerRuleCorrectSet))
                {
                        FuzzyFront1->SetRuleBase(0,0,4,1);
                        FuzzyFront1->SetRuleBase(1,1,3,1);
                //        Timer_RuleCorrect=0;
                if (FlagFuzzyFront==1) {FlagFuzzyFront=0;//значит произошла смена Fuzzy
                                        FuzzyTimer=0;}
                }
                if ((CheckBox6->State==1)&&(aa<bb))//&&(Timer_RuleCorrect>TimerRuleCorrectSet))
                {
                        FuzzyFront1->SetRuleBase(0,0,0,1);
                        FuzzyFront1->SetRuleBase(1,1,1,1);
                  //      Timer_RuleCorrect=0;
                if (FlagFuzzyFront==0) {FlagFuzzyFront=1;FuzzyTimer=0;}
                }
           };
                        Timer_RuleCorrect=0;
                FuzzyFront1->FInput(0,aa);        //0-left;1-right
                FuzzyFront1->FInput(1,bb);
                FuzzyFront1->Logic(0,1);
                a=FuzzyFront1->FOutput();           //угол поворота руля
                Edit30->Text=aa;
                Edit31->Text=bb;
                Edit32->Text=a;
                //инверсия ЕСЛИ ЧЕ-ТО НЕ ТАК
//               if ((CheckBox6->State==1)&&((TD[0]+TD[3]-TD[1]-TD[2])<0)&&(a<0)) a=-a;
                LogicScreenUpdate();
        };
//уровень следования стене.
        if (Mode==4)
        {
                velocity*=2;
                FuzzyWallLeft->FInput(0,TD[4]);
                FuzzyWallLeft->FInput(1,TD[5]);
                FuzzyWallLeft->Logic(0,1);
                a=FuzzyWallLeft->FOutput();
                Edit33->Text=TD[4];
                Edit34->Text=TD[5];
                Edit35->Text=a;
        }
        if (Mode==5)
        {
                velocity*=2;
                FuzzyWallRight->FInput(0,TD[6]);
                FuzzyWallRight->FInput(1,TD[7]);
                FuzzyWallRight->Logic(0,1);
                a=FuzzyWallRight->FOutput();
                Edit36->Text=TD[6];
                Edit37->Text=TD[7];
                Edit38->Text=a;
        };
//уровень целеполагания
        if (((Mode==6)||(Mode==7))&&(CheckBox1->State==1))
        {
                velocity*=4;
                b[0]=-Robot->X+RobotTargetX; b[1]=-Robot->Y+RobotTargetY;
                r=sqrt(b[0]*b[0]+b[1]*b[1]);               //расстояние до точки
                ugol=-(Robot->Alpha+atan2(b[0]/r,b[1]/r));
                a=ugol;                                     //угол поворота руля
        };
        if ((Mode==8)&&(CheckBox1->State==1))
        {
                velocity*=2;
                b[0]=-Robot->X+WorkSpace->TargetX; b[1]=-Robot->Y+WorkSpace->TargetY;
                r=sqrt(b[0]*b[0]+b[1]*b[1]);               //расстояние до точки
                ugol=-(Robot->Alpha+atan2(b[0]/r,b[1]/r));
                a=80*M_PI/180;
                if (ugol<0)a=-a;
                Robot->DAlpha=a;
//!!!ЗДЕСЬ СНОВА ПОГРЕШНОСТЬ!!!
                if (fabs(ugol)<DeltaAngleApproach) {TargetMode=3;Edit11->Text="Target";da=0;a=0;};
        };
        if ((Mode==9)&&(CheckBox1->State==1))
        {
                velocity*=1;
                if (Orient==0) velocity*=3;
                b[0]=-Robot->X+WorkSpace->TargetX; b[1]=-Robot->Y+WorkSpace->TargetY;
                r=sqrt(b[0]*b[0]+b[1]*b[1]);               //расстояние до точки
                ugol=-(Robot->Alpha+atan2(b[0]/r,b[1]/r));
                a=ugol;                                     //угол поворота руля
        };
//        а если нет, то куда глаза глядят ;)
};
FuzzyFront1->Calibr(0,Robot->range[0],0,Robot->range[1],-180*M_PI/180,180*M_PI/180);
FuzzyWallLeft->Calibr(0,Robot->range[4],0,Robot->range[5],-180*M_PI/180,180*M_PI/180);
FuzzyWallRight->Calibr(0,Robot->range[6],0,Robot->range[7],-180*M_PI/180,180*M_PI/180);
}
return;
//------------------------------
//-------ОРГАНИЗАЦИЯ ДЕМО-РЕЖИМА-----------------------------------------------

//------------------------------------------------------------------------------

for(int i=0;i<8;i++) Robot->range[i]=RobotSonarRange[i];
};
//---------------------------------------------------------------------------
void __fastcall TForm1::Button1Click(TObject *Sender)
{
if (pause==1)
        { pause=0;
        Button1->Caption="PAUSE";
        }
else {pause=1;
        Button1->Caption="CONTINUE";
        };
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button5Click(TObject *Sender)
{//ClearWorkSpace
for(int i=0;i<10;i++)
for(int j=0;j<10;j++)
for(int k=0;k<100;k++)
{
        WorkSpace->SetObstacle(i,j,k,0,0);
        WorkSpace->countO[i][j]=0;
};
WorkSpace->SetTarget(10,10,Edit21->Text.ToDouble()*M_PI/180);
/*WorkSpace->Line(0,0,0,19.9);
WorkSpace->Line(0,0,19.9,0);
WorkSpace->Line(0,19.9,19.9,19.9);
WorkSpace->Line(19.99,19.9,19.99,0);

WorkSpace->Line(6,0,6,3);
WorkSpace->Line(6,6,6,8);
WorkSpace->Line(6,11,6,13);
WorkSpace->Line(6,16,6,19.9);

WorkSpace->Line(14,0,14,3);
WorkSpace->Line(14,6,14,8);
WorkSpace->Line(14,11,14,13);
WorkSpace->Line(14,16,14,19.9);

WorkSpace->Rect(1,1,2,3);
WorkSpace->Rect(1,4,2,8);
WorkSpace->Rect(1,10,2,13);
WorkSpace->Rect(1,15,2,19);
WorkSpace->Rect(2,17,5,19);

WorkSpace->Rect(7,17,13,19);

WorkSpace->Rect(18,1,19,3);
WorkSpace->Rect(18,4,19,8);
WorkSpace->Rect(18,10,19,13);
WorkSpace->Rect(18,15,19,19);
WorkSpace->Rect(18,17,15,19);

WorkSpace->Rect(6,6.5,10,7.5);
WorkSpace->Rect(6,12.5,10,11.5);
WorkSpace->Rect(6,2.7,10,3);
*/
Robot->X=8; Robot->Y=1; Robot->Alpha=-90*M_PI/180;

WorkSpace->Graphics(Form1);
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button4Click(TObject *Sender)
{
        if (GroupBox1->Visible==0)
        {
                GroupBox2->Visible=0;
                GroupBox3->Visible=0;
                GroupBox1->Visible=1;
                Button4->Caption="ExitWorkSpaceEdit";
        }
        else
        {
                GroupBox1->Visible=0;
                GroupBox2->Visible=1;
                GroupBox3->Visible=1;
                Button4->Caption="WorkSpaceEdit";
        };
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button6Click(TObject *Sender)
{
Form2->Show();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button7Click(TObject *Sender)      //кнопка STOP
{
motion=0;
DemoMotion=0;
for(int i=0;i<8;i++)Robot->range[i]=RobotSonarRange[i];
};
//---------------------------------------------------------------------------
void __fastcall TForm1::Image1MouseMove(TObject *Sender,
                        TShiftState Shift,int X, int Y)
{
double x=X,y=Y;
   double Ox=x*WorkSpaceMaxX/Image1->Width;
   double Oy=WorkSpaceMaxY-y*WorkSpaceMaxY/Image1->Height;
if (GroupBox1->Visible!=0)
{
   Edit8->Text=Ox;
   Edit9->Text=Oy;
   Form1->Repaint();
};
if (Button16->Caption=="PutTarget")
        {
        Edit23->Text=Ox;
        Edit24->Text=Oy;
        };
if (Button17->Caption=="PutPromTarget")
        {
        Edit26->Text=Ox;
        Edit27->Text=Oy;
        };
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button8Click(TObject *Sender)
{
        Button8->Caption="PutStartRobotPosition";
WorkSpace->Graphics(Form1);
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button10Click(TObject *Sender) //Save WorkSpaceEdit
{
double q[20110];
double *pq=&q[0];
int iq=0;
for(int i=0;i<10;i++)
        for(int j=0;j<10;j++)
        {
                q[iq]=WorkSpace->countO[i][j];iq++;
                for(int k=0;k<100;k++)
                {
                q[iq]=WorkSpace->ObstacleX[i][j][k];iq++;
                q[iq]=WorkSpace->ObstacleY[i][j][k];iq++;
                };
        };
q[iq]=WorkSpace->TargetX;iq++;
q[iq]=WorkSpace->TargetY;iq++;
q[iq]=WorkSpace->TargetAngle;iq++;
FILE *cfPtr;
cfPtr=fopen(WSdata,"w");
for(int i=0;i<20110;i++) fprintf(cfPtr,"%.3f ",q[i]);
fclose(cfPtr);
};
//---------------------------------------------------------------------------

void __fastcall TForm1::Button9Click(TObject *Sender) //LoadWorkSpace
{
      double e[20110],*pe=&e[0];
      char q[8];
FILE *cfPtr;
cfPtr=fopen(WSdata,"r");
AnsiString a;
for(int i=0;((!feof(cfPtr))&&(i<20104));i++)
{
        fscanf(cfPtr,"%s ",q);
        a=q;
        e[i]=a.ToDouble();
};
fclose(cfPtr);
int ie=0;
      for(int i=0;i<10;i++)
        for(int j=0;j<10;j++)
        {
                WorkSpace->countO[i][j]=e[ie];ie++;
                for(int k=0;k<100;k++)
                {
                        WorkSpace->ObstacleX[i][j][k]=e[ie];ie++;
                        WorkSpace->ObstacleY[i][j][k]=e[ie];ie++;
                };
        };
    WorkSpace->TargetX=e[ie];ie++;
    WorkSpace->TargetY=e[ie];ie++;
    WorkSpace->TargetAngle=e[ie];ie++;
    Edit21->Text=WorkSpace->TargetAngle*180/M_PI;  //TargetAngle
WorkSpace->Graphics(Form1);
}    ;
//---------------------------------------------------------------------------
void __fastcall TForm1::Image1MouseDown(TObject *Sender,
      TMouseButton Button, TShiftState Shift, int X, int Y)
{
//if (GroupBox1->Visible==0)return;
double x=X,y=Y;
if (Button4->Caption=="ExitWorkSpaceEdit")
{
        if ((Button2->Caption!="PutTarget")&&(Button8->Caption!="PutStartRobotPosition"))
        {
                if (Button11->Caption=="Pixel")
                {
                int i=(x/K)/2;
                int j=(Image1->Height-y)/K/2;
                Edit13->Text=i;
                Edit14->Text=j;
                WorkSpace->ObstacleX[i][j][WorkSpace->countO[i][j]]=x*WorkSpaceMaxX/Image1->Width;
                WorkSpace->ObstacleY[i][j][WorkSpace->countO[i][j]]=WorkSpaceMaxY-y*WorkSpaceMaxY/Image1->Height;
                WorkSpace->countO[i][j]++;
                if (WorkSpace->countO[i][j]>99)WorkSpace->countO[i][j]=99;
                }
                else
                {
                WorkSpace->lxb=x*WorkSpaceMaxX/Image1->Width;
                WorkSpace->lyb=WorkSpaceMaxY-y*WorkSpaceMaxY/Image1->Height;
                };
//for(int i=0;i<8;i++) Robot->range[i]=RobotSonarRange[i];
        };
        if (Button2->Caption=="PutTarget")
            {   WorkSpace->SetTarget(x*WorkSpaceMaxX/Image1->Width,WorkSpaceMaxY-y*WorkSpaceMaxY/Image1->Height,0);
          //      Button2->Caption="SetTarget";
            };
        if (Button8->Caption=="PutStartRobotPosition")
        {  //     Button8->Caption="SetStartRobotPosition";
                Robot->X=x*WorkSpaceMaxX/Image1->Width;
                Robot->Y=WorkSpaceMaxY-y*WorkSpaceMaxY/Image1->Height;
        };
};
if (Button16->Caption=="PutTarget")
{
    int i=(x/K)/2;
    int j=(Image1->Height-y)/K/2;
    Edit13->Text=i;
    Edit14->Text=j;
    Robot->ProgTarget[CSpinEdit1->Value][0]=x*WorkSpaceMaxX/Image1->Width;
    Robot->ProgTarget[CSpinEdit1->Value][1]=WorkSpaceMaxY-y*WorkSpaceMaxY/Image1->Height;
    Robot->ProgTarget[CSpinEdit1->Value][2]=Edit25->Text.ToDouble()*M_PI/180;
    Edit23->Text=Robot->ProgTarget[CSpinEdit1->Value][0];
    Edit24->Text=Robot->ProgTarget[CSpinEdit1->Value][1];
    CSpinEdit1->Value++;
    if (CSpinEdit1->Value==CSpinEdit1->MaxValue) CSpinEdit1->Value=0;
};
if (Button17->Caption=="PutPromTarget")
{
    int i=(x/K)/2;
    int j=(Image1->Height-y)/K/2;
    Edit13->Text=i;
    Edit14->Text=j;
    Robot->MiddleTarget[CSpinEdit1->Value][CSpinEdit2->Value][0]=x*WorkSpaceMaxX/Image1->Width;
    Robot->MiddleTarget[CSpinEdit1->Value][CSpinEdit2->Value][1]=WorkSpaceMaxY-y*WorkSpaceMaxY/Image1->Height;
    Edit26->Text=Robot->MiddleTarget[CSpinEdit1->Value][CSpinEdit2->Value][0];
    Edit27->Text=Robot->MiddleTarget[CSpinEdit1->Value][CSpinEdit2->Value][1];
    CSpinEdit2->Value++;
    if (CSpinEdit2->Value==CSpinEdit2->MaxValue) CSpinEdit2->Value=0;
};

        Form1->Repaint();
WorkSpace->Graphics(Form1);

}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button11Click(TObject *Sender)
{
if (Button11->Caption=="Line")
{
        Button11->Caption="Rectangle";
        return;
};
if (Button11->Caption=="Rectangle")
{
        Button11->Caption="Pixel";
        return;
};
if (Button11->Caption=="Pixel")
{
        Button11->Caption="Line";
        return;
};
Form1->Repaint();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Image1MouseUp(TObject *Sender, TMouseButton Button,
      TShiftState Shift, int X, int Y)
{
if (Button4->Caption=="ExitWorkSpaceEdit")
{
if ((Button8->Caption=="PutStartRobotPosition")||(Button2->Caption=="PutTarget"))
{
     Button8->Caption="SetStartRobotPosition";
     Button2->Caption="SetTarget";
     return;
};
double x=X,y=Y;
WorkSpace->lxe=x*WorkSpaceMaxX/Image1->Width;
WorkSpace->lye=WorkSpaceMaxY-y*WorkSpaceMaxY/Image1->Height;
if ((WorkSpace->lxb==WorkSpace->lxe)&&(WorkSpace->lyb==WorkSpace->lye)) return;
if (Button11->Caption=="Rectangle")
        WorkSpace->Rect(WorkSpace->lxb,WorkSpace->lyb,WorkSpace->lxe,WorkSpace->lye);
if (Button11->Caption=="Line")
        WorkSpace->Line(WorkSpace->lxb,WorkSpace->lyb,WorkSpace->lxe,WorkSpace->lye);
WorkSpace->Graphics(Form1);
};
};
//---------------------------------------------------------------------------

void __fastcall TForm1::CSpinEdit1Change(TObject *Sender)
{
//WorkSpace->TargetAngle=Edit21->Text.ToDouble()*M_PI/180;
CSpinEdit2->Value=0;
Edit23->Text=Robot->ProgTarget[CSpinEdit1->Value][0];
Edit24->Text=Robot->ProgTarget[CSpinEdit1->Value][1];
Edit25->Text=Robot->ProgTarget[CSpinEdit1->Value][2]*180/M_PI;
}
//---------------------------------------------------------------------------
double Range(double x0,double y0,double x1,double y1)
{
return sqrt((x0-x1)*(x0-x1)+(y0-y1)*(y0-y1));
};

void __fastcall TForm1::Edit21Change(TObject *Sender)
{
WorkSpace->TargetAngle=Edit21->Text.ToDouble()*M_PI/180;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button12Click(TObject *Sender)
{
DemoMotion=1;
//DEMO
for (int i=CSpinEdit4->Value;DemoMotion==1;i++)
{
        //if (i=10)i=0;
        //CSpinEdit4->Value=i;
        //CSpinEdit4->Repaint();
        CSpinEdit4Change(Form1);
        Button14->Click();//load
        Button20->Click();//load
        Button9->Click();//load
        Button18->Click();//START PROGRAM
        CSpinEdit4->Value++;
        if (CSpinEdit4->Value==CSpinEdit5->Value)CSpinEdit4->Value=0; 
};
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button13Click(TObject *Sender)
{
AboutBox->Visible=1;
}
//---------------------------------------------------------------------------


void __fastcall TForm1::Button16Click(TObject *Sender)
{
if (Button16->Caption=="SetTarget")
        {
        Button16->Caption="PutTarget";
        Button17->Caption="SetPromTarget";
        }
else Button16->Caption="SetTarget";

}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button17Click(TObject *Sender)
{
if (Button17->Caption=="SetPromTarget")
        {
        Button16->Caption="SetTarget";
        Button17->Caption="PutPromTarget";
        }
else Button17->Caption="SetPromTarget";
}
//---------------------------------------------------------------------------

void __fastcall TForm1::CSpinEdit2Change(TObject *Sender)
{
Edit26->Text=Robot->MiddleTarget[CSpinEdit1->Value][CSpinEdit2->Value][0];
Edit27->Text=Robot->MiddleTarget[CSpinEdit1->Value][CSpinEdit2->Value][1];
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button18Click(TObject *Sender)  //START-program
{
DemoMotion=1;
bool orientation=CheckBox4->State;
//double distance=Edit19->Text.ToDouble();
for(int i=0;DemoMotion==1;i++)
{
        if (i==10)break;//i=0;
        WorkSpaceTargetX=Robot->ProgTarget[i][0];
        WorkSpaceTargetY=Robot->ProgTarget[i][1];
        if ((WorkSpaceTargetY==0)||(WorkSpaceTargetX==0))break;
        CSpinEdit1->Value=i;
        for(int j=0;j<10;j++)
        {
if((Robot->MiddleTarget[i][j][0]==0)&&(Robot->MiddleTarget[i][j][1]==0)) break;
                WorkSpace->SetTarget(Robot->MiddleTarget[i][j][0],Robot->MiddleTarget[i][j][1],0);
        //        Orient=0;
                CSpinEdit2->Value=j;
                if (CheckBox3->State==1)CSpinEdit3->Value=30;
                CheckBox4->State=0;
                DeltaLenghtApproach=0.1;
                Button3->Click();
                if (CheckBox3->State==1)CSpinEdit3->Value=3;
                if (DemoMotion==0)break;
        };

        if (DemoMotion==0) break;
        WorkSpace->SetTarget(Robot->ProgTarget[i][0],Robot->ProgTarget[i][1],Robot->ProgTarget[i][2]);
        if (CheckBox4->State==1) Orient=1;
        CheckBox4->State=orientation;
        DeltaLenghtApproach=Edit19->Text.ToDouble();
        Button3->Click();
        };
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button22Click(TObject *Sender) //START_NO_PROGRAM
{
DeltaLenghtApproach=Edit19->Text.ToDouble();
Button20->Click();
Button19->Click();
Button3->Click();
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button14Click(TObject *Sender)
{//PROG_LOAD
      double e[240],*pe=&e[0];
      char q[8];
FILE *cfPtr;
cfPtr=fopen(progr,"r");
AnsiString a;
for(int i=0;((!feof(cfPtr))&&(i<20104));i++)
{
        fscanf(cfPtr,"%s ",q);
        a=q;
        e[i]=a.ToDouble();
};
fclose(cfPtr);
int ie=0;
//считывание реальных целей
for(int i=0;i<10;i++)
   for(int j=0;j<3;j++)
        Robot->ProgTarget[i][j]=e[ie++];
//считывание промежуточных целей
for(int i=0;i<10;i++)
        for(int j=0;j<10;j++)
                for(int k=0;k<2;k++)
                        Robot->MiddleTarget[i][j][k]=e[ie++];
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button15Click(TObject *Sender)
{
double q[240];
double *pq=&q[0];
int iq=0;
for(int i=0;i<10;i++)
{
        q[iq++]=Robot->ProgTarget[i][0];
        q[iq++]=Robot->ProgTarget[i][1];
        q[iq++]=Robot->ProgTarget[i][2];
}
for(int i=0;i<10;i++)
        for(int j=0;j<10;j++)
                for(int k=0;k<2;k++)
                        q[iq++]=Robot->MiddleTarget[i][j][k];

FILE *cfPtr;
cfPtr=fopen(progr,"w");
for(int i=0;i<236;i++) fprintf(cfPtr,"%.3f ",q[i]);
fclose(cfPtr);
}
//---------------------------------------------------------------------------


void __fastcall TForm1::CheckBox4Click(TObject *Sender)
{
Orient=CheckBox4->State;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Edit29Change(TObject *Sender)
{
DeltaAngleApproach=Edit29->Text.ToDouble()*M_PI/180;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Edit19Change(TObject *Sender)
{
DeltaLenghtApproach=Edit19->Text.ToDouble();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Edit20Change(TObject *Sender)
{
MirrorTargetRange=Edit20->Text.ToDouble();
}
//---------------------------------------------------------------------------
void LogicScreenUpdate()
{
DecimalSeparator='.';
for (int i=0;i<3;i++)
{
        Form1->StringGrid1->Cells[0][i]=FuzzyFront1->c[0][i];
        Form1->StringGrid2->Cells[i][0]=FuzzyFront1->c[1][i];
        Form1->StringGrid5->Cells[0][i]=FuzzyWallLeft->c[0][i];
        Form1->StringGrid6->Cells[i][0]=FuzzyWallLeft->c[1][i];
        Form1->StringGrid9->Cells[0][i]=FuzzyWallRight->c[0][i];
        Form1->StringGrid10->Cells[i][0]=FuzzyWallRight->c[1][i];
        for(int j=0;j<3;j++)
        {
                Form1->StringGrid3->Cells[i][j]=FuzzyFront1->RuleBaseNMF[j][i];
                Form1->StringGrid7->Cells[i][j]=FuzzyWallLeft->RuleBaseNMF[j][i];
                Form1->StringGrid11->Cells[i][j]=FuzzyWallRight->RuleBaseNMF[j][i];
        }
};
for (int i=0;i<5;i++)
{
        Form1->StringGrid4->Cells[0][i]=FuzzyFront1->oc[i];
        Form1->StringGrid8->Cells[0][i]=FuzzyWallLeft->oc[i];
        Form1->StringGrid12->Cells[0][i]=FuzzyWallRight->oc[i];
};
};
//---------------------------------------------------------------------------
void ScreenLogicUpdate()
{
};
//---------------------------------------------------------------------------


void __fastcall TForm1::Button19Click(TObject *Sender)
{
DecimalSeparator='.';
for (int i=0;i<3;i++)
{
        FuzzyFront1->c[0][i]=Form1->StringGrid1->Cells[0][i].ToDouble();
        FuzzyFront1->c[1][i]=Form1->StringGrid2->Cells[i][0].ToDouble();
        FuzzyWallLeft->c[0][i]=Form1->StringGrid5->Cells[0][i].ToDouble();
        FuzzyWallLeft->c[1][i]=Form1->StringGrid6->Cells[i][0].ToDouble();
        FuzzyWallRight->c[0][i]=Form1->StringGrid9->Cells[0][i].ToDouble();
        FuzzyWallRight->c[1][i]=Form1->StringGrid10->Cells[i][0].ToDouble();
        for(int j=0;j<3;j++)
        {
                FuzzyFront1->RuleBaseNMF[j][i]=Form1->StringGrid3->Cells[i][j].ToDouble();
                FuzzyWallLeft->RuleBaseNMF[j][i]=Form1->StringGrid7->Cells[i][j].ToDouble();
                FuzzyWallRight->RuleBaseNMF[j][i]=Form1->StringGrid11->Cells[i][j].ToDouble();
        }
};
for (int i=0;i<5;i++)
{
        FuzzyFront1->oc[i]=Form1->StringGrid4->Cells[0][i].ToDouble();
        FuzzyWallLeft->oc[i]=Form1->StringGrid8->Cells[0][i].ToDouble();
        FuzzyWallRight->oc[i]=Form1->StringGrid12->Cells[0][i].ToDouble();
};
}
//---------------------------------------------------------------------------


void __fastcall TForm1::Button21Click(TObject *Sender)//Save Logic
{
 double q[70];
double *pq=&q[0];
int iq=0;       //...
DecimalSeparator='.';

for (int i=0;i<3;i++)
{
        q[iq++]=FuzzyFront1->c[0][i];
        q[iq++]=FuzzyFront1->c[1][i];
        q[iq++]=FuzzyWallLeft->c[0][i];
        q[iq++]=FuzzyWallLeft->c[1][i];
        q[iq++]=FuzzyWallRight->c[0][i];
        q[iq++]=FuzzyWallRight->c[1][i];
        for(int j=0;j<3;j++)
        {
                q[iq++]=FuzzyFront1->RuleBaseNMF[j][i];
                q[iq++]=FuzzyWallLeft->RuleBaseNMF[j][i];
                q[iq++]=FuzzyWallRight->RuleBaseNMF[j][i];
        }
};
for (int i=0;i<5;i++)
{
        q[iq++]=FuzzyFront1->oc[i];
        q[iq++]=FuzzyWallLeft->oc[i];
        q[iq++]=FuzzyWallRight->oc[i];
};
q[iq++]=CheckBox6->State;
FILE *cfPtr;

cfPtr=fopen(LogicName,"w");
for(int i=0;i<70;i++) fprintf(cfPtr,"%.3f ",q[i]);
fclose(cfPtr);

}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button20Click(TObject *Sender)    //LoadLogic
{
      double e[70],*pe=&e[0];
      char q[8];
FILE *cfPtr;
cfPtr=fopen(LogicName,"r");
AnsiString a;
for(int i=0;((!feof(cfPtr))&&(i<70));i++)
{
        fscanf(cfPtr,"%s ",q);
        a=q;
        e[i]=a.ToDouble();
};
fclose(cfPtr);
int ie=0;//=e[ie++];
for (int i=0;i<3;i++)
{
        FuzzyFront1->c[0][i]=e[ie++];
        FuzzyFront1->c[1][i]=e[ie++];
        FuzzyWallLeft->c[0][i]=e[ie++];
        FuzzyWallLeft->c[1][i]=e[ie++];
        FuzzyWallRight->c[0][i]=e[ie++];
        FuzzyWallRight->c[1][i]=e[ie++];
        for(int j=0;j<3;j++)
        {
                FuzzyFront1->RuleBaseNMF[j][i]=e[ie++];
                FuzzyWallLeft->RuleBaseNMF[j][i]=e[ie++];
                FuzzyWallRight->RuleBaseNMF[j][i]=e[ie++];
        }
};
for (int i=0;i<5;i++)
{
        FuzzyFront1->oc[i]=e[ie++];
        FuzzyWallLeft->oc[i]=e[ie++];
        FuzzyWallRight->oc[i]=e[ie++];
};
CheckBox6->State=e[ie++];
LogicScreenUpdate();
}
//---------------------------------------------------------------------------



void __fastcall TForm1::CSpinEdit4Change(TObject *Sender)
{
switch (CSpinEdit4->Value)
       {
       case 0 : progr[7]='0';WSdata[7]='0';LogicName[7]='0'; break;
       case 1 : progr[7]='1';WSdata[7]='1';LogicName[7]='1'; break;
       case 2 : progr[7]='2';WSdata[7]='2';LogicName[7]='2'; break;
       case 3 : progr[7]='3';WSdata[7]='3';LogicName[7]='3'; break;
       case 4 : progr[7]='4';WSdata[7]='4';LogicName[7]='4'; break;
       case 5 : progr[7]='5';WSdata[7]='5';LogicName[7]='5'; break;
       case 6 : progr[7]='6';WSdata[7]='6';LogicName[7]='6'; break;
       case 7 : progr[7]='7';WSdata[7]='7';LogicName[7]='7'; break;
       case 8 : progr[7]='8';WSdata[7]='8';LogicName[7]='8'; break;
       case 9 : progr[7]='9';WSdata[7]='9';LogicName[7]='9'; break;
//       default : <statement>;
       };
}
//---------------------------------------------------------------------------

