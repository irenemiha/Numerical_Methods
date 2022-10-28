function A = bicubic_coef(f, Ix, Iy, Ixy, x1, y1, x2, y2)
    % =========================================================================
    % Calculeaz? coeficien?ii de Interpolare Bicubic? pentru 4 puncte al?turate
    % =========================================================================

    % TODO: Calculeaz? matricile intermediare.
    
    Mat_1 = [1 0 0 0; 0 0 1 0; -3 3 -2 -1; 2 -2 1 1];
    Mat_2 = [1 0 -3 2; 0 0 3 -2; 0 1 -2 1; 0 0 -1 1]; 
    Mat_3 = zeros(4, 4);
    
    Mat_3(:, 1) = [f(y1, x1) f(y1, x2) Ix(y1, x1) Ix(y1, x2)];
    Mat_3(:, 2) = [f(y2, x1) f(y2, x2) Ix(y2, x1) Ix(y2, x2)];
    Mat_3(:, 3) = [Iy(y1, x1) Iy(y1, x2) Ixy(y1, x1) Ixy(y1, x2)];
    Mat_3(:, 4) = [Iy(y2, x1) Iy(y2, x2) Ixy(y2, x1) Ixy(y2, x2)];
    
    % TODO: Converte?te matricile intermediare la double.
    
    Mat_1 = cast(Mat_1, 'double');
    Mat_2 = cast(Mat_2, 'double');
    Mat_3 = cast(Mat_3, 'double');
    
    % TODO: Calculeaz? matricea final?.
    
    A = Mat_1 * Mat_3 * Mat_2;

endfunction