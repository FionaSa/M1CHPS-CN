function [err_ar,err_av]=erreurs(nb)
    A = rand(nb,nb)
    
    xex = rand(nb,1)
    
    b = A * xex
    
    x = A\b
    err_av = norm(xex-x)/norm(xex)
    
    err_ar = norm(b-A*x) / (norm(A)*norm(x))

endfunction
