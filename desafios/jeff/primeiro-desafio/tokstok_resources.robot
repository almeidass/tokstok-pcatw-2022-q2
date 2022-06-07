*** Settings ***
Library    SeleniumLibrary

*** Variables *** 
${url}                             https://www.tokstok.com.br/
${Menu_Móveis}                     //div[@class='vtex-menu-2-x-styledLinkContent vtex-menu-2-x-styledLinkContent--headerDepartmentItem vtex-menu-2-x-styledLinkContent--headerDepartmentItemForniture vtex-menu-2-x-styledLinkContent--gtmGeneralEvents vtex-menu-2-x-styledLinkContent--gtm-event-category_tokstok__geral vtex-menu-2-x-styledLinkContent--gtm-event-action_clique__menu-superior vtex-menu-2-x-styledLinkContent--gtm-event-label_moveis flex justify-between nowrap'][contains(.,'Móveis')]
${Produto_Espelho}                 //div[@class='vtex-menu-2-x-styledLinkContent vtex-menu-2-x-styledLinkContent--subMenuItems vtex-menu-2-x-styledLinkContent--subMenuFirstLevel vtex-menu-2-x-styledLinkContent--subMenuFornitureItems vtex-menu-2-x-styledLinkContent--gtmGeneralEvents vtex-menu-2-x-styledLinkContent--gtm-event-category_tokstok__geral vtex-menu-2-x-styledLinkContent--gtm-event-action_clique__menu-superior vtex-menu-2-x-styledLinkContent--gtm-event-label_espelhos flex justify-between nowrap'][contains(.,'Espelhos')]
${Produto}                         //h1[@class='tokstoksponsorio-custom-filter-navigator-0-x-galleryTitleCustom t-heading-1'][contains(.,'Espelho')]
${Continuar_Fechar}                //button[@class='tokstoksponsorio-cookies-dialog-0-x-cookieButton'][contains(.,'Continuar e fechar')]
${Breadcrumb}                      //div[@class='tokstoksponsorio-custom-breadcrumb-0-x-breadcrumbContainer tokstoksponsorio-custom-breadcrumb-0-x-breadcrumbContainer--breadcrumbCatalogs'][contains(.,'Homemoveisespelhos')]
${Espelho}                         //h1[@class='tokstoksponsorio-custom-filter-navigator-0-x-galleryTitleCustom t-heading-1'][contains(.,'Espelho')]
${filtros}                         //div[@class='tokstoksponsorio-custom-filter-navigator-0-x-filter-container tokstoksponsorio-custom-filter-navigator-0-x-filter-container--is-show-more'][contains(.,'CategoriasTendênciaDesignerCorMaterialFormato')]

*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    Close Browser

Acessar a home page do site Tokstok.com.br
    Go To    url=${url}
    Wait Until Element Is Visible    locator=${Menu_Móveis} 
    Wait Until Element Is Visible    ${Continuar_Fechar}

Expandir o menu Móveis
    Mouse Over    locator=${Menu_Móveis}

Acessar a categoria de "Espelhos"
    Wait Until Element Is Visible    locator=${Produto_Espelho}
    Wait Until Element Is Visible    ${Continuar_Fechar}
    Click Element    locator=${Produto_Espelho}


Verificar se o Breadcrumb está visível
    Wait Until Element Is Visible    locator=${Produto}
    Wait Until Element Is Visible    ${Continuar_Fechar}
    Wait Until Element Is Visible    locator=${Breadcrumb} 
    Click Button    locator=${Continuar_Fechar}

Verificar se o título "Espelho" está visível
    Wait Until Element Is Visible    locator=${Espelho} 

Verificar se os filtros estão visíveis
    Wait Until Element Is Visible  locator=${filtros}

# #GHERKIN STEPS 
# Dado que estou na home page da Tokstok.com.br
#     Acessar a home page do site Tokstok.com.br
    
# Quando acessar o menu "Móveis" e categoria "Espelhos"
#     Expandir o menu Móveis
#     Acessar a categoria de "Espelhos"

# Então validar que os campos Breadcrumb, Titulo do Produto e Filtros estão visíveis na tela
#     Verificar se o Breadcrumb está visível
#     Verificar se o título "Espelho" está visível
#     Verificar se os filtros estão visíveis


    






    
    

