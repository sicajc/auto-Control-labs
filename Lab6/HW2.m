
clear;
clc;
%Enter the value with z equals 3 , 6 , 12


  z1 = input('Type the value of z1');
  n1 = 15/z1; n2 = [1 z1];
  nt = conv(n1,n2);
  d1 = [1 3 15];
  
  T1 = tf(nt , d1);
  
  z2 = input('Type the value of z2');
  n3 = 15/z2; n4 = [1 z2];
  d2 = [1 3 15];
  nt2=conv(n3,n4);
  
  T2 = tf(nt2 , d2);
 
  
  z3 = input('Type the value of z3');
  n5 = 15/z3; n6 = [1 z3];
  nt3=conv(n5,n6);
  d3 = [1 3 15];
  
  T3 = tf(nt3 , d3);
  
  step(T1,'y-',T2,'r+',T3,'b*')
  legend('Z=3','Z=6','Z=12')
  


