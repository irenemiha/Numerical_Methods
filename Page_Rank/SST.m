function x = SST(R, Q_t)
  % Algoritmul SST implementat după formula din laboratorul 2
  
  [n n] = size(R);
  x = zeros(n, 1);
  
  for i = n : -1 : 1
      x(i) = (Q_t(i) - R(i, i + 1 : n) * x(i + 1 : n)) / R(i, i);
  endfor
  
endfunction
