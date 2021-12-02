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
disp(L == L2)
disp(U == U2)
disp(L == L3)
disp(U == U3)
disp(L == L4)
disp(U == U4)
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
disp(L == L2)
disp(U == U2)

avg1 = 0
avg2 = 0
avg3 = 0
x1= []
x2= []
x3 = []

y = [3 10 100]
for i = 1: 100
    
    A = rand(3,3)
    tic()
    [L2,U2] = mylu3b(A)
    avg1 = avg1 + toc()
    tic()
    [L3,U3] = mylu1b(A)
    avg2 = avg2 + toc()    
    tic()    
    [L4,U4,P1] = mylu(A)
    avg3 = avg3 + toc()    
end
x1($+1) = avg1
x2($+1) = avg2
x3($+1) = avg3

avg1 = 0
avg2 = 0
avg3 = 0
for i = 1: 100
    
    A = rand(10,10)
    tic()
    [L2,U2] = mylu3b(A)
    avg1 = avg1 + toc()
    tic()
    [L3,U3] = mylu1b(A)
    avg2 = avg2 + toc()    
    tic()    
    [L4,U4,P1] = mylu(A)
    avg3 = avg3 + toc()    
end
x1($+1) = avg1
x2($+1) = avg2
x3($+1) = avg3

avg1 = 0
avg2 = 0
avg3 = 0
for i = 1: 100
    
    A = rand(100,100)
    tic()
    [L2,U2] = mylu3b(A)
    avg1 = avg1 + toc()
    tic()
    [L3,U3] = mylu1b(A)
    avg2 = avg2 + toc()    
    tic()    
    [L4,U4,P1] = mylu(A)
    avg3 = avg3 + toc()    
end
x1($+1) = avg1
x2($+1) = avg2
x3($+1) = avg3

scf(0);
plot(y,x1,'r')
plot(y,x2,'g')
plot(y,x3)
xgrid
xlabel('Nbre matrices')
ylabel('Temps execution')
legend('MyLu3b','MyLu1b','MyLu',2)
xs2pdf(gcf(),'MyLu3');

scf(1);
plot(y,x2,'g')
plot(y,x3)
xgrid
xlabel('Nbre matrices')
ylabel('Temps execution')
legend('MyLu1b','MyLu',2)
xs2pdf(gcf(),'MyLu');

//disp ("vrai A - (L*U)"+string(A-(L*U)))
/*
[L3,U3] = mylu1b(A)



disp("L3 = "+string(L3)) 

disp("U3 = "+string(U3)) */

