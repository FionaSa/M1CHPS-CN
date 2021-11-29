exec('./functions/matmat3b.sci')
exec('./functions/matmat2b.sce')
exec('./functions/matmat1b.sce')

A = rand(3,3)
B = rand(3,3)
disp("Résultat "+string(A)+" * "+string(B)+"nb (3) = "+string(matmat3b(A,B)))

// Mesures de perf avec 3 boucles

disp("3 boucles")
avg_3_3 = 0
for i = 1 : 10
    tic()
    matmat3b(rand(3,3),rand(3,3))
    avg_3_3=avg_3_3 +toc()
end
avg_3_3 = avg_3_3/10
disp("    3 = "+string(avg_3_3))

avg_3_10 = 0
for i = 1 : 10
    tic()
    matmat3b(rand(10,10),rand(10,10))
    avg_3_10=avg_3_10 +toc()
end
avg_3_10 = avg_3_10/10
disp("    10 = "+string(avg_3_10))


avg_3_100 = 0
for i = 1 : 10
    tic()
    matmat3b(rand(100,100),rand(100,100))
    avg_3_100=avg_3_100 +toc()
end    
avg_3_100 = avg_3_100/10
disp("    100 = "+string(avg_3_100))

/*
avg = 0
for i = 1 : 10
    tic()
    matmat3b(rand(500,500),rand(500,500))
    avg=avg +toc()
end       
disp("    1000 = "+string(avg/10))
*/
// Mesure de perfs avec 2 boucles

disp("2 boucles:")
avg_2_3 = 0
for i = 1 : 10
    tic()
    matmat2b(rand(3,3),rand(3,3))
    avg_2_3=avg_2_3 +toc()
end
avg_2_3= avg_2_3/10
disp("    3 = "+string(avg_2_3))

avg_2_10 = 0
for i = 1 : 10
    tic()
    matmat2b(rand(10,10),rand(10,10))
    avg_2_10=avg_2_10 +toc()
end
avg_2_10 = avg_2_10/10
disp("    10 = "+string(avg_2_10))

avg_2_100 = 0
for i = 1 : 10
    tic()
    matmat2b(rand(100,100),rand(100,100))
    avg_2_100=avg_2_100 +toc()
end    
avg_2_100 = avg_2_100/10
disp("    100 = "+string(avg_2_100))

/*
avg = 0
for i = 1 : 10
    tic()
    matmat2b(rand(500,500),rand(500,500))
    avg=avg +toc()
end       
disp("    1000 = "+string(avg/10))
*/
// Mesure de perfs avec 1 boucle

disp("1 boucle:")
avg_1_3 = 0
for i = 1 : 10
    tic()
    matmat1b(rand(3,3),rand(3,3))
    avg_1_3=avg_1_3 +toc()
end
avg_1_3 = avg_1_3/10
disp("    3 = "+string(avg_1_3))

avg_1_10 = 0
for i = 1 : 10
    tic()
    matmat1b(rand(10,10),rand(10,10))
    avg_1_10=avg_1_10 +toc()
end
avg_1_10 = avg_1_10/10
disp("    10 = "+string(avg_1_10))

avg_1_100 = 0
for i = 1 : 10
    tic()
    matmat1b(rand(100,100),rand(100,100))
    avg_1_100=avg_1_100 +toc()
end    
avg_1_100 = avg_1_100/10
disp("    100 = "+string(avg_1_100))

disp("Comparaison entre 1 boucle et 2 boucles (1/2)")

disp("3 elements  : "+string((avg_2_3/avg_1_3)*100)+"%")
disp("10 elements : "+string((avg_2_10/avg_1_10)*100)+"%")
disp("100 elements : "+string((avg_2_100/avg_1_100)*100)+"%")

disp("Comparaison entre 1 boucle et 3 boucles (1/3)")

disp("3 elements : "+string((avg_3_3/avg_1_3)*100)+"%")
disp("10 elements : "+string((avg_3_10/avg_1_10)*100)+"%")
disp("100 elements : "+string((avg_3_100/avg_1_100)*100)+"%")

disp("Evolution 3 boucles en fonction des différentes tailles ")
disp("3-10 elements(3/10) : "+string((avg_3_3/avg_3_10)*100)+"%")
disp("10-100 elements (10/100) : "+string((avg_3_10/avg_3_100)*100)+"%")
/*
avg = 0
for i = 1 : 10
    tic()
    matmat1b(rand(500,500),rand(500,500))
    avg=avg +toc()
end       
disp("    1000 = "+string(avg/10))
*/
