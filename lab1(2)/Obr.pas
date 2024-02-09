unit Obr;

interface

type
  Tset = set of char;
procedure Ind(var x : Tset);
function ob(var x : Tset; var y : Tset) : Tset;
function per(var x : Tset; var y : Tset) : Tset;
function raz(var x : Tset; var y : Tset) : Tset;
function form(var x, y, z : Tset) : Tset;
implementation

    procedure Ind(var x : Tset);
    begin
      x := [];
    end;
    
    function ob(var x : Tset; var y : Tset) : Tset;
    begin
      result := x + y;
    end;
    
    function per(var x : Tset; var y : Tset) : Tset;
    begin
      result := x * y;
    end;
    
    function raz(var x : Tset; var y : Tset) : Tset;
    begin
      result := x - y;
    end;
    
    function form(var x, y, z : Tset) : Tset;
    begin
      result := (x-z)+(y-z);
    end;
    
end.