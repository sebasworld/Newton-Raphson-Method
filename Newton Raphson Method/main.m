function radacinile = main()
clear
clc
close all


%%% Plotez functia
xlabel('x');
ylabel('f(x)');
title('Newton-Raphson');
hold on
xplot = linspace(-15,20, 1000); %ii dau un interval functiei
yplot = f(xplot);
plot(xplot, yplot)
grid on
hold on
%%%

xincercari = linspace(-10, 10 , 5);% aici dau un nr de incercari sau aproximari initiale pe care le folosesc
                                   % mai apoi in for-ul de mai jos
radacinile = [];    % vector gol pt a stoca valorile finale                                 
for xinitial = xincercari   % acest for ia fiecare incercare si o introduce in alg Newton_Raphson dupa care
                            % mi le copiaza in vectorul gol creat;
    disp(['Incepand cu prima ghicire de valoare ', num2str(xinitial)])
    solutia = Newton_Raphson(xinitial);
    radacinile = [radacinile; solutia];
end
% practic, pentru fiecare aproximare luata ne va returna radacina cea mai
% apropiata de ea