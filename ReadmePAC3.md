# PAC 3 EDD PRÀCTICA ELOI POMAR

## Makefile

***Aquest treball consta de tres parts:

1. Crear el repositori per pujar els arxius al GITHUB. Després un programa en C que mostre "hola món" i compilar-lo amb gcc i provar amb make.

2. Realitzar un programa en C que sume, reste, multiplique, dividisca i diga quin dels dos números és major en el que se utilitzaran funcions en el mateix arxiu i hauríem de compilar-lo per comprovar que funcione.

3. Fer el mateix programa que en el apartat anterior però separánt-lo en tres arxius, un amb les funcions, altre amb les capçaleres de les funcions i per últim el programa principal. A més a més, hauríem d'afegir un arxiu  Makefile amb els objetius calcula, calc.o, clean, dist, targz i install.

## PRIMERA PART - TODO 4
CREAR UNA CARPETA PER PUJAR-LA AL REPOSITORI
ORDRE:git init

CREAR HOLA.C
ORDRE:  nano hola.c

ContiNgut de l'arxiu hola.c
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

### Imatge comprovació Hola Món

AFEGIR AL TOTS ELS ARXIUS EXCEPTE HOLA.C
ORDRES: echo "*.c" >> .gitignore
       

COMMIT 1
ORDRE: git commit -am "PAC 3 EDD Makefile, primera part"

AFEGIR-HO TOT
ORDRE: git add .


### Imatge Comprovació commit 1  

## SEGONA PART - TODO 8

CREAR ARXIU CALC.C
ORDRE: nano calc.c

Contigut de l'arxiu Calc.c:
#include <stdio.h>

int suma(int op1, int op2){
    return (op1+op2);
}

int resta(int op1, int op2){
    return (op1-op2);
}

int multiplica(int op1, int op2){
    return (op1*op2);
}

int divideix(int op1, int op2){
    return (op1/op2);
}

int major(int op1, int op2){
    if (op1>op2)#include <stdio.h>

int suma(int op1, int op2){
    return (op1+op2);
}

int resta(int op1, int op2){
    return (op1-op2);
}

int multiplica(int op1, int op2){
    return (op1*op2);
}

int major(int op1, int op2){
    if (op1>op2)
    {
        return op1;
    }else if (op2>op1)
    {
        return op2;
    }
}//major

int main(){
    int a=10;
    int b=5;
    printf("La suma de %d i %d és %d\n", a, b, suma(a,b));
    printf("La resta entre %d i %d és %d\n", a, b, resta(a,b));
    printf("La multiplicació de %d i %d és %d\n", a, b, multiplica(a,b));
    printf("La divisió entre %d i %d és %d\n", a, b, divideix(a,b));
    printf("El major entre %d i %d és %d\n", a, b, major(a,b));
}

COMPILAR L'ARXIU CALC.C
ORDRE: gcc -Wall -g calc.c -o calc.exe

COMPROVAR LA COMPILACIÓ
ORDRE: ./calc.exe
### Imatge Comprovació Compilació calc.exe

COMMIT 2
ORDRE: git commit -am "PAC 3 EDD, Makefile segona part"

### Imatge Commit 2

## TERCERA PART -TODO 10

CREAR CALC.H
ORDRE: nano calc.h

Contingut de l'arxiu calc.h:
(conté les capçaleres de les funcions de suma, resta, multiplica, divideix i major)

#ifndef MYCALC
#define MYCALC

int suma(int op1, int op2);
int resta(int op1, int op2);
int multiplica(int op1, int op2);
int divideix(int op1, int op2);
int major(int op1, int op2);

#endif

CREAR CALCULA.C
ORDRE: nano calcula.c

Contingut de l'arxiu Calcula.c:
(Conté la funció main i l'arxiu calc.h)
#include <stdio.h>
#include "calc.h"

int main(){
    int a=10;
    int b=5;
    printf("La suma de %d i %d és %d\n", a, b, suma(a,b));
    printf("La resta entre %d i %d és %d\n", a, b, resta(a,b));
    printf("La multiplicació de %d i %d és %d\n", a, b, multiplica(a,b));
    printf("La divisió entre %d i %d és %d\n", a, b, divideix(a,b));
    printf("El major entre %d i %d és %d\n", a, b, major(a,b));
}

COMPILACIONS:
(PRIMER calc.c en calc.o)
ORDRE:gcc -Wall -g -c calc.c -o calc.o

(Després calcula.c incluint calc.o)
ORDRE: gcc -Wall -g calcula.c calc.o -o calcula.exe

## Imatge Comprovació Compilació Calcula

CREAR MAKEFILE
ORDRE: nano Makefile
Contingut de l'arxiu makefile:
CC=gcc
CFLAGS=-Wall -g

calcula: calcual.c calc.o
        $(CC) $(FLAGS) -c calc.c calc.o -o calcula

calcula.o: calc.c calc.h
        $(CC) $(FLAGS) -c calc.c -o calc.o

.PHONY: clean
clean:
        rm -rf *.o

.PHONY: dist
dist: clean calcula
        rm -rf ../distt;
        mkdir -p ../distt/calc
        cp calcula ../distt/calc

.PHONY: targz
targz: clean
        mkdir -p source
        cp *.c *.h Makefile source
#       tar -cvf calcula.tar.gz source
#       gzip calcula.tar
        tar -cvzf calcula.tar.gz source
        rm -rf calcula.tar
        rm -rf source

.PHONY: install
install: dist
        sudo cp -r ..dist/*/

COMMIT 3
ORDRE: git commit -am "PAC 3 EDD, Makefile tercera part"

### Imatge Comprovació 3er commit
