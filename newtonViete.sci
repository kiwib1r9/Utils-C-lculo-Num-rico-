// Clara Theisen - 00343701
// 07/06/2023
// Newton-Viéte para polinomios ============================
function x = newtonViete(coef,x0,d)
// coef é o array de coeficientes de an até a0
exec('funcao.sci');
n=size(coef,'c')-1;
//x0
x=x0;
f = funcao(x);
// digse
digse=d;
// iterações
while (abs(f) > digse)
    derivf=0;
    // formula para derivar
    for i=1:n
        derivf = derivf*x + (n-i+1)*coef(i);
    end
    x = x - f/derivf; 
    f = funcao(x);
end 
endfunction
