#!/bin/bash 
 

PIN_NUM=18 
GPIO_PATH="/sys/class/gpio" 

 

# Configurar el pin como salida si no está configurado previamente 

configurar(){
    sudo echo "$PIN_NUM" > "$GPIO_PATH/export" 
    sudo echo "out" > "$GPIO_PATH/gpio$PIN_NUM/direction" 
}

 
 
configurar 
