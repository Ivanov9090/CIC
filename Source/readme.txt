CIC.v - верхний модуль фильтра (Behavioral level)

First_H2_z.v, Second_H2_z.v, CIC_tc.v, H5_z.v - модули, входящие в основной (Behavioral level)

CIC_tb.v - testbansh (Simulation after Behavioral level)

CIC_tb_s.v - testbansh (Simulation after Synthesis)

CIC_tb_f.v - testbansh (Simulation after Layout)

CIC.sdc - файл временных ограничений (Synthesis)

In.dat - входные отсчёты (Simulation)

Out2_expected.dat - выходные отсчёты (ожидаемые) (Simulation)

pin - файл привязки пинов (Layout)

MMMC.tcl - corner description (Layout)

MyModule_synth.tcl, MyModule_synth_max.tcl, MyModule_synth_min.tcl - файлы для логического синтеза для typical, fast and slow corner (Synthesis)

X-FAB_typ.tcl, X-FAB_max.tcl, X-FAB_min.tcl - вспомогательные файлы, описывающие пути к библиотекам ячеек для ypical, fast and slow corner (Synthesis)