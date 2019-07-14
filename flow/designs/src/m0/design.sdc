###################################################################

# Created by write_sdc on Sat Jul 13 20:51:47 2019

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
create_clock [get_ports XTAL1_PAD]  -name core_clock  -period 20  -waveform {0 10}
create_clock [get_pins u_cmsdk_mcu_system/u_apb_subsystem/gen_apb9.u_pll_1/synth_pll/CLK_OUT]  -name CLK_OUT  -period 8.33333  -waveform {0 4.16667}
set_input_delay -clock core_clock  0  [get_ports XTAL1_PAD]
set_input_delay -clock core_clock  0  [get_ports NRST_PAD]
set_input_delay -clock core_clock  0  [get_ports UART_RXD_PAD]
set_input_delay -clock core_clock  0  [get_ports SPI_LDO_RESETn_PAD]
set_input_delay -clock core_clock  0  [get_ports {SPI_LDO_SS_PAD[1]}]
set_input_delay -clock core_clock  0  [get_ports {SPI_LDO_SS_PAD[0]}]
set_input_delay -clock core_clock  0  [get_ports SPI_LDO_SCLK_PAD]
set_input_delay -clock core_clock  0  [get_ports SPI_LDO_MOSI_PAD]
set_input_delay -clock core_clock  0  [get_ports SPI_APB_SEL_PAD]
set_input_delay -clock core_clock  0  [get_ports MEM_DATA_REQ_PAD]
set_input_delay -clock core_clock  0  [get_ports MEM_WE_PAD]
set_input_delay -clock core_clock  0  [get_ports MEM_TEST_MODE_PAD]
set_input_delay -clock core_clock  0  [get_ports MEM_CLK_IN_PAD]
set_input_delay -clock core_clock  0  [get_ports MEM_RESET_PAD]
set_input_delay -clock core_clock  0  [get_ports MEM_SPI_CLOCK_PAD]
set_input_delay -clock core_clock  0  [get_ports MEM_SPI_MOSI_PAD]
set_input_delay -clock core_clock  0  [get_ports MEM_SPI_RST_PAD]
set_input_delay -clock core_clock  0  [get_ports MEM_SPI_SCLK_PAD]
set_input_delay -clock core_clock  0  [get_ports MEM_SPI_SS_PAD]
set_input_delay -clock core_clock  0  [get_ports SWDIOTMS]
set_input_delay -clock core_clock  0  [get_ports SWCLKTCK]
set_output_delay -clock core_clock  0  [get_ports SWDIOTMS]
set_output_delay -clock core_clock  0  [get_ports XTAL2_PAD]
set_output_delay -clock core_clock  0  [get_ports GPIO_INIT_PAD]
set_output_delay -clock core_clock  0  [get_ports GPIO_USER0_PAD]
set_output_delay -clock core_clock  0  [get_ports GPIO_USER1_PAD]
set_output_delay -clock core_clock  0  [get_ports UART_TXD_PAD]
set_output_delay -clock core_clock  0  [get_ports SPI_LDO_MISO_PAD]
set_output_delay -clock core_clock  0  [get_ports MEM_DOUT32_PAD]
set_output_delay -clock core_clock  0  [get_ports MEM_SPI_MISO_PAD]
set_output_delay -clock core_clock  0  [get_ports PLL_CLKOUT0_PAD]
set_output_delay -clock core_clock  0  [get_ports PLL_CLKOUT1_PAD]
