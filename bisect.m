%% a)
f = @(x) x^3-9;
a = 2;
b=3;
format long
c = bisectmethod(a, b, f, 10^-6);

%% b)
g = @(x) sin(x) - 6*x -5;
a = -pi;
b = 0;
format long
d = bisectmethod(a, b, g, 10^-8)

%% uppgift 3
tol = 10^-6;
h = @(x) 2*x^3-6*x-1;
a1 =1.5;
b1=2.5;
r1 = bisectmethod(a1, b1, h, tol)
%% Funtioner
function c = bisectmethod(a, b, f, tol)
while (b-a)/2>=tol
c = (a+b)/2;
if f(c) == 0
    break
end
if f(c)*f(a)<0
    b = c;
else
    a =c;
end
end
end