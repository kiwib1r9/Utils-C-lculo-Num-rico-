// Clara Theisen - 00343701
function n = normCondMatriz(A,d)
    // funcao determinante
    //exec('determinante.sci');
    //d=determinante(A);
    // funcao produtorio sigma
    [linhasA colunasA]=size(A);
    pSigma=1;
    for i=1:linhasA
        sigmaLinha=0;
        // para cada linha
        for j=1:colunasA
            sigmaLinha=sigmaLinha+A(i,j)^2;
        end
        // produtorio
        pSigma=pSigma*sqrt(sigmaLinha);
    end
    // norm(A)=determinante/produtorio sigma
    n=d/pSigma;
    // interpretação: valores de módulo pequeno tendem a ter condicionamento ruim
endfunction
