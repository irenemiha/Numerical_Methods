function [M A] = InitAdiacenta(nume)
  % Funcția InitAdiacenta pornește de la fișierul sursă și creează pe baza acestuia:
  % - M = matricea completată cu informațiile din fișierul deschis
  % - A = matricea de adiacență construită în funcție de matricea M
  
  % Deschiderea fișierului
  fisier_in = fopen(nume);
  N = str2num(fgetl(fisier_in));
  M = zeros(N);
  A = zeros(N);
  
  % Construirea matricei M
  for i = 1 : N
		  k = str2num(fgetl(fisier_in));
      M(1 : length(k), i) = k;
  endfor
  
  % Construirea matricei A
  for i = 3 : N
      for j = 1 : N
          if M(i, j) == 0
              continue;
          endif
          a = M(1, j);
          b = M(i, j);
          A(a, b) = 1;
      endfor
  endfor
  
endfunction
