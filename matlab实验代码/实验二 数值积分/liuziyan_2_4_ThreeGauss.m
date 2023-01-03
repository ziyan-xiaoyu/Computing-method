function [G,eps] = liuziyan_2_4_ThreeGauss( f,a,b )
% f--�������������a,b--��������[a,b]��
% G--��Romberg��ʽ��õĻ���ֵ;G0--���ֵ�׼ȷֵ
% eps--���뾫��
x1 = (a+b)/2 - sqrt(3/5) * (b-a)/2;
x2 = (a+b)/2 + sqrt(3/5) * (b-a)/2;
G = (b-a) * (5*feval(f,x1)/9 + 8*feval(f,(a+b)/2)/9 +...
    5*feval(f,x2)/9)/2;
G0 = 2*(1-exp(-1))/sqrt(pi);
eps = abs(G - G0);
end
