// Clara Theisen - 00343701
function a = trocaLinhas(a,origem,destino)
    // troca a linha destino pela origem e vice-versa, 
    // devolvendo a matriz atualizada
    aux=a(origem,:);
    a(origem,:)=a(destino,:);
    a(destino,:)=aux;
endfunction
