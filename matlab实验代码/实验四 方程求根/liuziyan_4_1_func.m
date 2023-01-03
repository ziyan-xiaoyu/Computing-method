function [ f,d ] = liuziyan_4_1_func(x)
f = x.^3 - 3*x - 1;
syms y;
d1 = y.^3 - 3*y - 1;
d = subs(diff(d1),y,x);  %对函数f求一次导数