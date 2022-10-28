# TEMA 2 - INTERPOLARE APLICATĂ PE IMAGINI

> implementarea tuturor task-urilor a constat în urmarea pașilor din schelet și a 
explicațiilor foarte bine detaliate în pdf-ul cu cerința;

> rezolvarea temei mi-a luat maximum o zi, datorită cerințelor foarte bine explicate;

> din păcate, interpolarea Lanczos n-am reușit să o fac, din pricina programului foarte încărcat de teme la alte materii;

## INTERPOLARE PROXIMALĂ

> această metodă de interpolare caută cel mai apropiat punct cunoscut dintr-o funcție 
f(x) și aproximează valoarea funcției din acesta;

> funcțiile implementate sunt:

- *proximal_2x2(f, STEP)* 
        -> am aplicat interpolarea proximală pe o imagine alb_negru 
        cu puncte intermediare aflate la aceeași distanță unul față de altul (STEP);

- *proximal_2x2 RGB(f, STEP)* 
        -> se aplică aceeași interploare ca mai sus, însă pe o imagine colorată;

- *proximal_resize(I, p, q)*
        -> redimensionează o imagine alb-negru din dimensiunile m x n în p x q;

- *proximal_resize RGB(I, p, q)*
        -> se aplică aceeași redimensionare ca mai sus, însă pe o imagine colorată;

- *proximal_rotate(I, angle)*
        -> rotește o imagine alb-negru la un unghi dat;

- *proximal_rotate_RGB(I, angle)*
        -> se aplică aceeași rotație, însă pe o imagine colorată;

## INTERPOLARE BICUBICĂ

> această metodă de interpolare reprezintă extensia interpolării cu funcții spline cubice la două dimensiuni;

> funcțiile implementate sunt:

- *precalc_d(I)* 
        -> calculează derivatele dx, dy, dxy ı̂n fiecare punct al imaginii, folosindu-mă de formulele din pdf;

- *bicubic coef(f, Ix, Iy, Ixy, x1, y1, x2, y2)*
        -> calculează matricea A de coeficienți de interpolare bicubică ı̂ntre cele 4 puncte;

- *bicubic resize(I, p, q)*
        -> redimensionează o imagine alb-negru din dimensiunile m x n în p x q;

- *bicubic resize RGB(I, p, q)*
        -> se aplică aceeași redimensionare ca mai sus, însă pe o imagine colorată;

- *fx(f, x, y)*
        -> se aproximeaza derivata fața de x a lui f in punctul (x, y);

- *fy(f, x, y)*
        -> se aproximeaza derivata fața de y a lui f in punctul (x, y);

- *fxy(f, x, y)*
        -> se aproximeaza derivata fața de x și y a lui f in punctul (x, y);