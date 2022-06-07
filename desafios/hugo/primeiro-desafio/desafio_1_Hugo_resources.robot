*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${URL}                         https://www.tokstok.com.br
${DEP_ACESSORIOS}              //a[@href='/acessorios'][contains(.,'Acessórios')]
${CATEG}                       //div[@class='vtex-menu-2-x-styledLinkContent vtex-menu-2-x-styledLinkContent--subMenuItems vtex-menu-2-x-styledLinkContent--subMenuFirstLevel vtex-menu-2-x-styledLinkContent--subMenuAcessoriesItems vtex-menu-2-x-styledLinkContent--gtmGeneralEvents vtex-menu-2-x-styledLinkContent--gtm-event-category_tokstok__geral vtex-menu-2-x-styledLinkContent--gtm-event-action_clique__menu-superior vtex-menu-2-x-styledLinkContent--gtm-event-label_animais-de-estimacao flex justify-between nowrap'][contains(.,'Animais de estimação')]
${BREADCRUMB}                  //div[@class='tokstoksponsorio-custom-breadcrumb-0-x-breadcrumbContainer tokstoksponsorio-custom-breadcrumb-0-x-breadcrumbContainer--breadcrumbCatalogs'][contains(.,'Homeacessoriosanimais de estimacao')]
${TITULO}                      //h1[@class='tokstoksponsorio-custom-filter-navigator-0-x-galleryTitleCustom t-heading-1'][contains(.,'Animais de estimação')]
${FILTROS}                     //div[@class='tokstoksponsorio-custom-filter-navigator-0-x-filter-container tokstoksponsorio-custom-filter-navigator-0-x-filter-container--is-show-more'][contains(.,'CategoriasTendênciaCaracterísticasDesignerSituaçãoCorMaterial')]
*** Keywords ***

Abrir o navegador
    Open Browser    browser=chrome 
    Maximize Browser Window


Fechar o navegador 
    Close Browser 

Acessar a home page do site tokstok.com.br
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${DEP_ACESSORIOS}   

Expandir o departamento "Acessórios"
    Mouse Down    locator=${DEP_ACESSORIOS} 

Acessar a categoria "Animais de estimação"
    Click Element    locator=${CATEG}
    Wait Until Element Is Visible    locator=${TITULO}

Verificar se o Breadcrumb está visível
    Element Should Be Visible    locator=${BREADCRUMB}  

Verificar se o título da página "Animais de estimação" está visível
    Element Should Be Visible    locator=${TITULO}

Verificar se os Filtros estão visíveis
    Element Should Be Visible    locator=${FILTROS}


