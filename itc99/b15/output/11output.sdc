# ####################################################################

#  Created by Genus(TM) Synthesis Solution 20.10-p001_1 on Fri Nov 22 00:04:32 IST 2024

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design b15

create_clock -name "CLK" -period 2.5 -waveform {0.0 1.25} [get_ports CLOCK]
set_clock_transition 0.1 [get_clocks CLK]
set_load -pin_load 0.1 [get_ports {BE_n[3]}]
set_load -pin_load 0.1 [get_ports {BE_n[2]}]
set_load -pin_load 0.1 [get_ports {BE_n[1]}]
set_load -pin_load 0.1 [get_ports {BE_n[0]}]
set_load -pin_load 0.1 [get_ports {Address[29]}]
set_load -pin_load 0.1 [get_ports {Address[28]}]
set_load -pin_load 0.1 [get_ports {Address[27]}]
set_load -pin_load 0.1 [get_ports {Address[26]}]
set_load -pin_load 0.1 [get_ports {Address[25]}]
set_load -pin_load 0.1 [get_ports {Address[24]}]
set_load -pin_load 0.1 [get_ports {Address[23]}]
set_load -pin_load 0.1 [get_ports {Address[22]}]
set_load -pin_load 0.1 [get_ports {Address[21]}]
set_load -pin_load 0.1 [get_ports {Address[20]}]
set_load -pin_load 0.1 [get_ports {Address[19]}]
set_load -pin_load 0.1 [get_ports {Address[18]}]
set_load -pin_load 0.1 [get_ports {Address[17]}]
set_load -pin_load 0.1 [get_ports {Address[16]}]
set_load -pin_load 0.1 [get_ports {Address[15]}]
set_load -pin_load 0.1 [get_ports {Address[14]}]
set_load -pin_load 0.1 [get_ports {Address[13]}]
set_load -pin_load 0.1 [get_ports {Address[12]}]
set_load -pin_load 0.1 [get_ports {Address[11]}]
set_load -pin_load 0.1 [get_ports {Address[10]}]
set_load -pin_load 0.1 [get_ports {Address[9]}]
set_load -pin_load 0.1 [get_ports {Address[8]}]
set_load -pin_load 0.1 [get_ports {Address[7]}]
set_load -pin_load 0.1 [get_ports {Address[6]}]
set_load -pin_load 0.1 [get_ports {Address[5]}]
set_load -pin_load 0.1 [get_ports {Address[4]}]
set_load -pin_load 0.1 [get_ports {Address[3]}]
set_load -pin_load 0.1 [get_ports {Address[2]}]
set_load -pin_load 0.1 [get_ports {Address[1]}]
set_load -pin_load 0.1 [get_ports {Address[0]}]
set_load -pin_load 0.1 [get_ports W_R_n]
set_load -pin_load 0.1 [get_ports D_C_n]
set_load -pin_load 0.1 [get_ports M_IO_n]
set_load -pin_load 0.1 [get_ports ADS_n]
set_load -pin_load 0.1 [get_ports {Datao[31]}]
set_load -pin_load 0.1 [get_ports {Datao[30]}]
set_load -pin_load 0.1 [get_ports {Datao[29]}]
set_load -pin_load 0.1 [get_ports {Datao[28]}]
set_load -pin_load 0.1 [get_ports {Datao[27]}]
set_load -pin_load 0.1 [get_ports {Datao[26]}]
set_load -pin_load 0.1 [get_ports {Datao[25]}]
set_load -pin_load 0.1 [get_ports {Datao[24]}]
set_load -pin_load 0.1 [get_ports {Datao[23]}]
set_load -pin_load 0.1 [get_ports {Datao[22]}]
set_load -pin_load 0.1 [get_ports {Datao[21]}]
set_load -pin_load 0.1 [get_ports {Datao[20]}]
set_load -pin_load 0.1 [get_ports {Datao[19]}]
set_load -pin_load 0.1 [get_ports {Datao[18]}]
set_load -pin_load 0.1 [get_ports {Datao[17]}]
set_load -pin_load 0.1 [get_ports {Datao[16]}]
set_load -pin_load 0.1 [get_ports {Datao[15]}]
set_load -pin_load 0.1 [get_ports {Datao[14]}]
set_load -pin_load 0.1 [get_ports {Datao[13]}]
set_load -pin_load 0.1 [get_ports {Datao[12]}]
set_load -pin_load 0.1 [get_ports {Datao[11]}]
set_load -pin_load 0.1 [get_ports {Datao[10]}]
set_load -pin_load 0.1 [get_ports {Datao[9]}]
set_load -pin_load 0.1 [get_ports {Datao[8]}]
set_load -pin_load 0.1 [get_ports {Datao[7]}]
set_load -pin_load 0.1 [get_ports {Datao[6]}]
set_load -pin_load 0.1 [get_ports {Datao[5]}]
set_load -pin_load 0.1 [get_ports {Datao[4]}]
set_load -pin_load 0.1 [get_ports {Datao[3]}]
set_load -pin_load 0.1 [get_ports {Datao[2]}]
set_load -pin_load 0.1 [get_ports {Datao[1]}]
set_load -pin_load 0.1 [get_ports {Datao[0]}]
set_max_delay 8 -from [list \
  [get_ports {Datai[31]}]  \
  [get_ports {Datai[30]}]  \
  [get_ports {Datai[29]}]  \
  [get_ports {Datai[28]}]  \
  [get_ports {Datai[27]}]  \
  [get_ports {Datai[26]}]  \
  [get_ports {Datai[25]}]  \
  [get_ports {Datai[24]}]  \
  [get_ports {Datai[23]}]  \
  [get_ports {Datai[22]}]  \
  [get_ports {Datai[21]}]  \
  [get_ports {Datai[20]}]  \
  [get_ports {Datai[19]}]  \
  [get_ports {Datai[18]}]  \
  [get_ports {Datai[17]}]  \
  [get_ports {Datai[16]}]  \
  [get_ports {Datai[15]}]  \
  [get_ports {Datai[14]}]  \
  [get_ports {Datai[13]}]  \
  [get_ports {Datai[12]}]  \
  [get_ports {Datai[11]}]  \
  [get_ports {Datai[10]}]  \
  [get_ports {Datai[9]}]  \
  [get_ports {Datai[8]}]  \
  [get_ports {Datai[7]}]  \
  [get_ports {Datai[6]}]  \
  [get_ports {Datai[5]}]  \
  [get_ports {Datai[4]}]  \
  [get_ports {Datai[3]}]  \
  [get_ports {Datai[2]}]  \
  [get_ports {Datai[1]}]  \
  [get_ports {Datai[0]}]  \
  [get_ports CLOCK]  \
  [get_ports NA_n]  \
  [get_ports BS16_n]  \
  [get_ports READY_n]  \
  [get_ports HOLD]  \
  [get_ports RESET] ] -to [list \
  [get_ports {BE_n[3]}]  \
  [get_ports {BE_n[2]}]  \
  [get_ports {BE_n[1]}]  \
  [get_ports {BE_n[0]}]  \
  [get_ports {Address[29]}]  \
  [get_ports {Address[28]}]  \
  [get_ports {Address[27]}]  \
  [get_ports {Address[26]}]  \
  [get_ports {Address[25]}]  \
  [get_ports {Address[24]}]  \
  [get_ports {Address[23]}]  \
  [get_ports {Address[22]}]  \
  [get_ports {Address[21]}]  \
  [get_ports {Address[20]}]  \
  [get_ports {Address[19]}]  \
  [get_ports {Address[18]}]  \
  [get_ports {Address[17]}]  \
  [get_ports {Address[16]}]  \
  [get_ports {Address[15]}]  \
  [get_ports {Address[14]}]  \
  [get_ports {Address[13]}]  \
  [get_ports {Address[12]}]  \
  [get_ports {Address[11]}]  \
  [get_ports {Address[10]}]  \
  [get_ports {Address[9]}]  \
  [get_ports {Address[8]}]  \
  [get_ports {Address[7]}]  \
  [get_ports {Address[6]}]  \
  [get_ports {Address[5]}]  \
  [get_ports {Address[4]}]  \
  [get_ports {Address[3]}]  \
  [get_ports {Address[2]}]  \
  [get_ports {Address[1]}]  \
  [get_ports {Address[0]}]  \
  [get_ports W_R_n]  \
  [get_ports D_C_n]  \
  [get_ports M_IO_n]  \
  [get_ports ADS_n]  \
  [get_ports {Datao[31]}]  \
  [get_ports {Datao[30]}]  \
  [get_ports {Datao[29]}]  \
  [get_ports {Datao[28]}]  \
  [get_ports {Datao[27]}]  \
  [get_ports {Datao[26]}]  \
  [get_ports {Datao[25]}]  \
  [get_ports {Datao[24]}]  \
  [get_ports {Datao[23]}]  \
  [get_ports {Datao[22]}]  \
  [get_ports {Datao[21]}]  \
  [get_ports {Datao[20]}]  \
  [get_ports {Datao[19]}]  \
  [get_ports {Datao[18]}]  \
  [get_ports {Datao[17]}]  \
  [get_ports {Datao[16]}]  \
  [get_ports {Datao[15]}]  \
  [get_ports {Datao[14]}]  \
  [get_ports {Datao[13]}]  \
  [get_ports {Datao[12]}]  \
  [get_ports {Datao[11]}]  \
  [get_ports {Datao[10]}]  \
  [get_ports {Datao[9]}]  \
  [get_ports {Datao[8]}]  \
  [get_ports {Datao[7]}]  \
  [get_ports {Datao[6]}]  \
  [get_ports {Datao[5]}]  \
  [get_ports {Datao[4]}]  \
  [get_ports {Datao[3]}]  \
  [get_ports {Datao[2]}]  \
  [get_ports {Datao[1]}]  \
  [get_ports {Datao[0]}] ]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Datai[31]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Datai[30]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Datai[29]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Datai[28]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Datai[27]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Datai[26]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Datai[25]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Datai[24]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Datai[23]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Datai[22]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Datai[21]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Datai[20]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Datai[19]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Datai[18]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Datai[17]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Datai[16]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Datai[15]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Datai[14]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Datai[13]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Datai[12]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Datai[11]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Datai[10]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Datai[9]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Datai[8]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Datai[7]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Datai[6]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Datai[5]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Datai[4]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Datai[3]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Datai[2]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Datai[1]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Datai[0]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports NA_n]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports BS16_n]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports READY_n]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports HOLD]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports RESET]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Datai[31]}]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Datai[30]}]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Datai[29]}]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Datai[28]}]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Datai[27]}]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Datai[26]}]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Datai[25]}]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Datai[24]}]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Datai[23]}]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Datai[22]}]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Datai[21]}]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Datai[20]}]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Datai[19]}]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Datai[18]}]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Datai[17]}]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Datai[16]}]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Datai[15]}]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Datai[14]}]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Datai[13]}]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Datai[12]}]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Datai[11]}]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Datai[10]}]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Datai[9]}]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Datai[8]}]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Datai[7]}]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Datai[6]}]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Datai[5]}]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Datai[4]}]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Datai[3]}]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Datai[2]}]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Datai[1]}]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Datai[0]}]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports NA_n]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports BS16_n]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports READY_n]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports HOLD]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {BE_n[3]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {BE_n[2]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {BE_n[1]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {BE_n[0]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Address[29]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Address[28]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Address[27]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Address[26]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Address[25]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Address[24]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Address[23]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Address[22]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Address[21]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Address[20]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Address[19]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Address[18]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Address[17]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Address[16]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Address[15]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Address[14]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Address[13]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Address[12]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Address[11]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Address[10]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Address[9]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Address[8]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Address[7]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Address[6]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Address[5]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Address[4]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Address[3]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Address[2]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Address[1]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Address[0]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports W_R_n]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports D_C_n]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports M_IO_n]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports ADS_n]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Datao[31]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Datao[30]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Datao[29]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Datao[28]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Datao[27]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Datao[26]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Datao[25]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Datao[24]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Datao[23]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Datao[22]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Datao[21]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Datao[20]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Datao[19]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Datao[18]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Datao[17]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Datao[16]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Datao[15]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Datao[14]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Datao[13]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Datao[12]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Datao[11]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Datao[10]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Datao[9]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Datao[8]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Datao[7]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Datao[6]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Datao[5]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Datao[4]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Datao[3]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Datao[2]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Datao[1]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {Datao[0]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {BE_n[3]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {BE_n[2]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {BE_n[1]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {BE_n[0]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Address[29]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Address[28]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Address[27]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Address[26]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Address[25]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Address[24]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Address[23]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Address[22]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Address[21]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Address[20]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Address[19]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Address[18]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Address[17]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Address[16]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Address[15]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Address[14]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Address[13]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Address[12]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Address[11]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Address[10]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Address[9]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Address[8]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Address[7]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Address[6]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Address[5]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Address[4]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Address[3]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Address[2]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Address[1]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Address[0]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports W_R_n]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports D_C_n]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports M_IO_n]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports ADS_n]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Datao[31]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Datao[30]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Datao[29]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Datao[28]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Datao[27]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Datao[26]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Datao[25]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Datao[24]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Datao[23]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Datao[22]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Datao[21]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Datao[20]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Datao[19]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Datao[18]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Datao[17]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Datao[16]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Datao[15]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Datao[14]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Datao[13]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Datao[12]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Datao[11]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Datao[10]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Datao[9]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Datao[8]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Datao[7]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Datao[6]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Datao[5]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Datao[4]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Datao[3]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Datao[2]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Datao[1]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {Datao[0]}]
set_input_transition 0.1 [get_ports {Datai[31]}]
set_input_transition 0.1 [get_ports {Datai[30]}]
set_input_transition 0.1 [get_ports {Datai[29]}]
set_input_transition 0.1 [get_ports {Datai[28]}]
set_input_transition 0.1 [get_ports {Datai[27]}]
set_input_transition 0.1 [get_ports {Datai[26]}]
set_input_transition 0.1 [get_ports {Datai[25]}]
set_input_transition 0.1 [get_ports {Datai[24]}]
set_input_transition 0.1 [get_ports {Datai[23]}]
set_input_transition 0.1 [get_ports {Datai[22]}]
set_input_transition 0.1 [get_ports {Datai[21]}]
set_input_transition 0.1 [get_ports {Datai[20]}]
set_input_transition 0.1 [get_ports {Datai[19]}]
set_input_transition 0.1 [get_ports {Datai[18]}]
set_input_transition 0.1 [get_ports {Datai[17]}]
set_input_transition 0.1 [get_ports {Datai[16]}]
set_input_transition 0.1 [get_ports {Datai[15]}]
set_input_transition 0.1 [get_ports {Datai[14]}]
set_input_transition 0.1 [get_ports {Datai[13]}]
set_input_transition 0.1 [get_ports {Datai[12]}]
set_input_transition 0.1 [get_ports {Datai[11]}]
set_input_transition 0.1 [get_ports {Datai[10]}]
set_input_transition 0.1 [get_ports {Datai[9]}]
set_input_transition 0.1 [get_ports {Datai[8]}]
set_input_transition 0.1 [get_ports {Datai[7]}]
set_input_transition 0.1 [get_ports {Datai[6]}]
set_input_transition 0.1 [get_ports {Datai[5]}]
set_input_transition 0.1 [get_ports {Datai[4]}]
set_input_transition 0.1 [get_ports {Datai[3]}]
set_input_transition 0.1 [get_ports {Datai[2]}]
set_input_transition 0.1 [get_ports {Datai[1]}]
set_input_transition 0.1 [get_ports {Datai[0]}]
set_input_transition 0.1 [get_ports NA_n]
set_input_transition 0.1 [get_ports BS16_n]
set_input_transition 0.1 [get_ports READY_n]
set_input_transition 0.1 [get_ports HOLD]
set_wire_load_mode "enclosed"
set_clock_uncertainty -setup 0.01 [get_clocks CLK]
set_clock_uncertainty -hold 0.01 [get_clocks CLK]
