#!/bin/bash

# Job name
#SBATCH --job-name=cut-fastq            # Nombre del trabajo
#SBATCH --ntasks=1                      # Número de tareas (1 para SLURM)
#SBATCH --cpus-per-task=4               # Número de CPUs por tarea (para procesamiento paralelo)
#SBATCH --time=01:00:00                 # Tiempo máximo (1 hora)
#SBATCH --partition=hpc-bio-pacioli     # Cola de trabajo
#SBATCH --output=/home/alumno25/lab-git/cut-fastq-%j.out  # Ruta para el archivo de salida

# Cargar el módulo necesario
module load fastqc

# Ejecutar el script de corte desde el directorio lab-git
cd /home/alumno25/lab-git
./file-cut.sh


