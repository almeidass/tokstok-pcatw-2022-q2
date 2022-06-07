*** Settings ***
Library        SeleniumLibrary

*** Variables ***
${browser}                                chrome
${url}                                    http://www.tokstok.com.br/
${logo_tokstok}                           //img[@class='vtex-store-components-3-x-logoImage vtex-render-runtime-8-x-lazyload lazyloaded']
${menus}                                  //ul[@class='vtex-menu-2-x-menuContainer vtex-menu-2-x-menuContainer--headerDepartmentsItems list flex pl0 mv0 flex-row'][contains(.,'MóveisAcessóriosAmbientesInspiraçãoNovidadesPromoções')]
${cookies}                                //button[contains(.,'Continuar e fechar')]
${texto_departamento}                     //div[@class='vtex-flex-layout-0-x-flexRow vtex-flex-layout-0-x-flexRow--textSeoDepartamentPage']
${ver_todos_filtros}                      //button[contains(.,'Ver todos os filtros')]
${breadcrumb}                             //div[@class='tokstoksponsorio-custom-breadcrumb-0-x-breadcrumbContainer tokstoksponsorio-custom-breadcrumb-0-x-breadcrumbContainer--breadcrumbCatalogs']
${filtros_cozinha}                        //div[@class='tokstoksponsorio-custom-filter-navigator-0-x-filter-container tokstoksponsorio-custom-filter-navigator-0-x-filter-container--is-show-more'][contains(.,'CategoriasTendênciaCaracterísticasDesignerSituaçãoTamanhoCorMaterialFormato')]

*** Keywords ***
Abrir o navegador
    Open Browser    browser=${browser} 
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    Close Browser  

Dado que estou na home page da Tok&Stok
    Go to                            url=${url} 
    Wait Until Element Is Visible    locator=${logo_tokstok} 
    Wait Until Element Is Visible    locator=${menus}
    Wait Until Element Is Visible    locator=${cookies} 
    Click Button                     locator=${cookies}

Quando o usuário expandir o menu "${menu_acessorios}"
    Mouse Over                       locator=//div[contains(@class,'${menu_acessorios} flex justify-between nowrap')]

E acessar a categoria "${menu_cozinha}"
    Wait Until Element Is Visible    locator=//div[contains(@class,'${menu_cozinha} flex justify-between nowrap')]
    Click Element                    locator=//div[contains(@class,'${menu_cozinha} flex justify-between nowrap')] 

Então o breadcrumb deve estar visível
    Wait Until Element Is Visible    locator=${ver_todos_filtros}  
    Element Should Be Visible        locator=${breadcrumb}

E o título da página deve ser "${titulo_pagina}"
    Element Should Be Visible        locator=//h1[contains(.,'${titulo_pagina}')]

E os filtros devem ser exibidos
    Element Should Be Visible        locator=${filtros_cozinha}