# ####################################################################

#  Created by Genus(TM) Synthesis Solution 20.10-p001_1 on Thu Nov 21 22:04:17 IST 2024

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design b14

create_clock -name "CLK" -period 10.0 -waveform {0.0 5.0} [get_ports clock]
set_clock_transition 0.1 [get_clocks CLK]
set_max_delay 8 -from [list \
  [get_ports clock]  \
  [get_ports reset]  \
  [get_ports {datai[31]}]  \
  [get_ports {datai[30]}]  \
  [get_ports {datai[29]}]  \
  [get_ports {datai[28]}]  \
  [get_ports {datai[27]}]  \
  [get_ports {datai[26]}]  \
  [get_ports {datai[25]}]  \
  [get_ports {datai[24]}]  \
  [get_ports {datai[23]}]  \
  [get_ports {datai[22]}]  \
  [get_ports {datai[21]}]  \
  [get_ports {datai[20]}]  \
  [get_ports {datai[19]}]  \
  [get_ports {datai[18]}]  \
  [get_ports {datai[17]}]  \
  [get_ports {datai[16]}]  \
  [get_ports {datai[15]}]  \
  [get_ports {datai[14]}]  \
  [get_ports {datai[13]}]  \
  [get_ports {datai[12]}]  \
  [get_ports {datai[11]}]  \
  [get_ports {datai[10]}]  \
  [get_ports {datai[9]}]  \
  [get_ports {datai[8]}]  \
  [get_ports {datai[7]}]  \
  [get_ports {datai[6]}]  \
  [get_ports {datai[5]}]  \
  [get_ports {datai[4]}]  \
  [get_ports {datai[3]}]  \
  [get_ports {datai[2]}]  \
  [get_ports {datai[1]}]  \
  [get_ports {datai[0]}] ] -to [list \
  [get_ports {addr[19]}]  \
  [get_ports {addr[18]}]  \
  [get_ports {addr[17]}]  \
  [get_ports {addr[16]}]  \
  [get_ports {addr[15]}]  \
  [get_ports {addr[14]}]  \
  [get_ports {addr[13]}]  \
  [get_ports {addr[12]}]  \
  [get_ports {addr[11]}]  \
  [get_ports {addr[10]}]  \
  [get_ports {addr[9]}]  \
  [get_ports {addr[8]}]  \
  [get_ports {addr[7]}]  \
  [get_ports {addr[6]}]  \
  [get_ports {addr[5]}]  \
  [get_ports {addr[4]}]  \
  [get_ports {addr[3]}]  \
  [get_ports {addr[2]}]  \
  [get_ports {addr[1]}]  \
  [get_ports {addr[0]}]  \
  [get_ports {datao[31]}]  \
  [get_ports {datao[30]}]  \
  [get_ports {datao[29]}]  \
  [get_ports {datao[28]}]  \
  [get_ports {datao[27]}]  \
  [get_ports {datao[26]}]  \
  [get_ports {datao[25]}]  \
  [get_ports {datao[24]}]  \
  [get_ports {datao[23]}]  \
  [get_ports {datao[22]}]  \
  [get_ports {datao[21]}]  \
  [get_ports {datao[20]}]  \
  [get_ports {datao[19]}]  \
  [get_ports {datao[18]}]  \
  [get_ports {datao[17]}]  \
  [get_ports {datao[16]}]  \
  [get_ports {datao[15]}]  \
  [get_ports {datao[14]}]  \
  [get_ports {datao[13]}]  \
  [get_ports {datao[12]}]  \
  [get_ports {datao[11]}]  \
  [get_ports {datao[10]}]  \
  [get_ports {datao[9]}]  \
  [get_ports {datao[8]}]  \
  [get_ports {datao[7]}]  \
  [get_ports {datao[6]}]  \
  [get_ports {datao[5]}]  \
  [get_ports {datao[4]}]  \
  [get_ports {datao[3]}]  \
  [get_ports {datao[2]}]  \
  [get_ports {datao[1]}]  \
  [get_ports {datao[0]}]  \
  [get_ports rd]  \
  [get_ports wr] ]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {datai[31]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {datai[30]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {datai[29]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {datai[28]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {datai[27]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {datai[26]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {datai[25]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {datai[24]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {datai[23]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {datai[22]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {datai[21]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {datai[20]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {datai[19]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {datai[18]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {datai[17]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {datai[16]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {datai[15]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {datai[14]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {datai[13]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {datai[12]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {datai[11]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {datai[10]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {datai[9]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {datai[8]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {datai[7]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {datai[6]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {datai[5]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {datai[4]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {datai[3]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {datai[2]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {datai[1]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {datai[0]}]
set_input_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports reset]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {datai[31]}]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {datai[30]}]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {datai[29]}]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {datai[28]}]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {datai[27]}]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {datai[26]}]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {datai[25]}]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {datai[24]}]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {datai[23]}]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {datai[22]}]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {datai[21]}]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {datai[20]}]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {datai[19]}]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {datai[18]}]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {datai[17]}]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {datai[16]}]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {datai[15]}]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {datai[14]}]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {datai[13]}]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {datai[12]}]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {datai[11]}]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {datai[10]}]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {datai[9]}]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {datai[8]}]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {datai[7]}]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {datai[6]}]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {datai[5]}]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {datai[4]}]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {datai[3]}]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {datai[2]}]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {datai[1]}]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {datai[0]}]
set_input_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports reset]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {addr[19]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {addr[18]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {addr[17]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {addr[16]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {addr[15]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {addr[14]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {addr[13]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {addr[12]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {addr[11]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {addr[10]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {addr[9]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {addr[8]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {addr[7]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {addr[6]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {addr[5]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {addr[4]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {addr[3]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {addr[2]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {addr[1]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {addr[0]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {datao[31]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {datao[30]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {datao[29]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {datao[28]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {datao[27]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {datao[26]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {datao[25]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {datao[24]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {datao[23]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {datao[22]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {datao[21]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {datao[20]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {datao[19]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {datao[18]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {datao[17]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {datao[16]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {datao[15]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {datao[14]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {datao[13]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {datao[12]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {datao[11]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {datao[10]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {datao[9]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {datao[8]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {datao[7]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {datao[6]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {datao[5]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {datao[4]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {datao[3]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {datao[2]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {datao[1]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports {datao[0]}]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports rd]
set_output_delay -clock [get_clocks CLK] -add_delay -max 1.0 [get_ports wr]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {addr[19]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {addr[18]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {addr[17]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {addr[16]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {addr[15]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {addr[14]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {addr[13]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {addr[12]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {addr[11]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {addr[10]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {addr[9]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {addr[8]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {addr[7]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {addr[6]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {addr[5]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {addr[4]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {addr[3]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {addr[2]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {addr[1]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {addr[0]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {datao[31]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {datao[30]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {datao[29]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {datao[28]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {datao[27]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {datao[26]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {datao[25]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {datao[24]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {datao[23]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {datao[22]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {datao[21]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {datao[20]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {datao[19]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {datao[18]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {datao[17]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {datao[16]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {datao[15]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {datao[14]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {datao[13]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {datao[12]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {datao[11]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {datao[10]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {datao[9]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {datao[8]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {datao[7]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {datao[6]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {datao[5]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {datao[4]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {datao[3]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {datao[2]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {datao[1]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports {datao[0]}]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports rd]
set_output_delay -clock [get_clocks CLK] -add_delay -min 0.2 [get_ports wr]
set_input_transition 0.1 [get_ports reset]
set_input_transition 0.1 [get_ports {datai[31]}]
set_input_transition 0.1 [get_ports {datai[30]}]
set_input_transition 0.1 [get_ports {datai[29]}]
set_input_transition 0.1 [get_ports {datai[28]}]
set_input_transition 0.1 [get_ports {datai[27]}]
set_input_transition 0.1 [get_ports {datai[26]}]
set_input_transition 0.1 [get_ports {datai[25]}]
set_input_transition 0.1 [get_ports {datai[24]}]
set_input_transition 0.1 [get_ports {datai[23]}]
set_input_transition 0.1 [get_ports {datai[22]}]
set_input_transition 0.1 [get_ports {datai[21]}]
set_input_transition 0.1 [get_ports {datai[20]}]
set_input_transition 0.1 [get_ports {datai[19]}]
set_input_transition 0.1 [get_ports {datai[18]}]
set_input_transition 0.1 [get_ports {datai[17]}]
set_input_transition 0.1 [get_ports {datai[16]}]
set_input_transition 0.1 [get_ports {datai[15]}]
set_input_transition 0.1 [get_ports {datai[14]}]
set_input_transition 0.1 [get_ports {datai[13]}]
set_input_transition 0.1 [get_ports {datai[12]}]
set_input_transition 0.1 [get_ports {datai[11]}]
set_input_transition 0.1 [get_ports {datai[10]}]
set_input_transition 0.1 [get_ports {datai[9]}]
set_input_transition 0.1 [get_ports {datai[8]}]
set_input_transition 0.1 [get_ports {datai[7]}]
set_input_transition 0.1 [get_ports {datai[6]}]
set_input_transition 0.1 [get_ports {datai[5]}]
set_input_transition 0.1 [get_ports {datai[4]}]
set_input_transition 0.1 [get_ports {datai[3]}]
set_input_transition 0.1 [get_ports {datai[2]}]
set_input_transition 0.1 [get_ports {datai[1]}]
set_input_transition 0.1 [get_ports {datai[0]}]
set_wire_load_mode "enclosed"
set_clock_uncertainty -setup 0.01 [get_clocks CLK]
set_clock_uncertainty -hold 0.01 [get_clocks CLK]
