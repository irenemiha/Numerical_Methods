function R = Iterative(nume, d, eps)
	% Functia care calculeaza matricea R folosind algoritmul iterativ.
	% Intrari:
	%	-> nume: numele fisierului din care se citeste;
	%	-> d: coeficentul d, adica probabilitatea ca un anumit navigator sa continue navigarea (0.85 in cele mai multe cazuri)
	%	-> eps: eruarea care apare in algoritm.
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
  
  L = L';
  
  % Implementarea algoritmului explicat la secțiunea "Computation" extras din prima resursă pusă la dispoziție în cerința temei
  Mat = zeros(N);
  R0 = ones(N, 1);
  R0 = R0 * (1 / N);
  
  for i = 1 : N
      for j = 1 : N
          if A(j, i) == 1
              Mat(i, j) = 1 ./ L(j);
          endif
      endfor
  endfor
  
  R = d * Mat * R0 + ((1 - d) / N * ones(N, 1));

  while norm(R - R0) > eps % recalcularea lui R până când se atinge gradul de eroare dorit
      R0 = R;
      R = d * Mat * R0 + ((1 - d) / N * ones(N, 1));
  end
  
 endfunction