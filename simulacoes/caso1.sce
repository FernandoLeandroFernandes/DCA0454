//Simulação - 

w0 = 1;
w1 = .5;
w2 = 1;

x1= [-0.1 -1.6 7.2 -4.2 -4.9 -3.2 -2.1 -0.6  8.2 0.6];
x2= [-5.9 -6.8 9.6  6.8 -9.7 -6.0 -4.5  0.5 -5.9 3.9]; 
d = [-1   -1   1    1   -1   -1   -1    1    1   1];
y = sign(-w0 + w1.*x1 + w2.*x2);
clf();
plot(x1(find(d==1)),x2(find(d==1)),'*r');
plot(x1(find(d==-1)),x2(find(d==-1)),'*b');

pause;
x1L = [-10:.1:10];
x2L = (w0 - w1.*x1L)./.w2;
plot(x1L,x2L);

e = mean((d - y).^2);
disp(e);


pause();
w0 = 2;
w1 = .5;
w2 = 1;

x1L = [-10:.1:10];
x2L = (w0 - w1.*x1L)./.w2;
plot(x1L,x2L);

y = sign(-w0 + w1.*x1 + w2.*x2);
e = mean((d - y).^2);
disp(e);

pause;
w0 = 0.2;
w1 = .5;
w2 = 1;

x1L = [-10:.1:10];
x2L = (w0 - w1.*x1L)./.w2;
plot(x1L,x2L);

y = sign(-w0 + w1.*x1 + w2.*x2);
e = mean((d - y).^2);
disp(e);

pause;
w0 = -0.2;
w1 = .5;
w2 = 1;

x1L = [-10:.1:10];
x2L = (w0 - w1.*x1L)./.w2;
plot(x1L,x2L);

y = sign(-w0 + w1.*x1 + w2.*x2);
e = mean((d - y).^2);
disp(e);

pause;
w0 = -2.5;
w1 = .5;
w2 = 1;

x1L = [-10:.1:10];
x2L = (w0 - w1.*x1L)./.w2;
plot(x1L,x2L);

y = sign(-w0 + w1.*x1 + w2.*x2);
e = mean((d - y).^2);
disp(e);
