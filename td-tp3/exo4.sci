exec('./functions/mylu3b.sci')
exec('./functions/mylu1b.sci')
exec('./functions/mylu.sci')
//atomsSystemUpdate()
//atomsInstall("MatrixMarket")

A = rand(3,3)
[L,U,P] = lu(A)
disp(A)
[L2,U2] = mylu3b(A)
[L3,U3] = mylu1b(A)
[L4,U4,P1] = mylu(A)
disp("L= ")
disp(L)
disp("L2 = ")
disp(L2) 
disp("L3 = ")
disp(L3) 
disp("L4 = ")
disp(L4) 
disp("U = ")
disp(U)
disp("U2 = ")
disp(U2) 
disp("U3 = ")
disp(U3) 
disp("U4 = ")
disp(U4)
disp("P = ")
disp(P)
disp("P1 = ")
disp(P1)

// Faire erreur arrière et erreur avant
disp ("A - (L*U)"+string(A-(L2*U2)))
disp ("A - (L3*U3)"+string(A-(L3*U3)))


disp(mminfo('./matrix/FX_March2010/FX_March2010.mtx'))
[B,row,col] = mmread('./matrix/FX_March2010/FX_March2010.mtx')
disp("B = ")
disp(B)
disp(row)
disp(col)

[L,U] = lu(B)

[L2,U2] = mylu1b(B)

disp("L= ")
disp(L)
disp("L2 = ")
disp(L2) 
disp("U = ")
disp(U)
disp("U2 = ")
disp(U2) 
//disp ("vrai A - (L*U)"+string(A-(L*U)))
/*
[L3,U3] = mylu1b(A)



disp("L3 = "+string(L3)) 

disp("U3 = "+string(U3)) */

