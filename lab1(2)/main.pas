program lab1;

uses GetPut, Obr;

var
  f : TextFile;
  a, b, c, ans : Tset;
  //i : integer;
begin
  
  AssignFile(f, 'input.txt');
  Reset(f);
  Get(a, f);
  Get(b, f);
  Get(c, f);
  CloseFile(f);
  
  
  writeln('объединение');
  ans := ob(a, b);
  writeln(ans);
  writeln('пересечение');
  ans := per(a, b);
  writeln(ans);
  writeln('разность');
  ans := raz(a, b);
  writeln(ans);
  writeln('формула');
  ans := form(a, b, c);
  writeln(ans);
  
end.
