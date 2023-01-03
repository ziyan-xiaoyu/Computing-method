#include<iostream>
using namespace std;

int main()
{
    float x1=0, x2=0, x3=0;
    float y1, y2, y3;

//    for(int N=1;N<=40;N++)
//    {
//        y1 = x1;
//        y2 = x2;
//        y3 = x3;
//        x1 = 5 - y3;
//        x2 = -7 + y1;
//        x3 = (17 + y1 + 2*y2)/3;
//        cout<<N<<"£º"<<x1<<"£¬"<<x2<<"£¬"<<x3<<endl;
//    }

//jacobi
//    for(int N=1;N<=40;N++)
//    {
//        y1 = x1;
//        y2 = x2;
//        y3 = x3;
//        x1 = -0.5*y2 - 0.5*y3;
//        x2 = 0.5 - 0.5*y1 - 0.5*y3;
//        x3 = -2.5 - 0.5*y1 -0.5*y2;
//        cout<<N<<"£º"<<x1<<"£¬"<<x2<<"£¬"<<x3<<endl;
//    }

//gauss
    for(int N=1;N<=40;N++)
    {
        x1 = -0.5*x2 - 0.5*x3;
        x2 = 0.5 - 0.5*x1 - 0.5*x3;
        x3 = -2.5 - 0.5*x1 -0.5*x2;
        cout<<N<<"£º"<<x1<<"£¬"<<x2<<"£¬"<<x3<<endl;
    }


    return 0;
}

