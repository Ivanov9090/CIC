# CIC
# Non-recursive CIC filter
В репозитории представлены файлы для осуществления всех этапов разработки цифровой интегральной схемы, являющаяся нерекурсивным интегрально-гребенчатым фильтром (ИГФ).

Нерекурсивный интегрально-гребенчатый фильтр, согласно техническому заданию, обладает следующими характеристиками:
1) Порядок фильтра M = 10;
2) Коэффициент изменения частоты дискретизации R = 20;
3) Разрядность входных и выходных отсчётов равна 20;
4) Абсолютная погрешность относительно точности «double» – 2 LSB;
5) Относительная погрешность относительно точности «double» – 0,1%;
6) Наименьшая разрядность при заданной точности.


Репозиторий состоит из двух веток: текущей "current" и главной "main".
Файл README.md содержит описание проекта.


Далее представлено краткое описание файлов.

CIC.v - модуль фильтра.

First_H2_z.v, Second_H2_z.v, CIC_tc.v, H5_z.v - модули, входящие в основной. 

CIC_tb.v - testbansh.

CIC.sdc - файл временных ограничений.

In.dat - входные отсчёты.

Out2_expected.dat - выходные отсчёты (ожидаемые).

MMMC.tcl - corner description.

MyModule_synth.tcl, MyModule_synth_max.tcl, MyModule_synth_min.tcl - файлы для логического синтеза для typical, fast and slow corner.

X-FAB_typ.tcl, X-FAB_max.tcl, X-FAB_min.tcl - вспомогательные файлы, описывающие пути к библиотекам ячеек для ypical, fast and slow corner.



Разработка топологии ИГФ разбита на несколько основных этапов:
1) Описание устройства на поведенческом уровне; 
2) Логический синтез с привязкой к библиотекам;
3) Генерация топологии.

Устройство описывается на языке Verilog HDL (с проверкой работоспособности).
Логический синтез с временными ограничениями (.sdc) с помощью скрипта (.tcl), в зависимости от условий (худшие условия, типичные и лучшие) необходимо выбирать соответствующий скрипт (важно: кажыдй скрипт ссылкается на соответствующую X-FAB библиотеку).
Генерация топологии основывающаяся на скрипте (.tcl).
