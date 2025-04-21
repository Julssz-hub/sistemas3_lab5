#!/bin/bash

mkdir -p respaldos

fecha=$(date +%F)
archivo_respaldo="respaldos/informe_$fecha.txt"

if [ -f docs/informe.txt ]; then
    cp docs/informe.txt "$archivo_respaldo"

echo "Respaldo creado en: $archivo_respaldo"

else
    echo "Error: El archivo informe.txt no existe en la carpeta docs."
fi
