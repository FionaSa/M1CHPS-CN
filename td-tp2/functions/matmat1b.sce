function [C]= matmat1b(A,B)
    m = size(A,'r')
    C = zeros(m,m)
    for i = 1 : m
        C(i,:) = A(i,:)*B + C(i,:);
    end
endfunction
