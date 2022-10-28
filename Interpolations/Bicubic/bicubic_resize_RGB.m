function out = bicubic_resize_RGB(img, p, q)
    % =========================================================================
    % Redimensioneaza imaginea img astfel �nc�t aceasta save fie de dimensiune p x q.
    % Imaginea img este colorata.
    % =========================================================================

    % TODO: Extrage canalul rosu al imaginii.
    
    RED = img(:, :, 1);
    
    % TODO: Extrage canalul verde al imaginii.
    
    GREEN = img(:, :, 2);
    
    % TODO: Extrage canalul albastru al imaginii.
    
    BLUE = img(:, :, 3);
    
    % TODO: Aplica functia bicubic pe cele 3 canale ale imaginii.
    
    RED_BICUBIC = bicubic_resize(RED, p, q);
    GREEN_BICUBIC = bicubic_resize(GREEN, p, q);
    BLUE_BICUBIC = bicubic_resize(BLUE, p, q);
    
    % TODO: Formeaza imaginea finala concatenand cele 3 canale de culori.
    
    out(:, :, 1) = RED_BICUBIC;
    out(:, :, 2) = GREEN_BICUBIC;
    out(:, :, 3) = BLUE_BICUBIC;
    
endfunction
