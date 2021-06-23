function [s, err] = MiRaiz(A, nPasos)

if nargin == 1 
    nPasos = 10;
end

L = A; W = 1;

for k =1:nPasos
    L = (L+W)/2;
    W = A/L;
end

s = L;
err = s - sqrt(A);
end
