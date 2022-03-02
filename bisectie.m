function c = bisectie(y, a, b, tol, max_iter);

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
    
% Daca este in regula, continuam cu algoritmul
else
    % Verificam functia la mijlocul intervalului (noua radacina)
    c = (a + b) / 2;
    fc = feval(y, c);
    
    % Daca |f(c)| > eroarea tolerata continuam sa cautam solutia,
    % altfel, c este solutia noastra
    while abs(fc) > tol
        iter = iter + 1; 
        % f(a) * f(c) < 0, atunci solutia se afla intre a si c
        if fa * fc < 0
            b = c;
        else
            % altfel, solutia se afla intre b si c
            a = c;
        end
        % Cautam mijlocul iar si evaluam functia in acest punct
        c = (a + b) / 2;
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