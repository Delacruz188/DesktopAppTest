*** Settings ***
Library    SeleniumLibrary
Library    WhiteLibrary
Resource    ./Word.robot

*** Variables ***
${TEXT_AREA_DESTINATARIO} =    //*[@id="_to"]
${BUTTON_ADJUNTAR_ARCHIVO} =    //*[@id="compose-attachments"]/div/a
${USUARIO} =    cdelacruz@walook.com.mx
${PASS} =    Admin1234%
${PATH_DOCUMENTOS} =    C:\Users\delac\OneDrive\Documentos
*** Keywords ***
enviar correo
    open browser    https://walook.com.mx:2096/cpsess6138734231/3rdparty/roundcube/?_task=mail&_mbox=INBOX    chrome
    SeleniumLibrary.Click Button    xpath://*[@id="details-button"]
    click element    xpath://*[@id="proceed-link"]
    input text    xpath://*[@id="user"]    ${USUARIO}
    input text    xpath://*[@id="pass"]   ${PASS}
    SeleniumLibrary.Click Button    xpath://*[@id="login_submit"]
#    click element    rcmbtn111
    sleep    5s
    click element    xpath://*[@id="rcmbtn111"]
    sleep    3s
    input text    xpath:${TEXT_AREA_DESTINATARIO}    ${USUARIO}
    SeleniumLibrary.click element    xpath:${BUTTON_ADJUNTAR_ARCHIVO}
    Click Item    text:Mostrar todos los archivos…
#    get item    text:'Abrir'
#    click item    text:'Este equipo'
#    click item    text:'Documentos'

#    attach window    Abrir
#    whitelibrary.mouse click    189    98

#    Click Item    text:"Cuadro de búsqueda"
#    WhiteLibrary.Input Text To Textbox    text:"Cuadro de búsqueda"    hola
#    click item    text:${NOMBRE_ARCHIVO}
#    press keys    ${NOMBRE_ARCHIVO}
