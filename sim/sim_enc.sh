rm inter.fsdb
rm novas.conf
rm novas.rc
rm novas_dump.log 
rm -rf verdiLog
rm -rf simv.daidir



tclsh sim_enc.tcl

./simv 


verdi -dbdir ./simv.daidir & 
