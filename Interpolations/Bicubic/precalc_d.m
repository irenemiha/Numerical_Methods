function [Ix, Iy, Ixy] = precalc_d(I)
    % =========================================================================
    % Prealculeaza matricile Ix, Iy si Ixy ce contin derivatele dx, dy, dxy ale 
    % imaginii I pentru fiecare pixel al acesteia.
    % =========================================================================
    
    % Obtinem dimensiunea imaginii.
    [m n nr_colors] = size(I);
    
    % TODO: Tranforma matricea I in double.
    
    I = cast(I, 'double');

    % TODO: Calculeaza matricea cu derivate fata de x Ix.
    
    Ix = zeros(m, n);
    Ix(1 : m, 2 : n - 1) = fx(I, 2 : n - 1, 1 : m);

    % TODO: Calculeaza matricea cu derivate fata de y Iy.
    
    Iy = zeros(m, n);
    Iy(2 : m - 1, 1 : n) = fy(I, 1 : n, 2 : m - 1);
    
    % TODO: Calculeaza matricea cu derivate fata de xy Ixy.
    
    Ixy = zeros(m, n);
    Ixy(2 : m - 1, 2 : n - 1) = fxy(I, 2 : n - 1, 2 : m - 1);

endfunction
