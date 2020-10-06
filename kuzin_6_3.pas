program kuzin_6_3;

var
  a, b: integer;

begin
    writeln('Введите а и b, где 2 < a, b < 10000, через пробел :');
    readln(a, b);
    if (a <> b) then
    begin
        repeat
            if a > b then a := a - b
            else b := b - a;
        until (a = b);
    end;
    writeln('НОД: ', a);
end.