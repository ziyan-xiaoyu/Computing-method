#include<iostream>
using namespace std;

int main()
{
    float x1=0, x2=0, x3=0;
    for(int N=1;N<=10;N++)
    {
        x1 = x1 + 0.3125*(16 - 4*x1 - 3*x2);
        x2 = x2 + 0.3125*(20 - 3*x1 - 4*x2 + x3);
        x3 = x3 + 0.3125*(-12 + x2 - 4*x3);
        cout<<N<<"£º"<<x1<<"£¬"<<x2<<"£¬"<<x3<<endl;
    }
    return 0;
}
