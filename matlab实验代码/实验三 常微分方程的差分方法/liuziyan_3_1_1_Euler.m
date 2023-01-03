function E = liuziyan_3_1_1_Euler( f,a,b,N,ya )
% f����΢�ַ����Ҷ˺�����N��������ȷֵĸ�����
% a,b�����Ա�����ȡֵ����[a,b]�Ķ˵㣻ya�������ֵy(a)
% E=[x',y']���Ա���X�ͽ�Y����ɵľ���
h = (b-a)/N;
y = zeros(1,N+1);
x = zeros(1,N+1);
y(1) = ya;
x = a:h:b;
for i = 1:N
    y(i+1) = y(i) + h*feval(f,x(i),y(i));
end
E = [x',y'];
