#!/bin/bash
# Script para cortar proporciones específicas de archivos según el número de alumno
PROPORCION=$((25))
shift
for FILE in "$@"; do
    OUTPUT="${FILE%.fastq}_cut.fastq"
    TOTAL_LINES=$(wc -l < "$FILE")
    LINES_TO_KEEP=$((TOTAL_LINES / PROPORCION))
    head -n "$LINES_TO_KEEP" "$FILE" > "$OUTPUT"
    mv "$OUTPUT" "$FILE"
done

