unit Mfx;

interface
  uses Mtypes;
  function feqx(x : real) : real;  
  function f2(x : real) : real;
  
implementation
  
function feqx(x : real) : real;
begin
  feqx := x;
end;


function f2(x : real) : real;
begin
  f2 := sin(x) + cos(x);
end;

end.