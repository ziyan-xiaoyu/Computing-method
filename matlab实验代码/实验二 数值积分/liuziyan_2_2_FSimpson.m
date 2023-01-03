function [S,S0,N] = liuziyan_2_2_FSimpson( f,a,b,eps )
% f--�������������a,b--��������[a,b]��N--�������
% S--�ø���Simpson��ʽ��õĻ���ֵ��S0--���ֵ�׼ȷֵ
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
    for i = 1:N
        x = x + h/2;
        fx = feval(f,x);
        S = S + 4*fx;
        if i < N
            x = x + h/2;
            fx = feval(f,x);
            S = S + 2*fx;
        end
    end
    S = S*h/6;
    if abs(S - S0) < eps
        flag = 1;
    end
end
