% num comp hw5

%% 1.1-5
x = 1.5:.1:2.5;
y = -x.^4 + x.^3 +10;
plot(x,y)

%% 1.1cp - 2b
% bisection method

f = @(x) 6*x - sin(x) + 5;
a = -15;
b = 15;
tol = 0.5*10^-8;

fa = f(a);
fb = f(b);
if fa*fb > 0
    fprintf('No root found in this interval');
end

while (b-a)/2 > tol
    xc = (a+b)/2;
    fxc = f(xc);
    if fxc == 0
        break;
    end
    if fa*fxc < 0
        b = xc;
        fb = fxc;
    else
        a = xc;
        fa = fxc;
    end
end

fprintf('\nRoot = %d\n', xc)

%% problem 5a

x0 = 1.1;
tol = 10^-8;
g = @(x) x^3 + 2*x^2 - 2;

n = 1;
x1 = g(x0);
while abs(x1-x0)>tol
    x0 = x1;
    x1 = g(x0);
    n = n + 1;
end
fprintf('\nConverged to %d after %d iterations\n', x1, n);

%% problem 5b

x0 = 1.1;
tol = 10^-8;
g = @(x) x - (x^3 + 2*x^2 - x - 2)/(3*x^2 + 4*x - 1);

n = 1;
x1 = g(x0);
while abs(x1-x0)>tol
    x0 = x1;
    x1 = g(x0);
    n = n + 1;
end
fprintf('\nConverged to %d after %d iterations\n', x1, n);