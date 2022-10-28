function [R1 R2] = PageRank(nume, d, eps)
	% Calculeaza indicii PageRank pentru cele 3 cerinte
	% Scrie fisierul de iesire nume.out

  % Deschiderea fișierului
  fisier_in = fopen(nume);
  N = str2num(fgetl(fisier_in));
  
  % Parcurgerea liniilor corespunzătoare matricei de noduri
  for i = 1 : N
		  line = fgetl(fisier_in);
  endfor
  
  % Citirea valorilor val1 și val2
  val1 = str2num(fgetl(fisier_in));
  val2 = str2num(fgetl(fisier_in));
  
  % Apelarea funcțiilor care calculează page rank-ul paginilor web 
  R1 = Iterative(nume, d, eps);
  R2 = Algebraic(nume, d);
  R2 = R2(:, N);
  
  % Creearea fișierului destinat output-ului
  output = strcat(nume, ".out");
  fisier_out = fopen(output, "w");
  
  % Printarea lui N pe prima linie a output-ului
  fprintf(fisier_out, "%d\n", N);
  
  % Printarea vectorului R1 pe următoarele linii
  for i = 1 : N
      fprintf(fisier_out, "%0.6f\n", R1(i));
  endfor
  
  fprintf(fisier_out, "\n");
  
  % Printarea vectorului R2 pe următoarele linii
  for i = 1 : N
      fprintf(fisier_out, "%0.6f\n", R2(i));
  endfor
  
  fprintf(fisier_out, "\n");
  
  % Creearea vectorului PR2 în care salvăm vectorul R2 inițial, sortat descrescător  
  [PR2 index] = sort(R2, 'descend');
 
  % Printarea elementelor cerute în cerință pe următoarele linii
  for i = 1 : N
      fprintf(fisier_out, "%d %d %0.6f\n", i, index(i), Apartenenta(PR2(i), val1, val2));
  endfor
  
  fclose(fisier_out);

endfunction


  
  