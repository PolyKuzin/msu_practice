//Определить попадание точки в заданную область на плоскости (см. вложенный рисунок)
//Точку задать парой координат x, y вещественного типа.
//По сути это квадрат с вершинами в точках (1,1) (-1,1) (1, -1) (-1,-1)

program kuzin_4_2;

uses crt;

var xCoor, yCoor : real;

begin
    writeln('введите координаты точки через пробел, сначала координату X, затем Y:');
    readln(xCoor, yCoor);
    if xCoor < 0 then 
        xCoor := -xCoor;
    if yCoor < 0 then 
        yCoor := -yCoor;
    if ((xCoor + yCoor) >= 1) and (((xCoor * xCoor) + (yCoor * yCoor)) <= 1) then
        writeln('ДА, точка попадает в заданную область')
    else
        writeln('НЕТ, точка выходит за пределы заданной области');
end.