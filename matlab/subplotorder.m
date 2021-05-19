Ca0 = 50; %mol/l
k = 0.02; % unidades varia segun el caso
t = (0:10:200);


n=input('Ingrese el orden de la reacción(1,2,3,4)')

  Ca1 = Ca0 - k*t;
  Ca2 = Ca0*exp(-k*t);
  Ca3 = Ca0./(Ca0*k*t+1);
  Ca4 = Ca0./(2*Ca0*k*t+1).^0.5;
  subplot(2,2,1)
  plot(t,Ca1,'bo-')
  
  subplot(2,2,2)
  plot(t,Ca2,'ro-')
  
  subplot(2,2,3)
  plot(t,Ca3,'mo-')
  
  subplot(2,2,4)
  plot(t,Ca4,'go-')

        
plot(t,Ca,'o-')