// Clara Theisen - 00343701
// 07/06/2023
// Posição Falsa =================================================
function x = posicaoFalsa(x0,x1,d)
exec('funcao.sci');
// arbitra-se x0 e x1, tal que f(x0)f(x1) < 0)
// x0
x(1) = x0;

//x1 
x(2) = x1;

// definir a função calculada em função dos valores de x
f(1) = funcao(x(1));
f(2) = funcao(x(2));

// aproximação para x2
x(3) = (x(2)*f(1) - x(1)*f(2))/(f(1)-f(2));

// atualiza f para que seja calculado f(3) também 
f(3) = funcao(x(3));  

digse=d;

// atualiza x2 até que satisfaça o criterio de parada
while abs(f(3)) > digse
    // novas aproximações para x2
    x(3) = (x(2)*f(1) - x(1)*f(2))/(f(1)-f(2));
    // atualiza f para que sejam calculados os novos valores da função  
    f(3) = funcao(x(3)); 
    // se f(x0)f(x2) < 0, mant´em x0 inalterado e substitui-se x1 por x2
    if (f(1).*f(3)) < 0 then 
        x(2)= x(3);
    // caso contr´ario, manter x1 inalterado e substituir x0 por x2
    else
        x(1)= x(3);
    end
    // atualiza f para que sejam calculados os novos valores da função  
    f(1) = funcao(x(1));
    f(2) = funcao(x(2));      
end
endfunction

