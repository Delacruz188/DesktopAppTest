*** Settings ***
Resource    ../Resources/Excel.robot
Resource    ../Resources/Word.robot
Resource    ../Resources/SendEmail.robot
#Test Setup    Common.connect
*** Test Cases ***
open app
    [Tags]    Smoke
    Excel.open excel
    write the headers
    Excel.put each total in a table
    Excel.graphic
    Excel.copy the graphic
    Word.open word
    Word.paste the graphic
    Word.save


