function out = proximal_2x2_RGB(img, STEP = 0.1)
    % ==============================================================================================
    % Aplica Interpolare Proximala pe imaginea 2 x 2 definita img cu puncte intermediare echidistante.
    % img este o imagine colorata RGB -Red, Green, Blue.
    % =============================================================================================

    % TODO: Extrage canalul rosu al imaginii.
    
    RED = img(:, :, 1);
    
    % TODO: Extrage canalul verde al imaginii.
    
    GREEN = img(:, :, 2);
    
    % TODO: Extrage canalul albastru al imaginii.
    
    BLUE = img(:, :, 3);
    
    % TODO: Aplic? functia proximal pe cele 3 canale ale imaginii.
    
    RED_2x2 = proximal_2x2(RED, STEP);
    GREEN_2x2 = proximal_2x2(GREEN, STEP);
    BLUE_2x2 = proximal_2x2(BLUE, STEP);
    
    % TODO: Formeaza imaginea finala concaten�nd cele 3 canale de culori.
    
    out(:, :, 1) = RED_2x2;
    out(:, :, 2) = GREEN_2x2;
    out(:, :, 3) = BLUE_2x2;
    
endfunction
