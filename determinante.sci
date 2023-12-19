// Clara Theisen - 00343701
function d=determinante(A)
    [linhasA colunasA]=size(A);
    d=0;
    if linhasA==2 then
        d=A(1,1)*A(2,2)-(A(1,2)*A(2,1));
    else
        
        for j=1:colunasA
            M=A;
            M([1],:)=[];
            M(:,[j])=[];
            d=d+((-1)^(1+j)).*A(1,j).*determinante(M);    
        end
        
        
    end
endfunction
