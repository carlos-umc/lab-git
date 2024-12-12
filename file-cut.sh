#!/bin/bash
# Script para cortar los archivos fastq dependiendo del usuario

for file in *.fastq; do
    # Cortar las primeras líneas del archivo dependiendo del login del usuario
    if [ "$(whoami)" == "alumno25" ]; then
        head -n 100 "$file" > "cut_$file"
    fi
    # Agrega condiciones según el número de usuario, por ejemplo:
    # if [ "$(whoami)" == "alumno02" ]; then
    #     head -n 50 "$file" > "cut_$file"
    # fi
done

