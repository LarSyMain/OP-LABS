program lab4;

const
  nmax = 5;
type
  mas = array[1..nmax] of real;
var
  a : mas;
  c : mas;
  B : integer;
  f1 : integer;
  flag : boolean;
  i :integer;
  count : integer;
  m : real;
begin
  flag := True;
  
  writeln('mas A');
  for i := 1 to 5 do
  begin
    readln(f1);
    a[i] := f1;
  end;
  
  writeln('mas C');
  
  for i := 1 to 5 do
  begin
    readln(f1);
    c[i] := f1;
  end;
  
  writeln('введите B');
  readln(B);
  
  i := 1;
  
  while flag = False or (i < 5) do
  begin
    if a[i] < B then
    begin
      flag := False;
    end;
    i := i + 1;
  end;
  
  if flag = True then
  begin
    count := 0;
    for i := 1 to 5 do
    begin
      if c[i] > 0 then
      begin
        c[i] := c[i] / i;
      end;
      
      if c[i] < 0 then
      begin
        count := count + 1;
      end;
      
    end;
    
    writeln('колич. отриц. элементов: ',count);
    writeln('mac C:');
    for i := 1 to 5 do
    begin
      write(c[i], ' ');
    end;
  
    
  end
  else
  begin
      m := abs(a[1]) + abs(c[5-1+1]);
      for i := 1 to 5 do
      begin
        
        if abs(a[i]) + abs(c[5-i+1]) < m then
        begin
          m := abs(a[i]) + abs(c[5-i+1]);
        end;
      end;
      
      writeln('минимальная сумма: ', m);
      
  end;
  

  
end.
