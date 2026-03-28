D = zeros(2, 7)

for i = 1:7
    D(1, i) = 0.5 + i / 2
    D(2, i) = acos(log2((0.5 + i / 2)/2))
end

disp(D);