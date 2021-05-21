function [a,b] = partFpart2(N)
%UNTITLED Takes a scalar input N and outputs filter vectors 'b' and 'a'
a = 1;
b = (1/N)*ones(N,1);
end