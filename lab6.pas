Program lab6;

const
  nmax = 10;
type
  mas = array[1..nmax, 1..nmax] of integer;


var
  a : mas;
  flag : boolean;
  i, j, n, count, ans : integer;
  f: TextFile;
  s : integer;
begin
  
  n := 3;
  
  AssignFile(f, 'input.txt');	      
  Reset(f);
  for i := 1 to n do
    begin
      for j := 1 to n do
          read(f, a[i,j]);
    end;
  CloseFile(f); 	     
  
  
  flag := True;
  i := 1;
  
  while (flag = True) and (i <= n) do
  begin
    count := 0;
    j := 1;
    while (j <= n) do
    begin
        
        if (a[j, i] < 0) then
          count := count + 1;
        j := j + 1
    end;
    if count = 3 then
      begin
        flag := False;
        ans := i;
      end;
    i := i + 1;
  end;
  
  writeln(ans, ' - отриц столб.');
  
  count := 0;
  for i := 1 to n do
  begin
    s := 0;
    for j := 1 to n do
    begin
      
      s := s + a[j, i];
      
    end;
    if s > 0 then
      count := count + 1;
  end;
  
  write(count, ' - sum');
  
  AssignFile(f, 'out.txt');	
  Rewrite(f);
  writeln(f, ans, ' - отриц столб.');
  writeln(f,count, ' - sum');
  CloseFile(f);
  
  
end.
