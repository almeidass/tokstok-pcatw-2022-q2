*** Settings ***
Documentation       1º Desafio - Capacitaçao em Automação | Weslene Sabóia

Library             SeleniumLibrary


*** Variables ***
${URL}                      https://www.tokstok.com.br
${MENU_ACESSORIOS}          //a[@id="headerMenu"][@href="/acessorios"]
${CATEGORIA_ILUMINACAO}     id: menu-link-acessorios-iluminacao
${TITULO_ILUMINACAO}        //h1[contains(text(), "Iluminação")]
${BREADCRUMB}               //div[contains(@class, 'tokstoksponsorio-custom-breadcrumb-0-x-breadcrumbContainer')]
${FILTROS}                  //div[contains(@class, "tokstoksponsorio-custom-filter-navigator-0-x-filter-container")] 


*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    Close Browser

Acessar a home page da Tokstok
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${MENU_ACESSORIOS}    timeout=10s

Expandir um departamento no Menu
    Sleep         3s 
    Mouse Over    locator=${MENU_ACESSORIOS}

Acessar a categoria Iluminação
    Wait Until Element Is Visible    locator=${CATEGORIA_ILUMINACAO}    timeout=10s
    Click Element                    locator=${CATEGORIA_ILUMINACAO} 

Verificar se o Breadcrumb está visível
    Wait Until Element is Visible    locator=${BREADCRUMB}
    Element Should Be Visible        locator=${BREADCRUMB}

Verificar se o título da categoria "Iluminação" está sendo exibido corretamente
    Element Should Be Visible    locator=${TITULO_ILUMINACAO} 

Verificar se os filtros estão sendo exibidos corretamente
    Wait Until Element Is Visible    locator=${FILTROS}    timeout=10s
