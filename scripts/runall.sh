#!/bin/bash

jid1=$(sbatch --parsable 00_symlinkdata.sh )
jid2=$(sbatch --parsable --dependency=afterok:$jid1 01_get_genome.sh )
jid3=$(sbatch --parsable --dependency=afterok:$jid2 02_process_radtags.sh )