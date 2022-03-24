function yderiv = fderiv(x)
dx = 0.01; % dx trebuie sa fie o valoare mica;
yderiv = (f(x+dx) - f(x-dx))/(2*dx);
end

% aici aflu derivata cu ajutorul formulei de centrare diferentiala.