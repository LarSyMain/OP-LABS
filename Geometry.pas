program Geometry;
begin
 
  var xc, r, xe, a, b : real;
  Readln(xc,r,xe,a, b);
  //вводим xc, r, xe, a, b
  
  if xc = xe then //если координаты центров равны, то фигуры концентричны 
  begin
    write('Фигуры концентричны');
    
    if (r <= a) and (r <= b) then
    begin
      write(',круг вложен в элипс');
    end;
    
    if (r >= a) and (r >= b) then
    begin
      write(',элипс вложен в круг');
    end;
    
  end
  else //если центры не равны то фигры либо касаются, либо пересекаются, либо не пересекаются
  begin
    if ((abs(xe)+abs(xc)) = r + a) then 
    begin
      write('Фигуры касаются');
    end    
    
    else if(r > abs(a - xe)) then //если радиус круга больше (a - xe), то фигуры пересекаются, если нет, то не пересекаются
    begin
      write('Фигуры пересекаются');
    end
    else
    begin
      
      write('Фигуры не пересекаются');
      
    end;
  end;
  
 
    
   
end.
