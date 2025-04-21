#!/bin/bash

# Directorios y archivos
respaldos_dir="respaldos"
log_file="respaldos/log_respaldo.txt"
archivo_fuente="docs/informe.txt"

# Crear directorio de respaldos si no existe
mkdir -p "$respaldos_dir"

# Obtener fecha y hora para el nombre del archivo y el log
fecha=$(date +%F)
hora=$(date +%T)
archivo_respaldo="respaldos/informe_$fecha.txt"

# Verificar si existe el archivo fuente
if [ -f "$archivo_fuente" ]; then
    # Crear respaldo
    cp "$archivo_fuente" "$archivo_respaldo"
    
    # Registrar en log
    echo "Respaldo creado el $fecha a las $hora: $archivo_respaldo" >> "$log_file"
    echo "Respaldo creado en: $archivo_respaldo"
else
    echo "Error: El archivo informe.txt no existe en la carpeta docs."
fi
