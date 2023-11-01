Program lab5;

const
  nmax = 10;
type
  mas = array[1..nmax] of integer;

var 
  n : integer;
  d : integer;
  a : mas;
  m : integer;
  flag, mflag : boolean;
  i, j : integer;
  f: TextFile;
  di : integer;
  
begin
  
  flag := True;
  
  AssignFile(f, 'input.txt');	      
  Reset(f);
  readln(f, n);
  for i := 1 to n do
    begin
      read(f, a[i]);
     end;
  readln(f, d);
  CloseFile(f); 	     
  
  for i := 1 to n do
    begin
      if a[i] = d then
        begin
        di := i;
        end;
     end;
  
  j := 1;
  i := 1;
  m := 0;
  mflag := True;
  while (mflag = True) and (i < n) do
  begin
    if a[i] > 0 then
      begin
      m := a[i];
      mflag := False;
      end;
    i := i + 1;
  end;
  i := 1;
  if m = 0 then
    j := 0;

  while (flag = True) and (i <= n) do
  begin
    
    if i = di then
    begin
      flag := False;
    end
    else if (a[i] > 0) and (a[i] < m) then
    begin
      m := a[i];
      j := i;
    end;
    
    i := i + 1;
  end;
  
  AssignFile(f, 'out.txt');	
  Rewrite(f);
  writeln(f, j, ' number');
  writeln(f, m, ' m');
  CloseFile(f);
  
  
end.
