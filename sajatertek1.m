A = [69 180 30; -28 -73 -12; 11 30 8];
[U,V] = eig(A)
x = U(:,3) %legnagyobb sajátérték(V) miatt 3. oszlop(U)
x = x/x(3) %3. koordinátának 1nek kell lenni