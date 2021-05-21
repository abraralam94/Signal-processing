% Threshoold Th is 0.08
Th = 0.08;
num_set_to_zero = 0;

for row = 1 : 20000
    if abs(x_audioCopy(row, 1)) < 0.08
        x_audioCopy(row, 1) = 0.0;
        num_set_to_zero = num_set_to_zero + 1;
    end
end
num_set_to_zero
clear num_set_to_zero
    
        