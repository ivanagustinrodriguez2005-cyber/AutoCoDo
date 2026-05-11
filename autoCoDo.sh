#!/usr/bin/env bash
#FUNCIONES---------------------------------------------------------------------------------------
menuseleccionCoDo() {
    echo "presione (1), si desea descomprimir un archivo" >&2
    echo "presione (2), si desea comprimir un archivo" >&2
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

#------------------------------------------------------------------------------------------------

#MAIN-------------------------------------------------------------------------------------
echo 'BIENVENIDO AL PROGRAMA DE AUTOMATIZACION DE TAREAS "CoDo"'
    opcion=$(menuseleccionCo)
    case $opcion in
        1)
            #SECCION CO
            opcion=$(menuseleccionCo)
            case $opcion in
                1)
                    read -p 'ingree explicitamente la direccion del archivo u/o directorio que desea comprimir: ' fuente
                    read -p 'ingrese nombre del comprimido: ' nom
                    read -p 'ingrese la direccion al directorio que quiere comprimir el archivo: ' destino
                    zip -r "$destino/$nom.zip" "$fuente"
                    echo 'se creo exitosamente el comprimido'
                    ;;
                2)
                    read -p 'ingree explicitamente la direccion del archivo u/o directorio que desea comprimir: ' fuente
                    read -p 'ingrese nombre del comprimido: ' nom
                    zip -r "$nom.zip" "$fuente"
                    echo 'se creo exitosamente el comprimido'
                    ;;
                esac
                ;;
        2)
            #SECCION DO
            opcion=$(menuseleccionDO)
            case $opcion in
                1)
                    #SELECCION [SELECCIONA D]

                    ;;
                2)
                    #SELECCION [NO SELECCIONA D]
                    ;;
                esac

        esac
echo '--------------------------------------------------------'
#------------------------------------------------------------------------------------------

