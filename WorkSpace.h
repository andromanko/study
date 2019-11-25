#include <math.h>
#include "Unit1.h"
class TWorkSpace
{
public: void SetTarget(double Tx,double Ty,double Ta);
        void SetObstacle(int i,int j,int k,double x,double y);
        void Line(double xb,double yb,double xe,double ye);
        void Rect(double xb,double yb,double xe,double ye);
        void PromTarget(double x,double y,TForm1 *Sender);
  //      double OutObstacleX(i){return ObstacleX[i][j][k];};
    //    double OutObstacleY(i){return ObstacleY[i][j][k];};
        void __fastcall Graphics(TForm1 *Sender);
        void __fastcall GraphTarget(double x,double y,int c,TForm1 *Sender);
public:
        double TargetX;
        double TargetY;
        double TargetAngle;
        double ObstacleX[10][10][100];// workspace-10x10 квадратов
        double ObstacleY[10][10][100];// по n<10 препятствий в каждом
        int countO[10][10];
        double lxb,lxe,lyb,lye;//для Line и Rectangle
};
extern PACKAGE TWorkSpace *WorkSpace;
