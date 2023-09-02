#include <bcm2835.h>
#include <stdio.h>

int main(int argc, char *argv[]) {
    // Inicializar la biblioteca BCM2835
    if (!bcm2835_init()) {
        printf("Error al inicializar BCM2835.\n");
        return 1;
    }

    printf("BCM2835 inicializado correctamente.\n");

    // Cerrar la biblioteca BCM2835
    bcm2835_close();

    return 0;
}
