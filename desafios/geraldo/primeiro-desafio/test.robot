*** Settings ***
Documentation     Primeiro Desafio Do Plano De Capacitação Em Automação De Testes WEB - Geraldo Viana
Library           SeleniumLibrary


*** Variables ***
${LOGIN URL}      https://www.tokstok.com.br/
${BROWSER}        Chrome

*** Test Cases ***
Acessar tokstok
    Abrir site tokstok
    Selecionar departamento
    Valida Breadcrumb
    Valida Titulo 
    Valida Filtros

*** Keywords ***
Abrir site tokstok
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Title Should Be    Tok&Stok | Loja de Móveis, Decorações e Acessórios
    Maximize Browser Window


Selecionar departamento
    Wait Until Element Is Visible   id:headerMenu   timeout=60s
    Mouse Over                      id:headerMenu
    Wait Until Element Is Enabled   //*[@id="menu-link-infantil"]/div
    Click Element                   //*[@id="menu-link-infantil"]/div

Valida Breadcrumb
    Wait Until Element Is Visible   //*[contains(@class, 'breadcrumbContainer')]    timeout=30s
    Element Should Be Visible       //*[contains(@class, 'breadcrumbContainer')]

Valida Titulo 
    Element Should Be Visible      //*[contains(@class, 'galleryTitleCustom ')]
    
Valida Filtros
    Element Should Be Visible       //*[contains(@class, 'tokstoksponsorio-custom-filter-navigator-0-x-filter-container')]