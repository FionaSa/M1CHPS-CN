exec('./functions/erreurs.sci')

disp("Erreurs matrice 3: ")
[erreur_ar,erreur_av]=erreurs(3)
    disp("    Erreur arrière: " + string(erreur_ar)+" avant:"+ string(erreur_av))

disp("Erreurs matrice 100: ")
[erreur_ar,erreur_av]=erreurs(100)
disp("      Erreur arrière:" +string(erreur_ar)+" avant:"+ string(erreur_av))


disp("Erreurs matrice 1000: ")
[erreur_ar,erreur_av]=erreurs(1000)
disp("     Erreur arrière:" + string(erreur_ar)+" avant:"+ string(erreur_av))

/*
[erreur_ar,erreur_av]=erreurs(10000)
disp("Erreurs matrice 10000: "+ ascii(10) +"     Erreur arrière:" + string(erreur_ar)+" avant:"+ string(erreur_av))
*/
