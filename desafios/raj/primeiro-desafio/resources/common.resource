*** Settings ***
Library          SeleniumLibrary

*** Variables ***
${BASE_URL}      https://www.tokstok.com.br
${BROWSER}       Chrome

*** Keywords ***
Abrir Navegador
    Open Browser    browser=${BROWSER}
    Maximize Browser Window

Fechar Navegador
    Close All Browsers
