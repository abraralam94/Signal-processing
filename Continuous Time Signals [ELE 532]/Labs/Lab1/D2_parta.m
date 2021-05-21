
for row = 1 : 1024
    for col = 1 : 100
        if abs(BCopy(row, col)) < 0.01
            BCopy(row, col) = 0;
        end
    end
end


