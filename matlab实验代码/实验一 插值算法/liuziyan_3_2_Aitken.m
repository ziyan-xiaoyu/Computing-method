function y0 = liuziyan_3_2_Aitken(X, Y, x0)
%Aitken�𲽲�ֵ�㷨�����������µ�ֵ��ÿ����ֵΪǰһ��Ԫ��������Ԫ�ؼ������
%��Neville�㷨�����дΪAitken�㷨
%�ؼ����ڽ�j-1,k-1�ĳ�ÿ�е�һ��Ԫ�ض�Ӧ��ֵi,k
%X,Y����֪��ֵ�������㣬x0�ǲ�ֵ�㣬y0�Ƕ���ʽ��x0����ֵ
m = length(X);
P = zeros(m, 1);
P1 = zeros(m, 1);
P = Y;
for i=1:m
    P1 = P;
    k = 1;
    for j = i+1:m
        %k = k+1;
        %P(j) = P1(j-1)+(P1(j)-P1(j-1))*(x0-X(k-1))/(X(j)-X(k-1));
        P(j) = P1(i)+(P1(j)-P1(i))*(x0-X(k))/(X(j)-X(k));
    end
    k = k+1;
    if abs(P(m)-P(m-1)) < 10^-6;
        y0 = P(m);
        return;
    end
end
y0 = P(m);
