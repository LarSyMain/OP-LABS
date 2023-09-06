program lab1;

begin
  var xc,r,xe,a : real;
  readln(xc,r,xe,a);
  
  if (xc = xe) then
  begin
    write('Фигуры концентричны');
    
    if (r <= a) then
    begin
      write(',полукруг вложен в квадрат');
    end
    
    else if((r > a) and (abs(r - a) >= 2)) then
    begin
      write(',квадрат вложен в полукруг');
    end;
    
    
  end
  else
  begin
    
    if(abs(xc-xe) = (r+a)) then
    begin
      write('Фигуры касаются');
    end
    
    else if(abs(xc-xe) < (r+a)) then
    begin
      write('Фигуры пересекаются');
    end
  
    else
    begin
      write('Фигуры не пересекаются');
    end;
  end;
end.
