// Clara Theisen - 00343701
// 07/06/2023
function f = kojima(coef)
// coef é a matriz de coeficientes do polinomio de an ate a0
// calculo de n para aplicação da fórmula
n=size(coef,'c')-1;
for i=1:n
    k(i)=abs(a(1+i)/a(1))^(1/i);
end
// grava maior valor de k
maximo(1) = max(k);
// grava indice do maior valor
[l c] = max(k);
// acha segundo maior valor
kn=k;
kn(c)=-1;
maximo(2)= max(kn);
// retorno 
f = maximo(1) + maximo(2);
endfunction
