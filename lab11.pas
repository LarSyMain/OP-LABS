type 
  func = function (x: real) : real; 
var
  e, a, b: real;
  x: real;
  symbols_count: integer;
  
function f17(x: real): real;
begin
  f17 := sqrt(Ln(7.9) + (1 / exp(x)) - (sqr(x) / 11)) - x
end;

function f20(x: real): real;
begin
  f20 := (1 / 3) * ((1 / exp(x)) - sqrt(exp(x)) + 3.7) - x
end;

function searchRootBS(a, b, e: real; f: func): real;
begin
  while b-a > e do
  begin
    if f((b + a) / 2) * f(a) <= 0 then
    begin
      b := (b + a) / 2
    end
    else
    begin
      a := (b + a) / 2
    end;
  end;
  searchRootBS := (a+b)/2
end;

function searchRootSI(a, b, e: real; f: func): real;
var 
  xi1, xi2: real;
begin
  xi2 := (a + b) / 2;
  repeat
    xi1 := xi2;
    xi2 := f(xi1) + xi1;
  until Abs(xi2-xi1) < e;
  searchRootSI := xi2;
end;


begin
  
  { f17 }
  writeln('Введите a b');
  readln(a, b);
  writeln('Введите e');
  readln(e);
  symbols_count := Abs(Round(ln(e) / ln(10)));
  if (Ln(7.9) + (1 / exp(b)) - (sqr(b) / 11) < 0) then
  begin
    writeln('Заданный отрезок включает значения x вне ОДЗ');
  end
  else
  begin
    if (f17(a) * f17(b) <= 0) then
    begin
      x := searchRootBS(a, b, e, f17);
      writeln('Корень полученный поиском деления отрезка для f17: ', x:4:symbols_count, ', Значение функции: ', f17(x):4:symbols_count);
      x := searchRootSI(a, b, e, f17);
      writeln('Корень полученный простыми итерациями для f17: ', x:4:symbols_count, ', Значение функции: ', f17(x):4:symbols_count);
    end
    else
    begin
      writeln('Заданный отрезок не содержит корней уравнения');
    end;
  end;
 
  writeln('');
  
  { f20 }
  writeln('Введите a b');
  readln(a, b);
  writeln('Введите e');
  readln(e);
  symbols_count := Abs(Round(ln(e) / ln(10)));
  if (f20(a) * f20(b) <= 0) then
    begin
      x := searchRootBS(a, b, e, f20);
      writeln('Корень полученный поиском деления отрезка для f20: ', x:4:symbols_count, ', Значение функции: ', f20(x):4:symbols_count);
      x := searchRootSI(a, b, e, f20);
      writeln('Корень полученный простыми итерациями для f20: ', x:4:symbols_count, ', Значение функции: ', f20(x):4:symbols_count);
    end
    else
    begin
      writeln('Заданный отрезок не содержит корней уравнения');
    end;
  
end.
