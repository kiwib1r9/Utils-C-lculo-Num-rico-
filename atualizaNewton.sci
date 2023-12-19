// função usada em aula
//for i=1:12
//  f=x.^2+y.^2-2;
//  g=x*y-1;
//  fx=2.*x;
//  fy=2.*y;
//  gx=y;
//  gy=x;
//  [x,y] = atualizaNewton(f,g,fx,fy,gx,gy);
//          OU
//  jac=fx*gy-fy*gx;
//  x=x-(f*gy-g*fy)/jac;
//  y=y-(g*fx-f*gx)/jac;
// end

 function [x,y]=atualizaNewton(f, g, fx, fy, gx, gy)
      jac=fx*gy-fy*gx;
      x=x-(f*gy-g*fy)/jac;
      y=y-(g*fx-f*gx)/jac;
 endfunction
