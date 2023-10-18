program lab4;

const
  nmax = 10;
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
  n: integer;
  f: TextFile;
begin
  flag := True;


  AssignFile(f, 'input.txt');	       
      Reset(f);
      readln(f, n);
      for i := 1 to n do
        read(f, a[i]);
      for i := 1 to n do
        read(f, c[i]);
      readln(f, B);
  CloseFile(f); 	
  
  i := 1;
  
  while flag = True or (i < n) do
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
    for i := 1 to n do
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
    for i := 1 to n do
    begin
      write(c[i], ' ');
    end;
  
    
  end
  else
  begin
      m := abs(a[1]) + abs(c[n-1+1]);
      for i := 1 to n do
      begin
        
        if abs(a[i]) + abs(c[n-i+1]) < m then
        begin
          m := abs(a[i]) + abs(c[n-i+1]);
        end;
      end;
      
      writeln('минимальная сумма: ', m);
      
  end;
  

  
end.
