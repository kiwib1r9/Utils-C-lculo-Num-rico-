function y=runge-kutta4(h,n,x0,y0)
    exec('funcao.sci');
    x=x0;
    y=y0;
    for i=1:n
        k1=funcao(x,y);
        k2=funcao(x+h/2,y+h/2*k1);
        k3=funcao(x+h/2,y+h/2*k2);
        k4=funcao(x+h,y+h*k3);
        y=y+h/6*(k1+2*k2+2*k3+k4)
        x=x+h;
    end
endfunction
