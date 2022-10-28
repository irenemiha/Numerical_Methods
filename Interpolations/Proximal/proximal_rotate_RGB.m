function out = proximal_rotate_RGB(img, rotation_angle)
    % =========================================================================
    % Aplica Interpolarea Proximala pentru a roti o imagine RGB cu un unghi dat.
    % =========================================================================
    
    % TODO: Extrage canalul rosu al imaginii.
    
    RED = img(:, :, 1);
    
    % TODO: Extrage canalul verde al imaginii.
    
    GREEN = img(:, :, 2);
    
    % TODO: Extrage canalul albastru al imaginii.
    
    BLUE = img(:, :, 3);
    
    % TODO: Aplica rotatia pe fiecare canal al imaginii.
    
    ROTATE_RED = proximal_rotate(RED, rotation_angle);
    ROTATE_GREEN = proximal_rotate(GREEN, rotation_angle);
    ROTATE_BLUE = proximal_rotate(BLUE, rotation_angle);
    
    % TODO: Formeaza imaginea finala concaten�nd cele 3 canale de culori.
    
    out(:, :, 1) = ROTATE_RED;
    out(:, :, 2) = ROTATE_GREEN;
    out(:, :, 3) = ROTATE_BLUE;
    
endfunction