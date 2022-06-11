*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${URL}                          https://www.tokstok.com.br/
${BOTÃO_COOKIES}                //button[contains(.,'Continuar e fechar')]
${DEPARTAMENTO_ACESSORIOS}      //div[@class='vtex-menu-2-x-styledLinkContent vtex-menu-2-x-styledLinkContent--headerDepartmentItem vtex-menu-2-x-styledLinkContent--headerDepartmentItemAcessories vtex-menu-2-x-styledLinkContent--gtmGeneralEvents vtex-menu-2-x-styledLinkContent--gtm-event-category_tokstok__geral vtex-menu-2-x-styledLinkContent--gtm-event-action_clique__menu-superior vtex-menu-2-x-styledLinkContent--gtm-event-label_acessorios flex justify-between nowrap'][contains(.,'Acessórios')] 
${CATEGORIA_INFANTIL}           //div[@class='vtex-menu-2-x-styledLinkContent vtex-menu-2-x-styledLinkContent--subMenuItems vtex-menu-2-x-styledLinkContent--subMenuFirstLevel vtex-menu-2-x-styledLinkContent--subMenuAcessoriesItems vtex-menu-2-x-styledLinkContent--gtmGeneralEvents vtex-menu-2-x-styledLinkContent--gtm-event-category_tokstok__geral vtex-menu-2-x-styledLinkContent--gtm-event-action_clique__menu-superior vtex-menu-2-x-styledLinkContent--gtm-event-label_infantil flex justify-between nowrap'][contains(.,'Infantil')]
${FILTROS}                      //div[@class='tokstoksponsorio-custom-filter-navigator-0-x-filterTitle f5 flex items-center justify-between'][contains(.,'Características')]
${BREADCRUMB_INFANTIL}          //span[@class='tokstoksponsorio-custom-breadcrumb-0-x-breadcrumbText tokstoksponsorio-custom-breadcrumb-0-x-breadcrumbText--breadcrumbCatalogs'][contains(.,'infantil')]
${TITULO_ACESSÓRIOS_INFANTIS}   //h1[@class='tokstoksponsorio-custom-filter-navigator-0-x-galleryTitleCustom t-heading-1'][contains(.,'Acessórios infantis')]       


*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window

Fechar o navegador
    Close Browser 

Acessar a pagina inicial da Tok&Stok
    Go To                            url= ${URL}
    Wait Until Element Is Visible    locator=${BOTÃO_COOKIES}
    Click Button                     locator=${BOTÃO_COOKIES} 
    

Expandir o Departamento "acessórios" no Menu
    Mouse Over    locator=${DEPARTAMENTO_ACESSORIOS} 

Acessar a categoria "infantil"
    Wait Until Element Is Enabled    locator=${CATEGORIA_INFANTIL}
    Click Element                    locator=${CATEGORIA_INFANTIL} 

    
Validações na categoria "Infantil"
    # Breadcrumb
    Wait Until Element Is Visible    locator=${BREADCRUMB_INFANTIL} 
    Element Should Be Visible        locator=${BREADCRUMB_INFANTIL} 
    # validação Titulo
    Element Should Be Visible        locator=${TITULO_ACESSÓRIOS_INFANTIS} 
    # Listagem de Filtros
    Element Should Be Visible        locator=${FILTROS}