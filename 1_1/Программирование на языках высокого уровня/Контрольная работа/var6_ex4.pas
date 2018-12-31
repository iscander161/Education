program var6_ex4;

var
  A: array[1..12] of integer;   { основной массив }
  X: array[1..12] of integer;   { массив четных чисел }
  Y: array[1..12] of integer;   { массив нечетных чисел }
  i, j, k, z, num: integer;     { счетчики для массивов }
  
begin

  for i:=1 to 12 do { заполнение массива пользователем }
  begin
    write('Введите элемент массива А[', i, ']=');
    readln(A[i]);
  end;
  
  k:=1; z:=1; { определение счетчиков }
  { вычисление четности и заполнение соответствующих массивов }
  for j:=1 to 12 do
  begin
    num:= A[j];
    if num mod 2 = 0 then
    begin
      X[k]:=num;
      k:=k+1;
    end
    else
    begin
      Y[z]:=num;
      z:=z+1;
    end
  end;
  {вывод на экран элементов четного массива}
  writeln('Массив из четных чисел:');
  for i:=1 to k do
    write('A[', i, ']=', X[i], ', ');
  writeln();
  {вывод на экран элементов нечетного массива}
  writeln('Массив из нечетных чисел:');
  for i:=1 to z do
    write('A[', i, ']=', Y[i], ', ');
  writeln();
end.