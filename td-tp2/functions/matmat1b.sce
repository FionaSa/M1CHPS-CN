function [C]= matmat1b(A,B,m)
    C = zeros(m,m)
    for i = 1 : m
        C(i,:) = A(i,:)*B + C(i,:);
    end
endfunction
