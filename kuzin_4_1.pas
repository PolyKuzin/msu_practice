//Дано целое число N. Если N трехзначное, то вывести  в обратном порядке и в столбик цифры, составляющие N. 
//Для чисел с другим количеством знаков вывести текстовое сообщение: "Число не трехзначное!"

program kuzin_4_1;

var numb : integer;

begin
    writeln('Введите число:');
    readln(numb);
    if (numb < 1000) and (numb > 99) then 
        begin
            writeln(numb mod 10);
            writeln((numb div 10) mod 10);
            writeln(numb div 100);
        end
    ELSE
        begin
            writeln('Число не трехзначное!')
        end
end.