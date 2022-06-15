*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${URL}                http://www.tokstok.com.br
${MENU_MOVEIS}        //div[@class='vtex-menu-2-x-styledLinkContent vtex-menu-2-x-styledLinkContent--headerDepartmentItem vtex-menu-2-x-styledLinkContent--headerDepartmentItemForniture vtex-menu-2-x-styledLinkContent--gtmGeneralEvents vtex-menu-2-x-styledLinkContent--gtm-event-category_tokstok__geral vtex-menu-2-x-styledLinkContent--gtm-event-action_clique__menu-superior vtex-menu-2-x-styledLinkContent--gtm-event-label_moveis flex justify-between nowrap'][contains(.,'Móveis')]
${MENU_MESAS}         //div[@class='vtex-menu-2-x-styledLinkContent vtex-menu-2-x-styledLinkContent--subMenuItems vtex-menu-2-x-styledLinkContent--subMenuFirstLevel vtex-menu-2-x-styledLinkContent--subMenuFornitureItems vtex-menu-2-x-styledLinkContent--gtmGeneralEvents vtex-menu-2-x-styledLinkContent--gtm-event-category_tokstok__geral vtex-menu-2-x-styledLinkContent--gtm-event-action_clique__menu-superior vtex-menu-2-x-styledLinkContent--gtm-event-label_mesas flex justify-between nowrap'][contains(.,'Mesas')]
${HEADER_MESA}        //h1[@class='tokstoksponsorio-custom-filter-navigator-0-x-galleryTitleCustom t-heading-1'][contains(.,'Mesa')]
${BREADCRUMB_MESA}    //a[contains(@class,'tokstoksponsorio-custom-breadcrumb-0-x-breadcrumbLink tokstoksponsorio-custom-breadcrumb-0-x-breadcrumbLink--breadcrumbCatalogs tokstoksponsorio-custom-breadcrumb-0-x-breadcrumbLink--last tokstoksponsorio-custom-breadcrumb-0-x-breadcrumbLink--breadcrumbCatalogs--last')]
${FILTROS}            //div[contains(@class,'tokstoksponsorio-custom-filter-navigator-0-x-filter-container tokstoksponsorio-custom-filter-navigator-0-x-filter-container--is-show-more')]


*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window

# Fechar o navegador
#     Capture Page Screenshot
#     Close Browser

Acessar a home page da tokstok.com.br
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${MENU_MOVEIS} 
    
Expandir a Categoria "Moveis"
    Mouse Over    locator=${MENU_MOVEIS}

Validar o texto "${FRASE}" exibido na categoria 
    Wait Until Page Contains    text=${FRASE}

Acionar a subcategoria "Mesas"
    Click Element    locator=${MENU_MESAS}

Validar o texto "Mesa" exibido na pagina
    Wait Until Element Is Visible    locator=${HEADER_MESA} 

Validar o submenu da categoria "home > moveis > mesas"
    Wait Until Element Is Visible    locator=${BREADCRUMB_MESA}

Validar o menu filtros "Categorias | Tendência | Características | Designer | Situação | Lugares | Tamanho"
    Wait Until Element Is Visible    locator=${FILTROS}
