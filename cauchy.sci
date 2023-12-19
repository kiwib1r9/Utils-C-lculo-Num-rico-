// Clara Theisen - 00343701
// 07/06/2023
function c = cauchy(coef,digse)
// coef é a matriz de coeficientes do polinomio de an ate a0
// x0=0
x(1)=0;
// calculo de n para aplicação da fórmula
n=size(coef,'c')-1;
// proxima aproximação 
x(2)= abs(coef(n+1)/coef(1));
// iteração até criterio de parada
while abs(x(2) - x(1)) > digse
    // atualização da iteração anterior
    x(1)=x(2);
    // zerar xi para a soma
    x(2)=0;
    // formula de cauchy
    for i=1:n
        x(2)=x(2) + abs(coef(1+i)/coef(1))*(x(1)^(n-i));
    end
    // elevado na 1/n
    x(2)= x(2)^(1/n);
end
// retorno 
c=abs(x(2));
endfunction
