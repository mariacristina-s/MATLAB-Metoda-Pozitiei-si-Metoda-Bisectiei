function c = pozitie(y, a, b, tol, max_iter);

% tol = eroarea tolerabila
% max_iter = numarul maxim de iteratii permise
iter = 0;

% Evaluam functiile in a si in b, la capete
fa = feval(y, a);
fb = feval(y, b);

% Verificam daca functia schimba semnul la acele capete
% Pentru a vedea daca exista solutie in acest interval sau nu
if fa * fb > 0
    disp('Intervalul ales nu este bun!');

else
    % Reevaluam noua posibila radacina
    c = a - (a - b) * fa / (fa - fb);
    fc = feval(y, c);
    
    % Daca |f(c)| > eroarea tolerata continuam sa cautam solutia,
    % altfel, c este solutia noastra
    while abs(fc) > tol
        % Daca f(a) * f(c) < 0, atunci solutia se afla intre a si c
        if fa * fc < 0
            b = c;
            fb = feval(y, b);
        % Altfel, solutia este intre b si c
        else
            a = c;
            fa = feval(y, a);
        end
        % Cautam o posibila radacina iar si evaluam functia in acest punct
        c = a - (a - b) * fa / (fa - fb);
        fc = feval(y, c);
    end
    
    % Afisam solutia gasita
    % Verificam nr de iteratii
    if iter > max_iter
        disp('S-a atins numarul maxim de iteratii!');
        error('Eroare');
    else
        disp('Solutia este ');
        disp(c);
    end
end
end
