function y = Apartenenta(x, val1, val2)
	% Functia care primeste ca parametrii x, val1, val2 si care calculeaza valoarea functiei membru in punctul x.
	% Stim ca 0 <= x <= 1

  % Aflăm a și b verificând continuitatea funcției u(x) calculând limitele laterale
  % Când x urcă spre val1, limita este 0 => a * val1 + b = 0;
  % Când x coboară spre val2, limita este 1 => a * val2 + b = 1;
  % Rezolvând sistemul de ecuații de mai sus, valorile lui a și b sunt cele de mai jos:
  
  a = -1 / (val1 - val2);
  b = val1 / (val1 - val2);
  
  % Tratarea fiecărui caz din cele 3 
	if x >= 0 && x < val1
      y = 0;
  endif
  
  if x >= val1 && x <= val2
      y = a * x + b;
  endif
  
  if x > val2 && x <= 1
      y = 1;
  endif

endfunction
