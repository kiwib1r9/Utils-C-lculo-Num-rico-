// Clara Theisen - 00343701
function it=SOR(A,b,e,xGS)
    w=4/3;
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
        xSOR(1)=xGS(1);
        for i=1:linhasA
            peso=0; 
            for j=1:colunasA
                if j~=i then
                    peso=peso+(A(i,j)*xGS(j));
                end 
            end
            xGS(i)=(b(i)-peso)/A(i,i);
            if i~=1 then
                xSOR(i)=(1-w)*xSOR(i-1)+w*xGS(i);
            end
            bn(i)=0;
        end
        
        // erro
        
        for j=1:linhasA
            for k=1:colunasA
                bn(j)=bn(j)+(A(j,k)*xSOR(k));
            end
            erro(j)=abs(b(j)-bn(j));    
        end
        continuar?=(sum((erro>e)*1))>0;
    end
    
endfunction

 
