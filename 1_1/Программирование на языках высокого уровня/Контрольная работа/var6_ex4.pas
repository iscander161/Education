program var6_ex4;

var
  A: array[1..12] of integer;   { �������� ������ }
  X: array[1..12] of integer;   { ������ ������ ����� }
  Y: array[1..12] of integer;   { ������ �������� ����� }
  i, j, k, z, num: integer;     { �������� ��� �������� }
  
begin

  for i:=1 to 12 do { ���������� ������� ������������� }
  begin
    write('������� ������� ������� �[', i, ']=');
    readln(A[i]);
  end;
  
  k:=1; z:=1; { ����������� ��������� }
  { ���������� �������� � ���������� ��������������� �������� }
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
  {����� �� ����� ��������� ������� �������}
  writeln('������ �� ������ �����:');
  for i:=1 to k do
    write('A[', i, ']=', X[i], ', ');
  writeln();
  {����� �� ����� ��������� ��������� �������}
  writeln('������ �� �������� �����:');
  for i:=1 to z do
    write('A[', i, ']=', Y[i], ', ');
  writeln();
end.