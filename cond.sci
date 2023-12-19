// Clara Theisen - 00343701
function c=cond(A)
    //norma max de A
    exec('norma.sci');
    normaA=norma(A);
    //norma max da inversa de A
    exec('inversa.sci');
    I=inversa(A);
    normaInvA=norma(I);
    //cond é produto das normas calculadas
    c=normaA*normaInvA;
    //interpretação: quanto maior o módulo, pior o condicionamento da matriz
endfunction
