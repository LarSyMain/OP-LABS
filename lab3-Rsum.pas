program RSum;

var
  x, e, a, s, y: real; 
  i, k: integer;  
   

begin


  write('аргумент: ');
  readln(x);
  write('точность: ');
  readln(e);
  
  a := (x*(2-x))/2;
  s := a;
  i := 2;
  while abs(a) > e do
  begin
    a := a * ( (exp(ln(x)*4)*(4*i-2-x)) / ((4*i-6-x)*(4*i-2)*(4*i-3)*(4*i-4)*(4*i-5)) );
    s := s + a;
    i := i + 1;
  end;

  y := (sin(x)+cos(x) - exp(-x))/2;
  

  k := 6;
  writeln('Сумма ряда = ', s:(k + 3):k);
  writeln('Контрольная формула = ', y:(k + 3):k);
  
end.
