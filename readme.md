# PAC 3 EDD PRÀCTICA ELOI POMAR

## Makefile

***Aquest treball consta de tres parts:

1. Crear el repositori per pujar els arxius al GITHUB. Després un programa en C que mostre "hola món" i compilar-lo amb gcc i provar amb make.

2. Realitzar un programa en C que sume, reste, multiplique, dividisca i diga quin dels dos números és major en el que se utilitzaran funcions en el mateix arxiu i hauríem de compilar-lo per comprovar que funcione.

3. Fer el mateix programa que en el apartat anterior però separánt-lo en tres arxius, un amb les funcions, altre amb les capçaleres de les funcions i per últim el programa principal. A més a més, hauríem d'afegir un arxiu  Makefile amb els objetius calcula, calc.o, clean, dist, targz i install.

## PRIMERA PART
CREAR UNA CARPETA PER PUJAR-LA AL REPOSITORI
ORDRE:git init

CREAR HOLA.C
ORDRE:  nano hola.c

Contimgut de l'arxiu hola.c
#include <stdio.h>

int main(){
    printf("Hola mundo\n");
    return 0;
}

COMPILAR HOLA.C
ORDRE: gcc -Wall -g hola.c -o hola.exe

MAKE
ORDRE: make hola

COMPROVACIÓ
ORDRE: /.hola

### Imatge comprovació 

