// Clara Theisen - 00343701

function it=GS(A,b,e,x)
    // recebe uma matriz A
           // um vetor b
           // erro e
           // vetor com valores iniciais de x
    continuar?=1;
    it=0;
    erro=e+1;
    [linhasA colunasA]=size(A);
    while continuar?
        it=it+1;
        for i=1:linhasA
            peso=0; 
            for j=1:colunasA
                if j~=i then
                    peso=peso+(A(i,j)*x(j));
                end 
            end
            x(i)=(b(i)-peso)/A(i,i);
            bn(i)=0;
        end
        
        // erro
        
        for j=1:linhasA
            for k=1:colunasA
                bn(j)=bn(j)+(A(j,k)*x(k));
            end
            erro(j)=abs(b(j)-bn(j));    
        end
        continuar?=(sum((erro>e)*1))>0;
    end
    
endfunction
