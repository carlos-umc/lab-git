#!/bin/bash
#SBATCH --job-name=file-cut          # Nombre del trabajo
#SBATCH --ntasks=4                   # Número de tareas paralelas
#SBATCH --cpus-per-task=1            # Número de CPUs por tarea
#SBATCH --partition=hpc-bio-pacioli  # Cola de trabajo
#SBATCH --output=cut-fastq-%j.out    # Archivo de salida
#SBATCH --chdir=/home/alumno25/lab-git

# Ejecutar el script de corte
./file-cut.sh 25 Sample1.fastq Sample2.fastq Sample3.fastq Sample4.fastq

