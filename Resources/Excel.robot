*** Settings ***
Library  WhiteLibrary
#Resource    ./Common.robot

*** Variables ***

@{TOTAL_PRODUCTO_1} =   1477
@{TOTAL_PRODUCTO_2} =   1252
@{TOTAL_PRODUCTO_3} =   979
@{TOTAL_PRODUCTO_4} =   1431
@{TOTAL_PRODUCTO_5} =   1206


*** Keywords ***

open excel
    [Tags]    Smoke
    Launch Application  C:\\Program Files\\Microsoft Office\\root\\Office16\\EXCEL.EXE
    Attach window    Excel
    Click Item    text:Libro en blanco
#    Press Keys    Alt enter
#    write in a cell
write the headers
    sleep    3s
    Click Item    text:"A" 3
    WhiteLibrary.Press Keys    Ganancias
    Click Item    text:"B" 3

put each total in a table
    Sleep    3s
    Click Item    text:"A" 4
    WhiteLibrary.Press Keys    @{TOTAL_PRODUCTO_1}
    Click Item    text:"A" 5
    WhiteLibrary.Press Keys    @{TOTAL_PRODUCTO_2}
    Click Item    text:"A" 6
    WhiteLibrary.Press Keys    @{TOTAL_PRODUCTO_3}
    Click Item    text:"A" 7
    WhiteLibrary.Press Keys    @{TOTAL_PRODUCTO_4}
    Click Item    text:"A" 8
    WhiteLibrary.Press Keys    @{TOTAL_PRODUCTO_5}

put each tiposervicio's name in a table
    Sleep    3s
    Click Item    text:"B" 4
    WhiteLibrary.Press Keys    Servicio 1
    Click Item    text:"B" 5
    WhiteLibrary.Press Keys    Servicio 2
    Click Item    text:"B" 6
    WhiteLibrary.Press Keys    Servicio 3
    Click Item    text:"B" 7
    WhiteLibrary.Press Keys    Servicio 4
    Click Item    text:"B" 8
    WhiteLibrary.Press Keys    Servicio 5

graphic
    sleep    3s
    WhiteLibrary.Drag And Drop    text:"A" 4    text:"A" 8
    Click Item    text:Insertar
    Click Item    text:Insertar gráfico circular o de anillos
    Click Item    text:Circular 3D

copy the graphic
    Mouse Right Click    750    750
    Click Item    text:Copiar


save the file
    Sleep    3s
    Click Item    text:Cerrar
    Sleep    3s
    WhiteLibrary.Press Keys    TEST_EXCEL
    Sleep    3s
    Click Item    text:Guardar

#send to print
#    Sleep    3s
#    Click Item    text:Pestaña Archivo
#    Sleep    3s
#    Click Item    text:Imprimir
#    Sleep    3s
#    Click Button    text:Imprimir
