//Вычислить значение выражения PA + PB · PC, где PA, PB и PC – модуль произведения отрицательных элементов, расположенных выше главной диагонали, в матрицах A, B и C соответственно.
//Транспонировать матрицы и снова вычислить значение этого выражения.

Program main;

uses Mtypes, Minout, Mans;

var
  arr1, arr2, arr3 : matrix;
  n1, n2, n3 : integer;
  f, fout : TextFile;
  ans1, ans2, ans3 : integer;
  answer : integer;
  ansT1, ansT2, ansT3 : integer;
  answerT : integer;
  
begin
  
  //Ввод
  AssignFile(f, 'input.txt');
  Reset(f);
  
  Get(arr1, n1, f);
  Get(arr2, n2, f);
  Get(arr3, n3, f);
  
  CloseFile(f);
  
  ans1 := UpD(arr1, n1);
  ans2 := UpD(arr2, n2);
  ans3 := UpD(arr3, n3);
 
  answer := ans1 + ans2 * ans3;
  
  //Транспонирование
  arr1 := Trans(arr1, n1);
  arr2 := Trans(arr2, n2);
  arr3 := Trans(arr3, n3);
  
  ansT1 := UpD(arr1, n1);
  ansT2 := UpD(arr2, n2);
  ansT3 := UpD(arr3, n3);
  
  answerT := ansT1 + ansT2 * ansT3;
  
  //Вывод
  AssignFile(fout, 'out.txt');
  Rewrite(fout);
  
  writeln(fout, 'Изначальная матрица:');
  Put(answer, fout);
  writeln(fout, 'Транспонированная матрица:');
  Put(answerT, fout);
  
  CloseFile(fout);
  
end.