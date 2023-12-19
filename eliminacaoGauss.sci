// Clara Theisen - 00343701
// 26/06
// Eliminação de Gauss======================================
// Função troca de linhas
function a = trocaLinhas(a,origem,destino)
    // troca a linha destino pela origem e vice-versa, 
    // devolvendo a matriz atualizada
    aux=a(origem,:);
    a(origem,:)=a(destino,:);
    a(destino,:)=aux;
endfunction
// Função pivotamento parcial
function a = pivotamentoParcial(a)
    //exec('trocaLinhas.sci');
    // acha o pivo da coluna e troca a linha com o objetivo
    // de subir o pivo para a linha indicada
    n=size(a,'r');
    [x linhaPivo]=max(abs(a(:,1)));
    if linhaPivo == 1 then
       return; 
    end 
    a=trocaLinhas(a,linhaPivo,1);
    return;
endfunction
// Rotina
function M =rotina(M)
     //exec('pivotamentoParcial.sci');
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
// Escalonamento
function M = eliminacaoGauss(A,b)
    // Matriz aumentada
    M = [A b];
    [linhasM colunasM] = size(M);
    for i=1:linhasM-1
        M(i:linhasM,i:colunasM)=rotina(M(i:linhasM,i:colunasM));
    end
    
    for i=1:linhasM
        if M(i,i)== 0 then
        disp("sistema não tem solução única!");
        return;
        end        
    end
endfunction
