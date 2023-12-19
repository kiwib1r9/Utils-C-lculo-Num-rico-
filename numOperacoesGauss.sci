// Clara Theisen - 00343701
// numero de operações na eliminação de gauss dada a dimensão da matriz n
function op=numOperacoesGauss(n)
// na triangularização
divt=(n*(n-1))/2;
multt=(1/3)*(n.^3-n);
// nas substituições
divs=n;
mults=(n*(n-1))/2;
op=divt+multt+divs+mults;
endfunction
