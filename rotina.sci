// Clara Theisen - 00343701
// Rotina
function M =rotina(M)
     exec('pivotamentoParcial.sci');
    [linhasM colunasM] = size(M);
    M=pivotamentoParcial(M);
    for i=2:linhasM
        // calcula fator
        m(i,1)= M(i,1)/M(1,1);
        for j=1:colunasM
            // atualiza linha
            M(i,j)=M(i,j)-m(i,1)*M(1,j);
            end
    end
endfunction
