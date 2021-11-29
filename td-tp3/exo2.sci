exec('./functions/usolve.sci')
exec('./functions/lsolve.sci')

A = rand(5,5)

L = tril(A)

U = triu(A)

b = rand(5,1)

x1 = L\b

x2 = lsolve(L,b)

disp ("x1 ="+string(x1)+" x2 = "+string(x2))

disp ( x1 == x2)

x1 = U\b

x2 = usolve(U,b)

disp ("x1 ="+string(x1)+" x2 = "+string(x2))

disp ( x1 == x2)
