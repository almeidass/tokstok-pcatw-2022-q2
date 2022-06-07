*** Settings ***

Documentation  Esta suíte testa o site tokstok.com.br
Test Setup     Abrir o navegador
Test Teardown  Fechar o navegador
Library    SeleniumLibrary

*** Test Cases ***

Caso de teste 01 - Acessar uma categoria
    Acessar a home page do site "https://www.tokstok.com.br"
    Expandir o menu Móveis "moveis"
    Clicar na subcategoria Camas e cabeceiras "camas"
    Verificar se Título da categoria está sendo exibido corretamente "Camas e cabeceiras"
    Verificar se Breadcrumb está sendo exibido corretamente "camas"
    Verificar se os filtros estão sendo exibidos corretamente


*** Variables ***
  
${FILTROS}    //div[@class='tokstoksponsorio-custom-filter-navigator-0-x-filter-container tokstoksponsorio-custom-filter-navigator-0-x-filter-container--is-show-more']
${BOTÃO_COOKIES}            //button[contains(.,'Continuar e fechar')]

*** Keywords ***

Abrir o navegador
    Open Browser  browser=chrome
    Maximize Browser Window

Fechar o navegador
    Close Browser

Acessar a home page do site "${URL}"
    Go to    ${URL}
    Wait Until Element Is Visible    locator=${BOTÃO_COOKIES}    timeout=20s
    Wait Until Element Is Visible    locator=//div[contains(@class, 'moveis')]
    Click Button    locator=${BOTÃO_COOKIES}

Expandir o menu Móveis "${CATEGORIA}"
    Mouse Over    locator=//div[contains(@class, '${CATEGORIA}')]
    Wait Until Element Is Visible    locator=//div[contains(@class, 'camas')]
    
Clicar na subcategoria Camas e cabeceiras "${SUBCATEGORIA}"
    Click Element    locator=//div[contains(@class, '${SUBCATEGORIA}')]
    Wait Until Page Contains Element    locator=${FILTROS}

Verificar se Título da categoria está sendo exibido corretamente "${TITULO}"
    Element Should Be Visible    locator=//h1[contains(.,'${TITULO}')]

Verificar se Breadcrumb está sendo exibido corretamente "${BREADCRUMB}"
    Element Should Be Visible    locator=//span[contains(.,'${BREADCRUMB}')]
    
Verificar se os filtros estão sendo exibidos corretamente
    Element Should Be Visible    locator=${FILTROS}

    

