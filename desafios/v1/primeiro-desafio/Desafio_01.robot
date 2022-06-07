*** Settings ***
Documentation    Desafio 01 - Acessar o site da Tok&Stok, expandir um departamento 
...              no menu, acessar uma categoria e realizar as validações (asserts).
Library          SeleniumLibrary
Test Setup       Abrir o navegador
# Test Teardown    Fechar o navegador
*** Variables ***
${URL}                      https://www.tokstok.com.br/
${LOGO_TOK&STOK}            //img[contains(@data-src,'ee0b8ba758e3c21e076108ec6b13ab11.svg')]
${BOTÃO_COOKIES}            //button[contains(.,'Continuar e fechar')]
${TÍTULO_MESA}              //h1[contains(.,'Mesa')]
${FILTROS}                  //div[@class='tokstoksponsorio-custom-filter-navigator-0-x-filter-container tokstoksponsorio-custom-filter-navigator-0-x-filter-container--is-show-more']           

*** Test Cases ***
Test Case - Desafio 1
    Acessar a pagina da Tok&Stok (Tok&Stok)
    Expandir o Departamento "moveis" no Menu
    Acessar a categoria "mesas"
    Validações a serem feitas na categoria "mesas"

*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    Close Browser  

Acessar a pagina da Tok&Stok (Tok&Stok)
    Go To                            url=${URL}
    Wait Until Element Is Visible    locator=${LOGO_TOK&STOK}
    Wait Until Element Is Visible    locator=${BOTÃO_COOKIES}
    Click Button   
                      locator=${BOTÃO_COOKIES}
Expandir o Departamento "${DEPARTAMENTO}" no Menu
    Mouse Over    locator=//div[contains(@class,'${DEPARTAMENTO} flex justify-between nowrap')]

Acessar a categoria "${CATEGORIA}"
    Wait Until Element Is Enabled    locator=//div[contains(@class,'${CATEGORIA} flex justify-between nowrap')]
    Click Element    locator=//div[contains(@class,'${CATEGORIA} flex justify-between nowrap')]
    
Validações a serem feitas na categoria "${CATEGORIA}"
#Breadcrumb
    Wait Until Element Is Visible    locator=//span[contains(.,'${CATEGORIA}')]
    Element Should Be Visible    locator=//span[contains(.,'${CATEGORIA}')]
#Título
    Element Should Be Visible    locator=${TÍTULO_MESA}
#Filtros
    Element Should Be Visible    locator=${FILTROS}

