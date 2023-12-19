// Clara Theisen - 00343701
function n=norma(A)
    // somar elementos de cada linha
    [linhasA colunasA]=size(A);
    soma=zeros(linhasA,1);
    for i=1:linhasA
        for j=1:colunasA
            soma(i)=soma(i)+abs(A(i,j));
        end
    end
    // selecionar o maior
    n=max(soma);
endfunction
