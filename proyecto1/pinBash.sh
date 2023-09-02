#!/bin/bash 
 

PIN_NUM=18 
GPIO_PATH="/sys/class/gpio"  
 

apagar_pin() { 

    sudo echo 0 > "$GPIO_PATH/gpio$PIN_NUM/value" 

} 

 

encender_pin() { 

    sudo echo 1 > "$GPIO_PATH/gpio$PIN_NUM/value" 

} 


while true; do 

    encender_pin 
    apagar_pin  

done 
