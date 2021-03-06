#!/bin/bash
#SBATCH -J plot_gsi_diags
#SBATCH -A da-cpu
#SBATCH -q debug
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=20
#SBATCH -t 00:30:00
#SBATCH --mail-user=$LOGNAME@noaa.gov

# PyGSIdir=path/to/PyGSI_Directory
PyGSIdir=/home/$LOGNAME/PyGSI
OUTDIR=/home/$LOGNAME/PyGSI/tmp

# load environment needed to run python scripts
source $PyGSIdir/modulefiles/modulefile.PyGSI.hera.bash

python mp_plot_convDiags.py -n 20 -y conv_test_yaml.yaml -o $OUTDIR