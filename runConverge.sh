#!/bin/bash
source /opt/Convergent_Science/Environment/scripts/CONVERGE/CONVERGE-IntelMPI/3.1.9.sh 
cd /home/rdebros/Desktop/RDE Bros/10 - Individual Working Folders/Aidan/2D-Unrolled-RDE-NASA_v1 
mpirun -n  5 /opt/Convergent_Science/CONVERGE/3.1.9/bin/converge-intelmpi -l super  2>&1 > runConverge.log & 
pgrep -P `pgrep -P  $$` > runConverge.pid 
tail -n 30 -f runConverge.log --pid=`pgrep -P  $$` 
