const N = 10;

begin

// переменные\вывод\операции
  writeln('rofls');
  var a : integer = 10;
  var b : integer = 20;

  var c : integer = a + b;

  writeln(c);


//массивы

  var arr : array [0..10] of integer;
  writeln(arr);

//ввод

  var r : integer;
  read(r);
  writeln(r+1);


// деление с остатком\целочисл;
// div - нацело
// mod - с остатком

  var g,d : integer;
  g := 10;
  d := 12;
  writeln(d mod g);
  writeln(d div g);

//if/else

  var l,k : integer;

  l := 40;
  k := 5;

  if l < k then
    begin
      writeln('true');
    end // перед else не ставим ;
  else
    begin
      writeln('false');
    end;
//циклы while/for

  var count : integer; 
  count := 0;
  while count <= 5 do
  begin
    writeln(count);
    count := count + 1;
  end;


  for k := 0 to 10 do
  begin
    write(k);
  end;

end.
