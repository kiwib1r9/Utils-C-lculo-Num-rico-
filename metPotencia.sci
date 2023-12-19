// Clara Theisen - 00343701
function [val,vet] = metPotencia(A,digse)
    [linhasA colunasA]=size(A);
    // condição inicial
    X=ones(linhasA,1);
    // valor inicial só pra entrar no loop
    elx = 1;
    elx1=elx+digse+1;
    //for i=1:25
    while abs(elx-elx1)> digse 
       X1=A*X;
       [elx posx]=max(X1);
       X=X1/elx; 
       X1=A*X;
       [elx1 posx1]=max(X1);
       X1=X1/elx1; 
    end
    val = elx1;
    vet=X1;
endfunction
