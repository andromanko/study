#ifndef RobotH
#define RobotH


#include "unit1.h"
#include "Unit2.h"
#include <math.h>
//#include "WorkSpace.h"

class TRobot//: public WorkSpace    //������ �����
{
public: __fastcall TRobot();
   //__fastcall TRobot(TComponent* Owner);
        //void SetGeomParam(double w,double l,double L1)
          //      {Width=w;Lenght=l;l1=L1;};
        double Detect(int j,double x,double y,TForm1 *Sender);
        double X;
        double Y;
        double Alpha;
        double DAlpha;
        double ProgTarget[10][3];//10����� XYAngle;
        double CountProgTarget[10];//���-�� ������.����� ��� ������ ��������
        double MiddleTarget[10][10][2];//10 ������.����� [N����][N������][XY];
   void __fastcall RGraphics(bool c,TForm1 *Sender,double WSMaxY);
   void __fastcall Motion(double DA, double Vel, TForm1 *Sender);
   void __fastcall RSGraphics(bool c,TForm2 *Sender);
        double SinAlpha;
        double CosAlpha;
        double SinDAA;//sin(DAlpha-Alpha)
        double CosDAA;
        double SinDA;
        double CosDA;
        double Width;
        double Lenght;
        double l1;
//        };
//class TSonars   //������ ������ - ������
//{
public: void SetSonarParams(int i,double dxi,double dyi,double anglei,double r,double ar)
                { dx[i]=dxi;       dy[i]=dyi; angle[i]=anglei;
                  range[i]=r;anglerange[i]=ar;};
        void SetTargetDistance(int i,double TDi)
                {TargetDistance[i]=TDi;};
        double TargetDistance[10];
        double FrontSonarRange;
        double FrontSonarAngleRange;
        double WallSonarRange;
        double WallSonarAngleRange;

        //private:

        double dx[10];
        double dy[10];
        double angle[10];
        double range[10];
        double anglerange[10];
                  //���������� �� �������
};

extern PACKAGE TRobot *Robot;
//---------------------------------------------------------------------------
#endif