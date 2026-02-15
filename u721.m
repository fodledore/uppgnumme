%% a)
ya1 = excercisea(9);
ya2 = excercisea(19);
ya3= excercisea(39);


function sola = excercisea(n)
h = 1/n;
b = zeros(n-1, 1);
for i =1:n-1
    b(i) = exp(i*h);
end
b(end) = b(end) - h^(-2)*1/3*exp(1);
b = 2/3*b;

A = (-h^(2)-2)*eye(n-1, n-1);
B = zeros(n-1, n-1);
for i=1:n-2
    B(i, i+1) = 1;
end

A = h^(-2)*(A+B+B');
ya = A\b;
ya = [0;ya;1/3*exp(1)];
f = @(x) x*exp(x)/3;
exacty = zeros(n-1,1);
for i = 1:n-1
    exacty(i) = f(i*h);
end
exacty = [0;exacty;1/3*exp(1)];
sola = [ya, exacty];
plot(0:h:1, sola(:,1), 0:h:1, sola(:, 2))
hold on;
end

%% b)
solb = excerciseb(n1)

function solb = excerciseb(n)
A  = zeros(n-1, n-1);
h=1/n;
y = zeros(n-1, 1);
for i =1:n-1
    A(i,i) = -2*(h^2+1+h^(2)*2*(i*h)^2);
end
B = zeros(n-1, n-1);
for i=1:n-2
    B(i, i+1) = 1;
end

A = A+B+B';
b = zeros(n-1, 1);
b(1) = -1;
b(end) = -exp(1);

y = A\b;
f = @(x) exp(x^2);
exacty = zeros(n-1, 1);
for i = 1:n-1
    exacty(i) = f(h*i);
end

y = [1;y;exp(1)];
exacty = [1;exacty;exp(1)];

solb = [y, exacty];

plot(0:h:1, solb(:, 1), 0:h:1, solb(:, 2))
end






