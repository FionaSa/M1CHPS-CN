exec('./functions/matmat3b.sci')
exec('./functions/matmat2b.sce')
exec('./functions/matmat1b.sce')

A = rand(3,3)
B = rand(3,3)
disp("Résultat "+string(A)+" * "+string(B)+"nb (3) = "+string(matmat3b(A,B,3,3,3)))

// Mesures de perf avec 3 boucles

disp("3 boucles")
tic()
matmat3b(rand(3,3),rand(3,3),3,3,3)
disp("    3 = "+string(toc()))

tic()
matmat3b(rand(10,10),rand(10,10),10,10,10)
disp("    10 = "+string(toc()))

tic()
matmat3b(rand(100,100),rand(100,100),100,100,100)
disp("    100 = "+string(toc()))

tic()
matmat3b(rand(500,500),rand(500,500),500,500,500)
disp("    1000 = "+string(toc()))

// Mesure de perfs avec 2 boucles

disp("2 boucles:")
tic()
matmat2b(rand(3,3),rand(3,3),3,3)
disp("    3 = "+string(toc()))

tic()
matmat2b(rand(10,10),rand(10,10),10,10)
disp("    10 = "+string(toc()))

tic()
matmat2b(rand(100,100),rand(100,100),100,100)
disp("    100 = "+string(toc()))

tic()
matmat2b(rand(500,500),rand(500,500),500,500)
disp("    1000 = "+string(toc()))


// Mesure de perfs avec 1 boucle

disp("1 boucle:")
tic()
matmat1b(rand(3,3),rand(3,3),3)
disp("    3 = "+string(toc()))

tic()
matmat1b(rand(10,10),rand(10,10),10)
disp("    10 = "+string(toc()))

tic()
matmat1b(rand(100,100),rand(100,100),100)
disp("    100 = "+string(toc()))

tic()
matmat1b(rand(500,500),rand(500,500),500)
disp("    1000 = "+string(toc()))
