#!/bin/bash 
 

PIN_NUM=18 
GPIO_PATH="/sys/class/gpio" 

 

# Configurar el pin como salida si no está configurado previamente 

configurar(){
    sudo echo "$PIN_NUM" > "$GPIO_PATH/export" 
    sudo echo "out" > "$GPIO_PATH/gpio$PIN_NUM/direction" 
}

 
 

apagar_pin() { 

    sudo echo 0 > "$GPIO_PATH/gpio$PIN_NUM/value" 

} 

 

encender_pin() { 

    sudo echo 1 > "$GPIO_PATH/gpio$PIN_NUM/value" 

} 

 


#configurar
while true; do 

    encender_pin 
    apagar_pin  

done 
