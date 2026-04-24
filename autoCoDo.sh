#!/usr/bin/env bash
menu (){
    echo 'presione (1), si quiere comprimir un archivo'
    echo 'presione (2), si quiere descomprimir un archivo'
    read -p ('ingrese su eleccion: ') opcion
    echo '$opcion'
    

}
menuseleccionCo(){
    echo 'ingrese (1), si quiere comprimir un archivo .zip'
    echo 'ingrese (2), si quiere comprimir un archivo .gz'
    read -p ('ingrese su eleccion: ') opcion
    echo '$opcion'
}
menuseleccionDo(){
    echo 'ingrese (1), si quiere descomprimir un archivo .zip'
    echo 'ingrese (2), si quiere descomprimir un archivo .gz'
    echo 'ingrese (3), si no sabe que tipo de compresion tiene'
    read -p ('ingrese su eleccion: ') opcion
    echo '$opcion'
}
echo 'BIENVENIDO AL PROGRAMA DE AUTOMATIZACION DE TAREAS "CoDo"'
opcion=$(menu)
case $opcion in
     1)
        opcion2=$(menuseleccionCo)
        case $opcion2 in
            1)


                ;;
            2)


                ;;
            esac
        ;;
     2)
        opcion3=$(menuseleccionDo)
        case $opcion3 in
            1)


                ;;
            2)


                ;;
            esac
        ;;
esac

echo '--------------------------------------------------------'


