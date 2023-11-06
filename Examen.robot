*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${browser}    chrome
${Url}    https://laboratoriojuanpablollantigua.bsite.net/Authentication/Login

#casos de uso#
*** Test Cases ***
loqueo
#apertura de url y driver de chrome#
    Open Browser    ${Url}    ${browser}
#features#
    Input Text    name:Username    cmarisol
    Input Text    name:Password    1234
    
    #id o name
    Click Button    name:btnLogin

    #xpath
    #Click Button     xpath://*[@id="btnLogin"]

    #css
    #Click Element     css:.btn.btn-primary.btn-lg

    Sleep    5s

#cierre de browser#
    Close Browser
