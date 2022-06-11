*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}                          https://www.tokstok.com.br
${BOTAO_CONTINUAR}              //button[@class='tokstoksponsorio-cookies-dialog-0-x-cookieButton'][contains(.,'Continuar e fechar')]
${MENU_PROMOCOES}               //div[@class='vtex-menu-2-x-styledLinkContent vtex-menu-2-x-styledLinkContent--headerDepartmentItem vtex-menu-2-x-styledLinkContent--headerDepartmentItemPromotion vtex-menu-2-x-styledLinkContent--headerDepartmentItemLink vtex-menu-2-x-styledLinkContent--gtmGeneralEvents vtex-menu-2-x-styledLinkContent--gtm-event-category_tokstok__geral vtex-menu-2-x-styledLinkContent--gtm-event-action_clique__menu-superior vtex-menu-2-x-styledLinkContent--gtm-event-label_promocoes flex justify-between nowrap'][contains(.,'Promoções')]
${MENU_AMBIENTE}                //div[@class='vtex-menu-2-x-styledLinkContent vtex-menu-2-x-styledLinkContent--headerDepartmentItem vtex-menu-2-x-styledLinkContent--headerDepartmentItemEnvironments vtex-menu-2-x-styledLinkContent--gtmGeneralEvents vtex-menu-2-x-styledLinkContent--gtm-event-category_tokstok__geral vtex-menu-2-x-styledLinkContent--gtm-event-action_clique__menu-superior vtex-menu-2-x-styledLinkContent--gtm-event-label_ambientes flex justify-between nowrap'][contains(.,'Ambientes')]
${SUB_AMBIENTE_BAR}             //a[contains(@id,'menu-link-ambientes-bar')]
${TEXTO_HEADER_BAR}             //h1[@class='tokstoksponsorio-custom-filter-navigator-0-x-galleryTitleCustom t-heading-1'][contains(.,'Utensílio de bar')]
${MENU_CATEGORIA}               //div[@class='tokstoksponsorio-custom-filter-navigator-0-x-filterTitle f5 flex items-center justify-between'][contains(.,'Categorias')]
${SUB_CATEGORIA_MESAS}          //div[@class='tokstoksponsorio-custom-filter-navigator-0-x-filter-content-item'][contains(.,'Mesas')]
${BREADCRUMB}                   //span[@class='tokstoksponsorio-custom-breadcrumb-0-x-breadcrumbText tokstoksponsorio-custom-breadcrumb-0-x-breadcrumbText--breadcrumbCatalogs'][contains(.,'bar')]
${FILTROS}                      //div[@class='tokstoksponsorio-custom-filter-navigator-0-x-filter-container tokstoksponsorio-custom-filter-navigator-0-x-filter-container--is-show-more'][contains(.,'CategoriasTendênciaCaracterísticasDesignerSituaçãoLugaresTamanhoCorMaterialFormato')]

*** Keywords ***
Abrir navegador
    Open Browser    browser=chrome
    Maximize Browser Window

Fechar navegador
    Close Browser

Acessar a home do site Tok&Stok
    Go To    url=${URL}
    Sleep    3
    Wait Until Element Is Visible    locator=${MENU_PROMOCOES}
    Wait Until Element Is Visible    locator=${BOTAO_CONTINUAR}
    Click Element                    locator=${BOTAO_CONTINUAR}

Expandir o menu ambiente
    Sleep    3
    Mouse Over    locator=${MENU_AMBIENTE}

Selecionar um ambiente
    Wait Until Element Is Visible    locator=${SUB_AMBIENTE_BAR}
    Click Element                    locator=${SUB_AMBIENTE_BAR}
    Wait Until Page Contains         text=Utensílio de bar    timeout=10s    # (assert) Se o Titulo está visível

Selecionar uma categoria
    Sleep    3
    Wait Until Element Is Visible    locator=${MENU_CATEGORIA}
    Click Element                    locator=${MENU_CATEGORIA}
    Sleep    3
    Wait Until Element Is Visible    locator=${SUB_CATEGORIA_MESAS}
    Click Element                    locator=${SUB_CATEGORIA_MESAS}

Realizar as validações (asserts)
    Sleep    5
    Wait Until Element Is Visible    locator=${BREADCRUMB}
    Wait Until Element Is Visible    locator=${FILTROS}