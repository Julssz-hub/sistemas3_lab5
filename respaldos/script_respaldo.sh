#!/bin/bash

mkdir -p respaldos

fecha=$(date +%F)
archivo_respaldo="respaldos/informe_$fecha.txt"

cp docs/informe.txt "$archivo_respaldo"

echo "Respaldo creado en: $archivo_respaldo"
