unit GetPut;
interface

  uses Obr;
  procedure Get(var x : Tset; f : TextFile);
  
implementation
  
procedure Get(var x : Tset; f : TextFile);
var
  s : string;
  i, n : integer;
  ch : Tset;
begin
  
  readln(f, s);
  n := length(s);
  for i := 1 to n do
  begin
    x := x + [s[i]];    
  end;
  
end;
  

end.