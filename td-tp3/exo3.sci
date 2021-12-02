exec('./functions/gausskij3b.sci')

A = rand(3,3)

b = rand(3,1)

x1 = A\b

x2 = gausskij3b(A,b)

disp("x1 = "+string(x1)+" x2 = "+string(x2))

disp(x1==x2)
