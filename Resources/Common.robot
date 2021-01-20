*** Settings ***
Library  WhiteLibrary
Library    DatabaseLibrary

*** Variables ***
${BROWSER}    Chrome
${URI}    http://localhost/car_wash/catalogos/socios/listado
${DB_NAME} =  car_wash
${DB_USERNAME} =  root
${DB_USERPASS} =  1234
${DB_HOST} =  127.0.0.1
${DB_PORT} =  3306
@{SUMA_TIPO_SERVICIO_1} =  ''
@{SUMA_TIPO_SERVICIO_2} =  ''
@{SUMA_TIPO_SERVICIO_3} =  ''
@{SUMA_TIPO_SERVICIO_4} =  ''
@{SUMA_TIPO_SERVICIO_5} =  ''

*** Keywords ***
Connect
    connect to database    pymysql    ${DB_NAME}    ${DB_USERNAME}    ${DB_USERPASS}    ${DB_HOST}    ${DB_PORT}

Recuperar la suma de las ganancias por los tipo de servicio 1
    @{SUMA_TIPO_SERVICIO_1} =   query    select sum(precio) from `servicio` where idtiposervicio = 1
    set global variable    @{SUMA_TIPO_SERVICIO_1}
    log    @{SUMA_TIPO_SERVICIO_1}[0]


Recuperar la suma de las ganancias por los tipo de servicio 2
    @{SUMA_TIPO_SERVICIO_2} =   query    select sum(precio) from `servicio` where idtiposervicio = 2
    set global variable    @{SUMA_TIPO_SERVICIO_2}
    log    @{SUMA_TIPO_SERVICIO_2}[0]

Recuperar la suma de las ganancias por los tipo de servicio 3
    @{SUMA_TIPO_SERVICIO_3} =   query    select sum(precio) from `servicio` where idtiposervicio = 3
    set global variable    @{SUMA_TIPO_SERVICIO_3}
    log    @{SUMA_TIPO_SERVICIO_3}[0]

Recuperar la suma de las ganancias por los tipo de servicio 4
    @{SUMA_TIPO_SERVICIO_4} =   query    select sum(precio) from `servicio` where idtiposervicio = 4
    set global variable    @{SUMA_TIPO_SERVICIO_4}
    log    @{SUMA_TIPO_SERVICIO_4}[0]

Recuperar la suma de las ganancias por los tipo de servicio 5
    @{SUMA_TIPO_SERVICIO_5} =   query    select sum(precio) from `servicio` where idtiposervicio = 5
    set global variable    @{SUMA_TIPO_SERVICIO_5}
    log many    @{SUMA_TIPO_SERVICIO_5}[0]

