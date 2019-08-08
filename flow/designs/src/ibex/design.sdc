set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
create_clock [get_ports clk_i]  -name core_clock  -period 10