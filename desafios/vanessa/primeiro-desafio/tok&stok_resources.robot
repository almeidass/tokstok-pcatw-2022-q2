*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}                             https://www.tokstok.com.br
${BOTÃO_COOKIES}                   //button[contains(.,'Continuar e fechar')]
${MENU_MOVEIS}                     //div[contains(@class, 'moveis')]
${CATEGORIA_INFANTIL}              //div[contains(@class,'infantil flex justify-between nowrap')]
${ELM_TITULO}                      //h1[@class="tokstoksponsorio-custom-filter-navigator-0-x-galleryTitleCustom t-heading-1"]
${FILTROS}                         //div[@role='button'][contains(.,'Material')]
${BREADCRUMB}                      //div[@class='tokstoksponsorio-custom-breadcrumb-0-x-breadcrumbContainer tokstoksponsorio-custom-breadcrumb-0-x-breadcrumbContainer--breadcrumbCatalogs']  

*** Keywords ***
Abrir o navegador
    Open Browser    browser=Chrome
    Maximize Browser Window

Fechar o navegador
    Close Browser

Acessar a home page do site Tokstok.com.br
    Go To    url=${URL}

Verificar se o título da página é "${titulo}"
    Title Should Be  ${titulo}
    Wait Until Element Is Visible    locator=${BOTÃO_COOKIES}
    Click Button    locator=${BOTÃO_COOKIES}

Expandir o menu "moveis"
    Sleep    3
    Mouse Over    locator=${MENU_MOVEIS}

Verificar se aparece a palavra "infantil"
    Wait Until Element Is Visible    locator=${CATEGORIA_INFANTIL}
    Click Element    locator=${CATEGORIA_INFANTIL} 

Verificar se o título da PLP é "${titulo}"
   Wait Until Element Is Visible    locator=${ELM_TITULO}    timeout=10
   Element Should Be Visible    locator=//h1[contains(text(), "${titulo}")]

Verificar se o Breadcrumb esta visivel 
    Element Should Be Visible    locator=${BREADCRUMB}

Verificar se os Filtros estão visiveis
    Element Should Be Visible    locator=${FILTROS}
