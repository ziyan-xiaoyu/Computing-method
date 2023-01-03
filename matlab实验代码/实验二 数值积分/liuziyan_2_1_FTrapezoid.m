function [S,S0,N] = liuziyan_2_1_FTrapezoid( f,a,b,eps )
% f--�������������a,b--��������[a,b]��N--�������
% S--�ø������ι�ʽ��õĻ���ֵ
% flag--�жϾ����Ƿ�ﵽҪ��0Ϊ������1Ϊ�ﵽ
% eps--���뾫��
N = 0;
flag = 0;
S0 = 2*(1-exp(-1))/sqrt(pi);
while flag == 0
    N = N+1;
    h = (b-a)/N;
    fa = feval(f,a);
    fb = feval(f,b);
    S = fb + fa;
    x = a;
    for i = 1:N-1
        x = x + h;
        fx = feval(f,x);
        S = S + 2*fx;
    end
    S = S*h/2;
    if abs(S - S0) < eps
        flag = 1;
    end
end

