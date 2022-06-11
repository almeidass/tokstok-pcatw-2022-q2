*** Settings ***
Library    SeleniumLibrary



*** Variables ***
${URL}    https://www.tokstok.com.br/
${MOVEIS}   //a[@title='Móveis']
${HEADER_MVJ}    //div[contains(@class,'vtex-menu-2-x-styledLinkContent vtex-menu-2-x-styledLinkContent--subMenuItems vtex-menu-2-x-styledLinkContent--subMenuFirstLevel vtex-menu-2-x-styledLinkContent--subMenuFornitureItems vtex-menu-2-x-styledLinkContent--gtmGeneralEvents vtex-menu-2-x-styledLinkContent--gtm-event-category_tokstok__geral vtex-menu-2-x-styledLinkContent--gtm-event-action_clique__menu-superior vtex-menu-2-x-styledLinkContent--gtm-event-label_varanda-e-jardim flex justify-between nowrap')]
${TEXTO_MENU}    Varanda e jardim    
*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window


Acessar a home page do site tokstok.com.br
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${MOVEIS}
Entrar no menu "Móveis"
    Click Element    locator=${MOVEIS}

Verificar se aparece a frase "Varanda e jardim"
    Mouse Over    locator=${MOVEIS}
    Wait Until Page Contains    text=${TEXTO_MENU}
    Wait Until Element Is Visible    locator=${HEADER_MVJ}
    Click Element    locator=${HEADER_MVJ}

Verificar se o título da página fica "Móveis para varanda e jardim"
    Title Should Be    title=Móveis para varanda e jardim


