res = 0.498;
X1 = [res res];
n = 10000;
 
A = rand(1,n) < 0.8;
B = rand(1,n) < 0.3;
 
cFF = (rand(1,n) < 0.2);
cFT = (rand(1,n) < 0.4);
cTF = (rand(1,n) < 0.7);
cTT = (rand(1,n) < 0.9);
 
dF = rand(1,n) < 0.7;
dT = rand(1,n) < 0.2;
 
eF = rand(1,n) < 0.1;
eT = rand(1,n) < 0.8;
 
C = (~A & ~B & cFF) | (~A & B & cFT) | (A & ~B & cTF) | (A & B & cTT);
D = (~C & dF | C & dT);
E = (~D & eF) | (D & eT);
 
X2 = cumsum(A & ~B & C & ~D & ~E) ./ cumsum(~D & ~E);

r1 = [0 n];
r2 = [1:n];

figure
hold on
plot(r1, X1, 'r')
plot(r2, X2, 'b')
 
hold off
