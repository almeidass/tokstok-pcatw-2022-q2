*** Settings ***
Library     SeleniumLibrary
Resource         ../resources/utils.robot

*** Keywords ***
#### DADO
Que esteja no site da Tok&Stok
    Open Browser    ${URL}  ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible    locator=${CABEÇALHO}       timeout=10s

#### QUANDO
Expando o menu de categorias
    Mouse Over                       locator=${CATEGORIAS}

Clico na subcategoria
    Wait Until Element Is Visible    locator=${SUBCATEGORIA}
    Click Element                    locator=${SUBCATEGORIA}

#### ENTÃO
Verifico se o titulo da categoria está sendo exibido corretamente
    Wait Until Element Is Visible        locator=${TITULO_CATEGORIA} 
    Element Should Be Visible            locator=${TITULO_CATEGORIA} 

Verifico se o Breadcrumb está sendo exibido corretamente
    Wait Until Element Is Visible    locator=${BREADCRUM_CATEGORIA}
    Element should be visible        locator=${BREADCRUM_CATEGORIA}

Verifico se os filtros estao sendo exibidos corretamente
    Wait Until Element Is Visible    locator=${FILTRO_CATEGORIA} 

#### TEARDOWN
Fechar Navegador
    Close Browser
