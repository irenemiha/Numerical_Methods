function R = Algebraic(nume, d)
	% Functia care calculeaza vectorul PageRank folosind varianta algebrica de calcul.
	% Intrari: 
	%	-> nume: numele fisierului in care se scrie;
	%	-> d: probabilitatea ca un anumit utilizator sa continue navigarea la o pagina urmatoare.
	% Iesiri:
	%	-> R: vectorul de PageRank-uri acordat pentru fiecare pagina.

  % Deschiderea fișierului
  fisier_in = fopen(nume);
  N = str2num(fgetl(fisier_in)); % numărul de noduri din graful dat în fișier
  M = zeros(N); % matricea construită cu informațiile din fișier
  A = zeros(N); % matricea de adiacență construită cu informațiile din matricea M
  
  [M A] = InitAdiacenta(nume); % crearea matricilor M Si A
  
  L = M(2, :); % vector care păstrează numărul de vecini ai nodului cu indexul respectiv
   
  % Modificarea vectorului L astfel încât să nu fie luate în calcul și link-urile care duc spre aceeași pagină
  for i = 1 : N
      if A(i, i) == 1
          A(i, i) = 0;
          L(i) = L(i) - 1;
      endif
  endfor

  % Implementarea algoritmului explicat la secțiunea "Computation" extras din prima resursă pusă la dispoziție în cerința temei, 
  % aplicat însă pentru inversarea matricei T
  Mat = zeros(N);
  outbound = 1 ./ L;
  K = diag(outbound); % matricea diagonală care păstrează gradurile exterioare ale nodurilor
  Mat = (K * A)';
  
  % Aplicarea formulelor
  T = eye(N) - d * Mat;
  Inv_T = PR_Inv(T);

  R = Inv_T * ((1 - d) / N) * ones(N);
  
endfunction