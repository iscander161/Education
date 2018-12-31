program var6_ex3;

var
  x, n: integer;
  
begin
  for n:=1 to 20 do
  begin
    x:=(5 * sqr(n)) - (4 * n) - 1;
    if (x mod 2 <> 0) then
      writeln('В числовой последовательности член #', n, 
              ' является нечетным и равен ', x);
   end;
end.