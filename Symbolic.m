%symbolic toolbox

%syms a b c x %the symbolic package where you can store stuff as symbols
%y = a*x^2+b*x+c
%solve(y==0,x)
%diff(y,x,1) %differentiating y wrt x for 1 derivative

%syms x(t) t
%D2x = diff(x,t,2)
%x(t) is a place holder


%syms t s
%f = -1.25 + 3.5*t*exp(-2*t)+1.25*exp(-2*t)
%F = laplace(f) %laplace transform
%can use simplify(F)
%can use pretty(F)
%g = ilaplace(F) %inverse laplace

syms x(t) t
Dx = diff(x,t);
D2x = diff(Dx, t); %derivitive of the derivative
xeq = D2x + x == cos(2*t)
%one equal sign is assignment two is checking for equality

eqLT = laplace(xeq) %the laplace transform

syms Fs %defining new variable
eqLT = subs(eqLT, laplace(x), Fs); %easier to read as variable Fs
    %changes the laplace(x) stuff to the variable Fs
    
X = solve(eqLT, Fs); %solving for Fs
x_soln = ilaplace(X); %inverse transform

%now sub in initial conditions
vars = [x(0), Dx(0)];
vals = [1,0];
xFinal = subs(x_soln, vars, vals) %substitute vars aka x(0) and Dx(0) into soltn

ezplot(xFinal, [0, 10]) %where 0 to 10 is the range over which plotted

