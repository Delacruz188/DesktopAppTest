*** Settings ***
Library    WhiteLibrary

*** Variables ***
${NOMBRE_ARCHIVO} =    Reporte_1

*** Keywords ***
open word
    launch application    C:\\Program Files\\Microsoft Office\\root\\Office16\\WINWORD.EXE
    Attach window    Word
    Click Item    text:Documento en blanco
#
paste the graphic
    Mouse Right Click    750    750
    Click Item    text:Imagen

#save
#    Sleep    3s
#    Click Item    text:Pestaña Archivo
##    Sleep    3s
#    Click Item    text:Compartir
##    Sleep    3s
#    Click Item    text:Correo electrónico
##    Sleep    3s
#    Click Button    text:Enviar como PDF
##    sleep    5s
#    Mouse Click   250    178
#    Click Item     text:Para
#
##    attach window    'Doc1 - Mensaje'
##    Sleep    3s
#
#    press keys    cdelacruz@walook.com.mx
##    Click Button    text:Enviar



save
    Click Item    text:Pestaña Archivo
#    Sleep    3s
    Click Item    text:Exportar
#    Sleep    3s
    Click Item    text:Crear documento PDF/XPS
#    Sleep    3s
    WhiteLibrary.Click Button    text:Crear documento PDF/XPS
#    sleep    5s
#    Mouse Click   250    178
#    Click Item     text:cuadro combinado Nombre de archivo:
    WhiteLibrary.Press Keys    ${NOMBRE_ARCHIVO}
    WhiteLibrary.Click Button    text:Publicar
#    attach window    'Doc1 - Mensaje'
#    Sleep    3s

#    press keys    cdelacruz@walook.com.mx
#    Click Button    text:Enviar
