// Clara Theisen - 00343701
// 07/06/2023
function x=secantes(x0,x1,d)
// Métodos das Secantes ==============================================
exec('funcao.sci');
// arbitra-se x0 e x1, tal que sejam próximos da raiz 
//(visualizar pelo gráfico)
// x0
x(1) = x0;
//x1 
x(2) = x1;

// definir a função calculada em função dos valores de x
f(1) = funcao(x(1));
f(2) = funcao(x(2));

// aproximação para x2
x(3) = x(2) - (x(2)-x(1))*f(2)/(f(2)-f(1));

// atualiza f para que seja calculado f(3) também 
f(3) = funcao(x(3));

// define o critério de parada
digse = d;

// atualiza x2 até que satisfaça o criterio de parada
while abs(f(3)) > digse
    x(1) = x(2);
    x(2) = x(3);
    
    // atualiza f para que sejam calculados os novos valores da função  
    f(1) = funcao(x(1));
    f(2) = funcao(x(2));  

    // novas aproximações para x2
    x(3) = x(2) - (x(2)-x(1))*f(2)/(f(2)-f(1));
    // atualiza f para que sejam calculados os novos valores da função  
    f(3) = funcao(x(3));       
end

endfunction
