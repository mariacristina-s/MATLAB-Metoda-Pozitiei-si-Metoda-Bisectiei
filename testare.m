% Functia nr 1 pentru verificarea metodei bisectiei
f1 = @(x) cos(x) - x * exp(x);
a = 0;
b = 1;
err = 0.00001;
it = 40;
x = bisectie(f1, a, b, err, it);
fplot(f1, [0,1]);


% Functia nr 2 pentru verificarea metodei bisectiei
f2 = @(x) 3 * log2(x) + sqrt(x^2 + 3*x);
a = 0;
b = 1;
err = 0.00001;
it = 40;
x = bisectie(f2, a, b, err, it);
fplot(f2, [0,1]);


% % Functia nr 1 pentru verificarea metodei pozitiei false
f3 = @(x) sin(x) + cos(x) + exp(x) - 8;
a = 2;
b = 3;
err = 0.00001;
it = 30;
x = pozitie(f3, a, b, err, it);
fplot(f3, [2,3]);


% Functia nr 2 pentru verificarea metodei pozitiei false
f4 = @(x) x^3+sqrt(cos(x)+3);
a = -2;
b = 0;
err = 0.00001;
it = 30;
x = pozitie(f4, a, b, err, it);
fplot(f4, [-2,0]);


