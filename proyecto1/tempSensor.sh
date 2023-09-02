#!/bin/bash 

 
# Ruta
SENSOR_PATH="/sys/bus/w1/devices" 
SENSOR_ID="28-dd9ef71e64ff" 
SENSOR_DIR="$SENSOR_PATH/$SENSOR_ID" 
CSV_FILENAME="$(date +'%Y%m%d')_TEMPERATURA.csv" 

 
obtenerTemperatura() {

    tabla=$(sudo cat "$SENSOR_DIR/w1_slave")
    measure=$(echo "$tabla" | grep -E -o ".{0,0}t=.{0,5}" | cut -c 3-)
    echo "scale=2; $measure / 1000" | bc
} 


 

escribirCSV() { 
    fechaHora=$(date +'%Y%m%d%H%M%S') 
    temp=$(obtenerTemperatura) 
    echo "$fechaHora,$temp" >> "$CSV_FILENAME" 
    echo "Registro almacenado: $fechaHora, $temp" 

} 



echo "Fecha y Hora,Temperatura (C)" > "$CSV_FILENAME" 


while true; do 
    escribirCSV
    sleep 10 

done 
