function B = PR_Inv(A)
	% Functia care calculeaza inversa matricii A folosind factorizari Gram-Schmidt
	% Se va inlocui aceasta linie cu descrierea algoritmului de inversare

    [n, n] = size(A);
    Q = zeros(n);
    R = zeros(n);

    % Implementarea algoritmului Gram-Schmidt modificat, după modelul pseudocodului din laboratorul 3
    for i = 1 : n
        R(i, i) = norm(A(:, i));
        Q(:, i) = A(:, i) / R(i, i);
        R(i, i + 1 : n) = Q(:, i)' * A(:, i + 1 : n);
        A(:, i + 1 : n) = A(:, i + 1 : n) - Q(:, i) * R(i, i + 1 : n);
    endfor
    
    Q_t = Q';
    I = eye(n);
    
    % INVERSA MATRICEI A:
    % A = Q * R 
    % A * A^(-1) = I => Q * R * A^(-1) = I => R * A^(-1) = Q'
    
    % Calcularea inversei matricei A rezolvând n sisteme prin apelarea funcției SST
    % Avem n sisteme de forma R * A^(-1)(:, i) = Q_t(:, i)
    for i = 1 : n
        x = SST(R, Q_t * I(:, i));
        B(:, i) = x;
    endfor
    
endfunction
