// Clara Theisen - 00343701
// Inversa
function I=inversa(A)
    // dada uma matriz quadrada A, retorna a matriz inversa I
    // utilizando o escalonamento 
    exec('eliminacaoGauss.sci');
    [linhasA colunasA] = size(A);
    // cria identidade
    I=eye(linhasA,linhasA);
    // passa A matriz extendida para a funcao eliminação de gauss
    M=eliminacaoGauss(A,I);
    // agora, com a matriz escalonada, divido cada linha pelo elemento da diagonal
    // para ter uma diagonal de 1s
    for i=1:linhasA
        M(i,:)=M(i,:)/M(i,i);
    end
    // eliminação dos elementos acima dos pivos
    for j=2:colunasA
        for i=1:j-1
            M(i,:)=M(i,:)-M(i,j).*M(j,:);
        end
    end
    I=M(:,colunasA+1:colunasA*2);
endfunction

