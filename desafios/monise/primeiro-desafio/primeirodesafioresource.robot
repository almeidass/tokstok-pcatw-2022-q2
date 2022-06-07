*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${URL}                      https://www.tokstok.com.br/
${LOGO_TOK&STOK}            //img[contains(@data-src,'ee0b8ba758e3c21e076108ec6b13ab11.svg')]
${BOTÃO_COOKIES}            //button[contains(.,'Continuar e fechar')]
${DEPARTAMENTO_ACESSORIOS}    //div[contains(@class,'vtex-menu-2-x-styledLinkContent vtex-menu-2-x-styledLinkContent--headerDepartmentItem vtex-menu-2-x-styledLinkContent--headerDepartmentItemAcessories vtex-menu-2-x-styledLinkContent--gtmGeneralEvents vtex-menu-2-x-styledLinkContent--gtm-event-category_tokstok__geral vtex-menu-2-x-styledLinkContent--gtm-event-action_clique__menu-superior vtex-menu-2-x-styledLinkContent--gtm-event-label_acessorios flex justify-between nowrap')]
${CATEGORIA_ARTESANATO}              //div[contains(@class,'vtex-menu-2-x-styledLinkContent vtex-menu-2-x-styledLinkContent--subMenuItems vtex-menu-2-x-styledLinkContent--subMenuFirstLevel vtex-menu-2-x-styledLinkContent--subMenuAcessoriesItems vtex-menu-2-x-styledLinkContent--gtmGeneralEvents vtex-menu-2-x-styledLinkContent--gtm-event-category_tokstok__geral vtex-menu-2-x-styledLinkContent--gtm-event-action_clique__menu-superior vtex-menu-2-x-styledLinkContent--gtm-event-label_artesanato flex justify-between nowrap')]
${FILTROS}                  //*[contains(@class, 'tokstoksponsorio-custom-filter-navigator-0-x-filter-container')]      
${BREADCRUMB_ARTESANATO}     //span[@class='tokstoksponsorio-custom-breadcrumb-0-x-breadcrumbText tokstoksponsorio-custom-breadcrumb-0-x-breadcrumbText--breadcrumbCatalogs'][contains(.,'artesanato')]
${TITULO_ARTESANATO}        //h1[contains(.,'Artesanato')]




*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window

Fechar o navegador
    Close Browser 

Acessar a pagina da Tok&Stok
    Go To    url= ${URL}
    Wait Until Element Is Visible     ${LOGO_TOK&STOK}
    Wait Until Element Is Visible    locator=${BOTÃO_COOKIES}
    Click Button                     locator=${BOTÃO_COOKIES} 
    

Expandir o Departamento "acessórios" no Menu
    Mouse Over    locator=${DEPARTAMENTO_ACESSORIOS} 

Acessar a categoria "Artesanato"
    Wait Until Element Is Enabled    locator=${CATEGORIA_ARTESANATO}
    Click Element                    locator=${CATEGORIA_ARTESANATO} 

    
Validações a serem feitas na categoria "Artesanato"
    # Breadcrumb
    Wait Until Element Is Visible    locator=${BREADCRUMB_ARTESANATO} 
    Element Should Be Visible    locator=${BREADCRUMB_ARTESANATO} 
    # validação Titulo
    Element Should Be Visible    locator=${TITULO_ARTESANATO} 
    # Listagem de Filtros
    Element Should Be Visible    locator=${FILTROS}