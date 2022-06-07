*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${TOKSTOK}    https://www.tokstok.com.br/
${LOGO}    //img[@class='vtex-store-components-3-x-logoImage vtex-render-runtime-8-x-lazyload lazyloaded']
${TITULO}    //h1[@class='tokstoksponsorio-custom-filter-navigator-0-x-galleryTitleCustom t-heading-1'][contains(.,'Mesa')]
${BREADCUMB}   //div[contains(@class,'tokstoksponsorio-custom-breadcrumb-0-x-breadcrumbContainer tokstoksponsorio-custom-breadcrumb-0-x-breadcrumbContainer--breadcrumbCatalogs')]
${FILTRO}    //div[contains(@class,'tokstoksponsorio-custom-filter-navigator-0-x-filter-container tokstoksponsorio-custom-filter-navigator-0-x-filter-container--is-show-more')]

*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    Close Browser

Acessar a página da Tok&Stok
    Go To    url=${TOKSTOK}
    Wait Until Element Is Visible    locator=${LOGO}

Expandir o menu "${MENU}"
    Mouse Over    locator=//div[@class='vtex-menu-2-x-styledLinkContent vtex-menu-2-x-styledLinkContent--headerDepartmentItem vtex-menu-2-x-styledLinkContent--headerDepartmentItemForniture vtex-menu-2-x-styledLinkContent--gtmGeneralEvents vtex-menu-2-x-styledLinkContent--gtm-event-category_tokstok__geral vtex-menu-2-x-styledLinkContent--gtm-event-action_clique__menu-superior vtex-menu-2-x-styledLinkContent--gtm-event-label_moveis flex justify-between nowrap'][contains(.,'${MENU}')]
    Wait Until Element Is Visible    locator=//div[@class='vtex-menu-2-x-submenuWrapper vtex-menu-2-x-submenuWrapper--departmentSubmenu vtex-menu-2-x-submenuWrapper--departmentMoveisSubmenu vtex-menu-2-x-submenuWrapper--isOpen vtex-menu-2-x-submenuWrapper--departmentSubmenu--isOpen vtex-menu-2-x-submenuWrapper--departmentMoveisSubmenu--isOpen absolute left-0 bg-base pt4 pb4 bw1 bb b--muted-3 z-2 flex']

Acessar a categoria "${SUBMENU}"
    Wait Until Element Is Visible    locator=//div[contains(@class,'${SUBMENU} mh6 pv2')]
    Click Element    locator=//div[contains(@class,'${SUBMENU} mh6 pv2')]
    Wait Until Element Is Visible    locator=${TITULO}

Verificar se o Breadcrumb está visível
    Element Should Be Visible    locator=${BREADCUMB}

Verificar se o título está visível
    Element Should Be Visible    locator=${TITULO}

Verificar se os filtros estão visíveis
    Wait Until Element Is Visible    locator=${FILTRO} 