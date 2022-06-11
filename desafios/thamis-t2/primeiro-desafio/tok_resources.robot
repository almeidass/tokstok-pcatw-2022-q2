*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${BROWSER}                      chrome
${URL}                          https://www.tokstok.com.br
${TITULO_HOME}                    //title[contains(.,'Tok&Stok | Loja de Móveis, Decorações e Acessórios')]
${DEPARTAMENTO_AMBIENTES}       //div[contains(@class,'ambientes flex justify-between nowrap')]
${TITULO_ESCRITORIO}           //title[contains(.,'Decoração para Escritório: Inspire-se com a Tok&Stok')]


*** Keywords ***

Abrir o navegador
    Open Browser    browser=${BROWSER}
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    Close Browser

Acessar a home page do site tokstok.com.br
    Go To    url=${URL}
    # Title Should Be     title=${TITULO_HOME}

Expandir o departamento "Ambientes"
    Wait Until Element Is Visible       locator=${DEPARTAMENTO_AMBIENTES}    #timeout=20
    Mouse Over                          locator=${DEPARTAMENTO_AMBIENTES}

Acessar a categoria "${NOME_CATEGORIA}"
    Wait Until Element Is Visible    locator=//a[@title='${NOME_CATEGORIA}']    timeout=20  
    Click Element                    locator=//a[contains(@title,'${NOME_CATEGORIA}')]
    Title Should Be                  title=${TITULO_ESCRITORIO}

Verificar se o breadcrumb está visível
    Wait Until Element Is Visible    locator=//div[@class='tokstoksponsorio-custom-breadcrumb-0-x-breadcrumbContainer tokstoksponsorio-custom-breadcrumb-0-x-breadcrumbContainer--breadcrumbCatalogs']
    Element Should Be Visible        locator=//span[contains(.,'Home')]
    Element Should Be Visible        locator=//span[@class='tokstoksponsorio-custom-breadcrumb-0-x-breadcrumbText tokstoksponsorio-custom-breadcrumb-0-x-breadcrumbText--breadcrumbCatalogs'][contains(.,'ambientes')]
    Element Should Be Visible        locator=//span[contains(.,'escritorio')]

Verificar se o título "Escritório" está visível
    Element Should Be Visible   locator=//h1[contains(.,'Escritório')]

Verificar se os filtros estão visíveis
    Element Should Be Visible    locator=//div[@class='tokstoksponsorio-custom-filter-navigator-0-x-filter-container tokstoksponsorio-custom-filter-navigator-0-x-filter-container--is-show-more']
