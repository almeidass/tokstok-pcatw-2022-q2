*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${URL}                 https://www.tokstok.com.br/
${MENU_ACESSORIOS}   //a[@href='/acessorios'][contains(.,'Acessórios')]

*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    Close Browser

Acessar a página da Tok&Stok
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${MENU_ACESSORIOS}

Expandir o departamento Acessórios no Menu
    Mouse Over   locator=${MENU_ACESSORIOS}

Acessar a categoria "artesanato"
    Wait Until Element Is Visible    locator=${MENU_ACESSORIOS}
    Sleep    3s
    Click Element    locator=//a[@id="menu-link-artesanato"]

Verificar se o Breadcrumb está visível
    Wait Until Element Is Visible    locator=//div[@class='tokstoksponsorio-custom-breadcrumb-0-x-breadcrumbContainer tokstoksponsorio-custom-breadcrumb-0-x-breadcrumbContainer--breadcrumbCatalogs'][contains(.,'Homeacessoriosartesanato')]
    Element should be visible    locator=//div[@class='tokstoksponsorio-custom-breadcrumb-0-x-breadcrumbContainer tokstoksponsorio-custom-breadcrumb-0-x-breadcrumbContainer--breadcrumbCatalogs'][contains(.,'Homeacessoriosartesanato')]

Verificar se o título está visível
    Element Should Be Visible    locator=//h1[@class='tokstoksponsorio-custom-filter-navigator-0-x-galleryTitleCustom t-heading-1'][contains(.,'Artesanato')]

Verificar se os filtros estão visíveis
    Wait Until Element Is Visible    locator=//div[@class='tokstoksponsorio-custom-filter-navigator-0-x-filter-container tokstoksponsorio-custom-filter-navigator-0-x-filter-container--is-show-more'][contains(.,'CategoriasTendênciaCaracterísticasDesignerSituaçãoTamanhoCorMaterialFormato')]
 
 
    