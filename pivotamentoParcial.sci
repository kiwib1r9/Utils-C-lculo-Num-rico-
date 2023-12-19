// Clara Theisen - 00343701
function a = pivotamentoParcial(a)
    exec('trocaLinhas.sci');
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
