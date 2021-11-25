exec('./functions/mylu3b.sci')

A = rand(3,3)

L = tril(A)

U = triu(A)

[L2,U2] = mylu3b(A)

disp("L = "+string(L)+" L2 = "+string(L2)) 

disp(L == L2)

disp("U = "+string(U)+" U2 = "+string(U2)) 

disp( U == U2)

disp (A-(L2.*U2))
