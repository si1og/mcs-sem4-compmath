nodes = 7;

V = zeros(2, nodes);
h = 0.5;

for i = 1:nodes
    x = 1 + (i - 1) * h;
    V(1, i) = x;
    V(2, i) = acos(log2(x / 2));
end

first = V(1, 1);
last = V(1, end);

disp(V);