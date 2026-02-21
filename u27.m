%% Uppgift 1
fa = @(y) [1 - y(1)^2-y(2)^2;(1-(y(1)-1)^2 - y(2)^2)];
Dfa = @(y) [-2*y(1), -2*y(2);-2*(y(1)-1), -2*y(2)];

yroota = newton([1;1], fa , Dfa, 10^-6)

function y = newton(y0, f, Df, tol)
s = inf;
y = y0;
while norm(s) > tol
    s = -Df(y)\f(y);
    y = s + y;
end
end