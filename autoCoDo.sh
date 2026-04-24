menuseleccionCo () {
    echo "presione (1), si seleccionara directorio donde comprimir archivo" >&2
    echo "presione (2), si no seleccionara directorio y se comprima en su actual directorio" >&2
    read -p "ingrese su seleccion: " opcion
    echo "$opcion" 
}

echo 'BIENVENIDO AL PROGRAMA DE AUTOMATIZACION DE TAREAS "CoDo"'

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
echo '--------------------------------------------------------'


