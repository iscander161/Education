program var6_ex5;

const
  n=5;  { ���������� ����� }
  m=4;  { ���������� �������� }
var
  A: array[1..n, 1..m] of integer;
  i, j, min, ai, aj: integer;
  contin: boolean;
  
begin
  { ���������� ������� ���������� ������� �� -99 �� 99 }
  randomize;  
  for i:=1 to n do
    for j:=1 to m do
    A[i,j]:=random(100)-random(100);  
  { ����� �� ����� ���� ��������� ������� }
  for i:=1 to n do
    begin
      for j:=1 to m do
        write('A[', i, ',', j, ']=', A[i,j], ', ');
      writeln();
    end;
  { ���������� ������� �������������� ����� }
  contin:=true;
  for i:=1 to n do
  begin
    if (contin = false) then break;
    for j:=1 to m do      
      if (A[i,j] > 0) then //���� ������������� ����� �������,
        begin              //���������� ��� � ��������� ��������
          ai:=i;
          aj:=j;
          min:=A[i,j];
          contin:=false;
          break;
        end
  end;
  { ���������� ������������ �������������� �������� ������� }
  for i:=1 to n do
    for j:=1 to m do
      if (A[i,j] > 0) and (A[i,j] < min) then
        begin
          ai:=i;
          aj:=j;
          min:=A[i,j];
        end;
  {����� �����������}
  if (ai=0) and (aj=0) and (min=0) then
    writeln('������������� ����� � ������� �����������')
  else
    writeln('����������� ������������� ������� �������: A[', 
                                      ai, ',', aj, ']=', min);
end.