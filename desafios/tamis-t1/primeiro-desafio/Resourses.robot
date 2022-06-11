*** Settings ***
Documentation    desafio 01 - Acessar o site da Tok&Stok, 
...              expandir um departamento colchões no menu,
...              acessar uma categoria e realizar as validações colchões excluisivos (asserts).


Library          SeleniumLibrary
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador


*** Variables ***
${URL}                            https://www.tokstok.com.br/
${CATEGORIA_COLCHÔES}             //div[@class='vtex-menu-2-x-styledLinkContent vtex-menu-2-x-styledLinkContent--subMenuItems vtex-menu-2-x-styledLinkContent--subMenuFirstLevel vtex-menu-2-x-styledLinkContent--subMenuFornitureItems vtex-menu-2-x-styledLinkContent--gtmGeneralEvents vtex-menu-2-x-styledLinkContent--gtm-event-category_tokstok__geral vtex-menu-2-x-styledLinkContent--gtm-event-action_clique__menu-superior vtex-menu-2-x-styledLinkContent--gtm-event-label_colchoes flex justify-between nowrap'][contains(.,'Colchões')]
${TÍTULO_COLCHÕES}                //p[@class='t-title-mattresses-l t-heading-2 fw3  mb0'][contains(.,'Colchões exclusivos')]
${FILTROS}                        //div[@class='tokstoksponsorio-custom-filter-navigator-0-x-filter-container tokstoksponsorio-custom-filter-navigator-0-x-filter-container--is-show-more']           
${DEPARTAMENTO_MÓVEIS}            //div[@class='vtex-menu-2-x-styledLinkContent vtex-menu-2-x-styledLinkContent--headerDepartmentItem vtex-menu-2-x-styledLinkContent--headerDepartmentItemForniture vtex-menu-2-x-styledLinkContent--gtmGeneralEvents vtex-menu-2-x-styledLinkContent--gtm-event-category_tokstok__geral vtex-menu-2-x-styledLinkContent--gtm-event-action_clique__menu-superior vtex-menu-2-x-styledLinkContent--gtm-event-label_moveis flex justify-between nowrap'][contains(.,'Móveis')]
${BOTÃO_COOKIES}                  //button[contains(.,'Continuar e fechar')]
${LOGO_TOK&STOK}                  //img[contains(@data-src,'ee0b8ba758e3c21e076108ec6b13ab11.svg')]


*** Test Cases ***
Test Case - DESAFIO1
    Acessar a pagina da Tok&Stok (Tok&Stok)
    Abrir o Departamento moveis no Menu
    Acessar a categoria "colchões"
    Validações a serem feitas na categoria colchões

*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    Close Browser  

Acessar a pagina da Tok&Stok (Tok&Stok)
    Go To                            url=${URL}
    Wait Until Element Is Visible    locator=${LOGO_TOK&STOK}
    Wait Until Element Is Visible    locator=${BOTÃO_COOKIES}
    Click Button                     locator=${BOTÃO_COOKIES}       
                      
Abrir o Departamento moveis no Menu
    Mouse Over    locator=${DEPARTAMENTO_MÓVEIS} 

Acessar a categoria "colchões"
    Wait Until Element Is Enabled    locator=${CATEGORIA_COLCHÔES}  
    Click Element                    locator=${CATEGORIA_COLCHÔES}  
    
Validações a serem feitas na categoria colchões

    Wait Until Element Is Visible    locator=${CATEGORIA_COLCHÔES}   
    Element Should Be Visible    locator=${CATEGORIA_COLCHÔES}   
Validação Titulo
    Element Should Be Visible    locator=${TÍTULO_COLCHÕES}
Listar de Filtros
    Element Should Be Visible    locator=${TÍTULO_COLCHÕES}