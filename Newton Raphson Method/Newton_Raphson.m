%%% Aici am functia de calcul a unei radacini cu Newton-Rapshon:
% xinitial = ghicirea initiala a radacinii;
% iter = contor al iteratiilor;
% err = eroarea / toleranta aproximarii;
% x0 = valoarea intuita pe care o folosim in bucla while;
% solutia = radacina cea mai aproape gasita de valoarea intuita;
function solutia = Newton_Raphson(xinitial)
iter = 1;
err = abs(f(xinitial));
x0 = xinitial;
while (iter < 1000) && (err > 1e-4)  %presupun in bucla ca maximul de iteratii este 1000 si eroarea trebuie
    plot(x0,f(x0),'rx')              %sa fie mai mare de 0.0001;
    x0 = x0 - f(x0)/fderiv(x0);% folosim functiile f, fderiv si formula Newton-Raphson;
    err = abs(f(x0));  % aici recomputez eroarea pt noua valoarea a lui x0 , care se modifica pe masura 
    iter = iter +1;    % aici incrementam iter;
end
solutia = x0;
end