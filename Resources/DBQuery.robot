*** Settings ***
Library  WhiteLibrary
Library    DatabaseLibrary
Resource    ./Common.robot
Test Setup    Common.Connect


*** Variables ***

*** Test Cases ***
Recuperar los precios de los diferentes tipos de servicios
    Common.Recuperar la suma de las ganancias por los tipo de servicio 1
    Common.Recuperar la suma de las ganancias por los tipo de servicio 2
    Common.Recuperar la suma de las ganancias por los tipo de servicio 3
    Common.Recuperar la suma de las ganancias por los tipo de servicio 4
    Common.Recuperar la suma de las ganancias por los tipo de servicio 5


