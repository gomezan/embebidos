#include <bcm2835.h> 
#include <stdio.h> 
#include <signal.h> 

  

#define PIN_NUM RPI_GPIO_P1_12  

 

int main(int argc, char *argv[]) { 
  

    // Inicializar la biblioteca BCM2835 

    if (!bcm2835_init()) { 

        printf("Error al inicializar BCM2835.\n"); 

        return 1; 

    } 


    bcm2835_gpio_fsel(PIN_NUM, BCM2835_GPIO_FSEL_OUTP); 

 

    while (1) { 

        bcm2835_gpio_write(PIN_NUM, HIGH); 
        bcm2835_gpio_write(PIN_NUM, LOW); 
        


    } 

 

    return 0; 

} 

