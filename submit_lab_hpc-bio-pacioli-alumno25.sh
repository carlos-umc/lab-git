#!/bin/bash

sbatch --job-name=cut-fastq --ntasks=1 --cpus-per-task=4 --output=cut-fastq.out <<EOF
#!/bin/bash
# Nombre del trabajo: cut-fastq
#SBATCH --partition=hpc-bio-pacioli      # Cola de trabajo
#SBATCH --job-name=cut-fastq            # Nombre del trabajo
#SBATCH --ntasks=1                      # Número de tareas
#SBATCH --cpus-per-task=4               # Número de CPUs por tarea
#SBATCH --time=01:00:00                 # Tiempo máximo (1 hora)
#SBATCH --output=cut-fastq-%j.out       # Archivo de salida (incluye ID de trabajo)

# Módulos necesarios
module load fastqc

# Ejecutar el script de corte
./file-cut.sh
EOF

