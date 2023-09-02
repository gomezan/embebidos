import wiringpi 


wiringpi.wiringPiSetupGpio()  
pin_num = 18 # Cambia esto al número de pin que desees 
wiringpi.pinMode(pin_num, wiringpi.OUTPUT) 

while True: 
    wiringpi.digitalWrite(pin_num, wiringpi.HIGH) 
    wiringpi.digitalWrite(pin_num, wiringpi.LOW)  
