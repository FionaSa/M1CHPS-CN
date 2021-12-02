exec('./functions/erreurs.sci')

    A = rand(3,3)
    
    xex = rand(3,1)
    
    b = A * xex
    disp(A)
    disp(xex)
    disp(b)

x1 = []
x2 = []
y = [ 3 100 1000]
disp("Erreurs matrice 3: ")

erreur_ar = 0
erreur_av = 0
avg_av = 0
avg_ar = 0 
for i=1: 10
    [erreur_ar,erreur_av]=erreurs(3)
        avg_av = avg_av + erreur_av
        avg_ar = avg_ar + erreur_ar
        
end
        disp("    Erreur arrière: " + string(avg_ar/10)+" avant:"+ string(avg_av/10))
x1($+1) = avg_ar/10
x2($+1) = avg_av/10

disp("Erreurs matrice 100: ")

avg_av = 0
avg_ar = 0 

for i=1: 10
    [erreur_ar,erreur_av]=erreurs(100)
        avg_av = avg_av + erreur_av
        avg_ar = avg_ar + erreur_ar    
end
        disp("    Erreur arrière: " + string(avg_ar/10)+" avant:"+ string(avg_av/10))
x1($+1) = avg_ar/10
x2($+1) = avg_av/10


disp("Erreurs matrice 1000: ")
avg_av = 0
avg_ar = 0 
for i=1: 10
    [erreur_ar,erreur_av]=erreurs(1000)
        avg_av = avg_av + erreur_av
        avg_ar = avg_ar + erreur_ar    
end
        disp("    Erreur arrière: " + string(avg_ar/10)+" avant:"+ string(avg_av/10))
x1($+1) = avg_ar/10
x2($+1) = avg_av/10


scf(0);
plot(y,x2,'g')
xgrid
xlabel('Nbre matrices')
ylabel('Erreur avant')
xs2pdf(gcf(),'erreurs_avant');


scf(1);
plot(y,x1,'r')
xgrid
xlabel('Nbre matrices')
ylabel('Erreur arrière')
xs2pdf(gcf(),'erreurs_ar');
/*
[erreur_ar,erreur_av]=erreurs(10000)
disp("Erreurs matrice 10000: "+ ascii(10) +"     Erreur arrière:" + string(erreur_ar)+" avant:"+ string(erreur_av))
*/
