T = 0.01;
B0=1;
C0=1;
Xm = 1;
a0=1;
w=1
b1=B0/2*(tanh(C0*(Xm+a0))-tanh(C0*(Xm-a0)));

syms x y real
%x=Xm*sin(w*t)
%y=sign(-w*Xm*cos(w*t))
z = B0*tanh(C0*(x-a0*y))+b1*y;

%curve = animatedline(
fsurf(z,[-Xm Xm -1 1])