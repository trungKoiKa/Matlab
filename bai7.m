x = [1 -3 3 14 -10 12];
y = [12 6 0 -1 -10 2];
eq = x == y;
neq = x ~= y;
gt = x > y;
lt = x < y;
gte = x >= y;
lte = x <= y;
isEqual = isequal(x, y)
numGreater = sum(x > y)
numLess = sum(x < y)
