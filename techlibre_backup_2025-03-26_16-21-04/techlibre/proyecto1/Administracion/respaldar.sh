#!/bin/bash

# Definir variables
SOURCE="/home/techlibre"
DESTINATION="/home"
LOGFILE="/var/log/backup_techlibre.log"
DATE=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_PATH="$DESTINATION/techlibre_backup_$DATE"

# Crear la carpeta de respaldo si no existe
mkdir -p "$DESTINATION"

# Ejecutar rsync con opciones avanzadas
rsync -a --progress --delete "$SOURCE" "$BACKUP_PATH" > "$LOGFILE" 2>&1



# Mensaje de finalización
echo "Respaldo completado en: $BACKUP_PATH"
echo "Detalles en $LOGFILE"

