program kuzin_6_1;

var s : 1..18 ;
    i : integer;

begin
    writeln('Введите желаемую сумму чисел от 1 до 18:');
    readln(s);
    for  i := 10 to 99 do
    begin
        if ((i mod 10) + (i div 10) = s) then
        writeln(i);
    end;
end.