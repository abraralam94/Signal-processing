function [lambda] = parta3(R,C)

%Determine the coefficients of characteristic equation
A = [1, (1/R(1)+1/R(2)+1/R(3))/C(2), 1/(R(1)*R(2)*C(1)*C(2))];

%Determine characteristic roots
lambda = roots(A);
end


