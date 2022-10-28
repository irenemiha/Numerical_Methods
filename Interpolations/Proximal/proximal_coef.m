function a = proximal_coef(f, x1, y1, x2, y2)
    % =========================================================================
    % Calculeaza coeficientii a pentru Interpolarea Proximala intre punctele
    % (x1, y1), (x1, y2), (x2, y1) si (x2, y2).
    % =========================================================================
    
    % TODO: Calculeaza matricea A.
    
    A = ones(4, 4);
    
    for i = 1 : 4
        A(i, 1) = 1;
    endfor
    
    A(1 : 2, 2) = x1;
    A(3 : 4, 2) = x2;
    A(1, 3) = A(3, 3) = y1;
    A(2, 3) = A(4, 3) = y2;
    A(1, 4) = x1 * y1;
    A(2, 4) = x1 * y2;
    A(3, 4) = x2 * y1;
    A(4, 4) = x2 * y2;
    
    % TODO: Calculeaza vectorul b.   
   
    b = ones(4, 1);
    
    b(1) = f(x1, y1);
    b(2) = f(x1, y2);
    b(3) = f(x2, y1);
    b(4) = f(x2, y2);
    
    
    % TODO: Calculeaza coeficientii.
    
    a = ones(4, 1);
    INV_A = Invert(A);
    a = INV_A * b;
    
endfunction
