*** Settings ***
Library        SeleniumLibrary

*** Variables ***
${URL}    https://www.tokstok.com.br/
${LOGO}   //img[contains(@class,'vtex-store-components-3-x-logoImage vtex-render-runtime-8-x-lazyload lazyloaded')]
${MOVEIS}    //div[contains(@class,'moveis flex justify-between nowrap')]
${MESAS}    menu-link-mesas
${BREADCRUMBS_MESAS}    //div[@class='tokstoksponsorio-custom-breadcrumb-0-x-breadcrumbContainer tokstoksponsorio-custom-breadcrumb-0-x-breadcrumbContainer--breadcrumbCatalogs']
${TITULO_MESAS}    //h1[contains(.,'Mesa')]
${FILTROS}    //div[contains(@class,'tokstoksponsorio-custom-filter-navigator-0-x-filter-container tokstoksponsorio-custom-filter-navigator-0-x-filter-container--is-show-more')]


*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    Close Browser   

Acessar a home page do site da tok&stok
    Go To    ${URL}    
    Wait Until Element Is Visible    locator=${LOGO}
    Sleep    8s

Expandir um Departamento no Menu
    Mouse Over    locator=${MOVEIS}
    Sleep    5s

Acessar uma Categoria
    Acessar a home page do site da tok&stok
    Expandir um Departamento no Menu
    Wait Until Element Is Visible    id=${MESAS}
    Click Element     id=${MESAS}

Validar se as breadcrumbs estão visiveis
    Wait Until Element Is Visible    locator=${BREADCRUMBS_MESAS}

Validar se o titulo esta visivel
    Wait Until Element Is Visible    locator=${TITULO_MESAS}

Validar se os filtros estão visiveis
    Wait Until Element Is Visible    locator=${FILTROS}
