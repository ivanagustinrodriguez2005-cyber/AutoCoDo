#!/usr/bin/env bash
#-e para ver si un fichero existe
#FUNCIONES---------------------------------------------------------------------------------------
menuseleccionCoDo() {
    echo "presione (1), si desea comprimir un archivo" >&2
    echo "presione (2), si desea descomprimir un archivo" >&2
    read -p "ingrese su seleccion: " opcion
    echo "$opcion" 
}
menuseleccionCo () {
    echo "presione (1), si seleccionara directorio donde comprimir archivo" >&2
    echo "presione (2), si no seleccionara directorio y se comprima en su actual directorio" >&2
    read -p "ingrese su seleccion: " opcion
    echo "$opcion"
} 

menuseleccionDO () {
    echo "presione (1), si seleccionara el directorio donde se descomprimira su archivo" >&2
    echo "presione (2), si no seleccionara el directorio y quiere que se haga dentro de su directorio actual" >&2
    read -p "ingrese su seleccion: " opcion
    echo "$opcion"
}

#VALIDACIONES------------------------------------------------------------------------------------------------------
validacionCCO (){

    while true; do
    if [[ ! -d $fuente && ! -f $fuente ]]; then
        echo "ERRROR: ingrese bien la fuente de su directorio u/o archivo" >&2
        read -p ": " fuente
    else
        echo "--a ingresado bien la fuente--" >&2
        break
    fi
    done
    while true; do
    if [[ ! -d $destino && ! -f $destino ]]; then
        echo "ERRROR: ingrese bien laingrese nuevamente la direccion de destino direccion de destino de su comprimido" >&2
        read -p ": " destino
    else
        echo "--a ingresado bien la direccion de destino--" >&2
        break
    fi
    done              
}
validacionCo (){
     while true; do
     if [[ ! -d $fuente && ! -f $fuente ]]; then
        echo "ERRROR: ingrese bien la fuente de su directorio u/o archivo" >&2
        read -p ": " fuente
    else
        echo "--a ingresado bien la fuente--" >&2
        break
    fi
    done
}
validacionesCDO () {
    while true; do
    if [[ $fuente != *.zip ]]; then
        echo "ERRROR: ingrese bien la direccion del .zip que quiere descomprimir" >&2
        read -p ": " fuente
    else
        echo "--a ingresado bien la fuente--" >&2
        break
    fi
    done
    # no se me ocurre que podria poner mal el usuario en direccion dado que en caso que no exista el directorio simplemente
    #se creeara
}
#FIN VALIDACIONES------------------------------------------------------------------------------------------------------------------
#FIN FUNCIONES------------------------------------------------------------------------------------------------

#MAIN-------------------------------------------------------------------------------------
echo 'BIENVENIDO AL PROGRAMA DE AUTOMATIZACION DE TAREAS "CoDo"'
    opcion=$(menuseleccionCoDo)
    clear
    case $opcion in
        1)
            #SECCION CO
            opcion=$(menuseleccionCo)
            clear
            case $opcion in
                1)
                    read -p 'ingrese explicitamente la direccion del archivo u/o directorio que desea comprimir: ' fuente
                    read -p 'ingrese nombre entero del comprimido: ' nom
                    read -p 'ingrese la direccion al directorio que quiere comprimir el archivo: ' destino
                    clear
                    validacionCCO "$fuente" "$destino" 
                    zip -r "$destino/$nom.zip" "$fuente"
                    clear
                    echo 'se creo exitosamente el comprimido'
                    ;;
                2)
                    read -p 'ingree explicitamente la direccion del archivo u/o directorio que desea comprimir: ' fuente
                    read -p 'ingrese nombre del comprimido: ' nom
                    clear
                    validacionCo "$fuente"
                    zip -r "$nom.zip" "$fuente"
                    clear
                    echo 'se creo exitosamente el comprimido'
                    ;;
                esac
                ;;
        2)
            #SECCION DO
            opcion=$(menuseleccionDO)
            clear
            case $opcion in
                1)
                    #SELECCION [SELECCIONA D]
                    read -p "ingrese explicitamente la direccion del archivo u/o directorio que desea descomprimir: " fuente
                    read -p "ingrese nombre del directorio donde alojara el descomprimido: " nom
                    read -p "ingrese la direccion del directorio al que quiere descomprimir el archivo: " destino
                    clear
                    validacionesCDO "$fuente" "$destino"
                    unzip "$fuente" -d "$destino/$nom"
                    clear
                    echo "se creo exitosamente el descomprimido"

                    ;;
                2)
                    #SELECCION [NO SELECCIONA D]
                    read -p "ingrese explicitamente la direccion del archivo u/o directorio que desea descomprimir: " fuente
                    read -p "ingresa el nombre entero del descomprimido: " nom
                    clear
                    validacionesCDO "$fuente" "$destino"
                    unzip "$fuente" -d "$nom"
                    clear
                    echo "se creo exitosamente el descomprimido"
                    ;;
                esac

        esac
echo '--------------------------------------------------------'
#FIN MAIN------------------------------------------------------------------------------------------

