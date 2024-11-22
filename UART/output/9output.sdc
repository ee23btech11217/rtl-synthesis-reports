# ####################################################################

#  Created by Genus(TM) Synthesis Solution 20.10-p001_1 on Thu Nov 21 23:27:15 IST 2024

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design UART

create_clock -name "TX_CLK" -period 10.0 -waveform {0.0 5.0} [get_ports TX_CLK]
set_clock_transition 0.1 [get_clocks TX_CLK]
create_clock -name "RX_CLK" -period 10.0 -waveform {0.0 5.0} [get_ports RX_CLK]
set_clock_transition 0.1 [get_clocks RX_CLK]
set_load -pin_load 0.1 [get_ports {RX_OUT_P[7]}]
set_load -pin_load 0.1 [get_ports {RX_OUT_P[6]}]
set_load -pin_load 0.1 [get_ports {RX_OUT_P[5]}]
set_load -pin_load 0.1 [get_ports {RX_OUT_P[4]}]
set_load -pin_load 0.1 [get_ports {RX_OUT_P[3]}]
set_load -pin_load 0.1 [get_ports {RX_OUT_P[2]}]
set_load -pin_load 0.1 [get_ports {RX_OUT_P[1]}]
set_load -pin_load 0.1 [get_ports {RX_OUT_P[0]}]
set_load -pin_load 0.1 [get_ports TX_OUT_S]
set_load -pin_load 0.1 [get_ports parity_error]
set_load -pin_load 0.1 [get_ports framing_error]
set_false_path -from [get_ports RST]
set_max_delay 8 -from [list \
  [get_ports {TX_IN_P[7]}]  \
  [get_ports {TX_IN_P[6]}]  \
  [get_ports {TX_IN_P[5]}]  \
  [get_ports {TX_IN_P[4]}]  \
  [get_ports {TX_IN_P[3]}]  \
  [get_ports {TX_IN_P[2]}]  \
  [get_ports {TX_IN_P[1]}]  \
  [get_ports {TX_IN_P[0]}] ] -to [get_ports TX_OUT_S]
set_max_delay 8 -from [get_ports RX_IN_S] -to [list \
  [get_ports {RX_OUT_P[7]}]  \
  [get_ports {RX_OUT_P[6]}]  \
  [get_ports {RX_OUT_P[5]}]  \
  [get_ports {RX_OUT_P[4]}]  \
  [get_ports {RX_OUT_P[3]}]  \
  [get_ports {RX_OUT_P[2]}]  \
  [get_ports {RX_OUT_P[1]}]  \
  [get_ports {RX_OUT_P[0]}] ]
set_clock_groups -name "clock_groups_TX_CLK_to_RX_CLK" -asynchronous -group [get_clocks TX_CLK] -group [get_clocks RX_CLK]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks TX_CLK] -add_delay -max 1.0 [get_ports {TX_IN_P[7]}]
set_input_delay -clock [get_clocks TX_CLK] -add_delay -max 1.0 [get_ports {TX_IN_P[6]}]
set_input_delay -clock [get_clocks TX_CLK] -add_delay -max 1.0 [get_ports {TX_IN_P[5]}]
set_input_delay -clock [get_clocks TX_CLK] -add_delay -max 1.0 [get_ports {TX_IN_P[4]}]
set_input_delay -clock [get_clocks TX_CLK] -add_delay -max 1.0 [get_ports {TX_IN_P[3]}]
set_input_delay -clock [get_clocks TX_CLK] -add_delay -max 1.0 [get_ports {TX_IN_P[2]}]
set_input_delay -clock [get_clocks TX_CLK] -add_delay -max 1.0 [get_ports {TX_IN_P[1]}]
set_input_delay -clock [get_clocks TX_CLK] -add_delay -max 1.0 [get_ports {TX_IN_P[0]}]
set_input_delay -clock [get_clocks TX_CLK] -add_delay -max 1.0 [get_ports TX_IN_V]
set_input_delay -clock [get_clocks TX_CLK] -add_delay -max 1.0 [get_ports {Prescale[5]}]
set_input_delay -clock [get_clocks TX_CLK] -add_delay -max 1.0 [get_ports {Prescale[4]}]
set_input_delay -clock [get_clocks TX_CLK] -add_delay -max 1.0 [get_ports {Prescale[3]}]
set_input_delay -clock [get_clocks TX_CLK] -add_delay -max 1.0 [get_ports {Prescale[2]}]
set_input_delay -clock [get_clocks TX_CLK] -add_delay -max 1.0 [get_ports {Prescale[1]}]
set_input_delay -clock [get_clocks TX_CLK] -add_delay -max 1.0 [get_ports {Prescale[0]}]
set_input_delay -clock [get_clocks TX_CLK] -add_delay -max 1.0 [get_ports parity_enable]
set_input_delay -clock [get_clocks TX_CLK] -add_delay -max 1.0 [get_ports parity_type]
set_input_delay -clock [get_clocks TX_CLK] -add_delay -min 0.2 [get_ports {TX_IN_P[7]}]
set_input_delay -clock [get_clocks TX_CLK] -add_delay -min 0.2 [get_ports {TX_IN_P[6]}]
set_input_delay -clock [get_clocks TX_CLK] -add_delay -min 0.2 [get_ports {TX_IN_P[5]}]
set_input_delay -clock [get_clocks TX_CLK] -add_delay -min 0.2 [get_ports {TX_IN_P[4]}]
set_input_delay -clock [get_clocks TX_CLK] -add_delay -min 0.2 [get_ports {TX_IN_P[3]}]
set_input_delay -clock [get_clocks TX_CLK] -add_delay -min 0.2 [get_ports {TX_IN_P[2]}]
set_input_delay -clock [get_clocks TX_CLK] -add_delay -min 0.2 [get_ports {TX_IN_P[1]}]
set_input_delay -clock [get_clocks TX_CLK] -add_delay -min 0.2 [get_ports {TX_IN_P[0]}]
set_input_delay -clock [get_clocks TX_CLK] -add_delay -min 0.2 [get_ports TX_IN_V]
set_input_delay -clock [get_clocks TX_CLK] -add_delay -min 0.2 [get_ports {Prescale[5]}]
set_input_delay -clock [get_clocks TX_CLK] -add_delay -min 0.2 [get_ports {Prescale[4]}]
set_input_delay -clock [get_clocks TX_CLK] -add_delay -min 0.2 [get_ports {Prescale[3]}]
set_input_delay -clock [get_clocks TX_CLK] -add_delay -min 0.2 [get_ports {Prescale[2]}]
set_input_delay -clock [get_clocks TX_CLK] -add_delay -min 0.2 [get_ports {Prescale[1]}]
set_input_delay -clock [get_clocks TX_CLK] -add_delay -min 0.2 [get_ports {Prescale[0]}]
set_input_delay -clock [get_clocks TX_CLK] -add_delay -min 0.2 [get_ports parity_enable]
set_input_delay -clock [get_clocks TX_CLK] -add_delay -min 0.2 [get_ports parity_type]
set_input_delay -clock [get_clocks RX_CLK] -add_delay -max 1.0 [get_ports RX_IN_S]
set_input_delay -clock [get_clocks RX_CLK] -add_delay -min 0.2 [get_ports RX_IN_S]
set_output_delay -clock [get_clocks TX_CLK] -add_delay -max 1.0 [get_ports TX_OUT_S]
set_output_delay -clock [get_clocks TX_CLK] -add_delay -max 1.0 [get_ports TX_OUT_V]
set_output_delay -clock [get_clocks TX_CLK] -add_delay -min 0.2 [get_ports TX_OUT_S]
set_output_delay -clock [get_clocks TX_CLK] -add_delay -min 0.2 [get_ports TX_OUT_V]
set_output_delay -clock [get_clocks RX_CLK] -add_delay -max 1.0 [get_ports {RX_OUT_P[7]}]
set_output_delay -clock [get_clocks RX_CLK] -add_delay -max 1.0 [get_ports {RX_OUT_P[6]}]
set_output_delay -clock [get_clocks RX_CLK] -add_delay -max 1.0 [get_ports {RX_OUT_P[5]}]
set_output_delay -clock [get_clocks RX_CLK] -add_delay -max 1.0 [get_ports {RX_OUT_P[4]}]
set_output_delay -clock [get_clocks RX_CLK] -add_delay -max 1.0 [get_ports {RX_OUT_P[3]}]
set_output_delay -clock [get_clocks RX_CLK] -add_delay -max 1.0 [get_ports {RX_OUT_P[2]}]
set_output_delay -clock [get_clocks RX_CLK] -add_delay -max 1.0 [get_ports {RX_OUT_P[1]}]
set_output_delay -clock [get_clocks RX_CLK] -add_delay -max 1.0 [get_ports {RX_OUT_P[0]}]
set_output_delay -clock [get_clocks RX_CLK] -add_delay -max 1.0 [get_ports RX_OUT_V]
set_output_delay -clock [get_clocks RX_CLK] -add_delay -max 1.0 [get_ports parity_error]
set_output_delay -clock [get_clocks RX_CLK] -add_delay -max 1.0 [get_ports framing_error]
set_output_delay -clock [get_clocks RX_CLK] -add_delay -min 0.2 [get_ports {RX_OUT_P[7]}]
set_output_delay -clock [get_clocks RX_CLK] -add_delay -min 0.2 [get_ports {RX_OUT_P[6]}]
set_output_delay -clock [get_clocks RX_CLK] -add_delay -min 0.2 [get_ports {RX_OUT_P[5]}]
set_output_delay -clock [get_clocks RX_CLK] -add_delay -min 0.2 [get_ports {RX_OUT_P[4]}]
set_output_delay -clock [get_clocks RX_CLK] -add_delay -min 0.2 [get_ports {RX_OUT_P[3]}]
set_output_delay -clock [get_clocks RX_CLK] -add_delay -min 0.2 [get_ports {RX_OUT_P[2]}]
set_output_delay -clock [get_clocks RX_CLK] -add_delay -min 0.2 [get_ports {RX_OUT_P[1]}]
set_output_delay -clock [get_clocks RX_CLK] -add_delay -min 0.2 [get_ports {RX_OUT_P[0]}]
set_output_delay -clock [get_clocks RX_CLK] -add_delay -min 0.2 [get_ports RX_OUT_V]
set_output_delay -clock [get_clocks RX_CLK] -add_delay -min 0.2 [get_ports parity_error]
set_output_delay -clock [get_clocks RX_CLK] -add_delay -min 0.2 [get_ports framing_error]
set_input_transition 0.1 [get_ports RX_IN_S]
set_input_transition 0.1 [get_ports {TX_IN_P[7]}]
set_input_transition 0.1 [get_ports {TX_IN_P[6]}]
set_input_transition 0.1 [get_ports {TX_IN_P[5]}]
set_input_transition 0.1 [get_ports {TX_IN_P[4]}]
set_input_transition 0.1 [get_ports {TX_IN_P[3]}]
set_input_transition 0.1 [get_ports {TX_IN_P[2]}]
set_input_transition 0.1 [get_ports {TX_IN_P[1]}]
set_input_transition 0.1 [get_ports {TX_IN_P[0]}]
set_input_transition 0.1 [get_ports TX_IN_V]
set_input_transition 0.1 [get_ports {Prescale[5]}]
set_input_transition 0.1 [get_ports {Prescale[4]}]
set_input_transition 0.1 [get_ports {Prescale[3]}]
set_input_transition 0.1 [get_ports {Prescale[2]}]
set_input_transition 0.1 [get_ports {Prescale[1]}]
set_input_transition 0.1 [get_ports {Prescale[0]}]
set_input_transition 0.1 [get_ports parity_enable]
set_input_transition 0.1 [get_ports parity_type]
set_wire_load_mode "enclosed"
set_clock_uncertainty -setup 0.01 [get_clocks TX_CLK]
set_clock_uncertainty -hold 0.01 [get_clocks TX_CLK]
set_clock_uncertainty -setup 0.01 [get_clocks RX_CLK]
set_clock_uncertainty -hold 0.01 [get_clocks RX_CLK]
