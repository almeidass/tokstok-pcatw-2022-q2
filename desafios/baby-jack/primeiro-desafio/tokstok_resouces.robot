*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${URL}                 http://www.tokstok.com.br
${MENU_MOVEIS}        //div[contains(@class,'moveis flex justify-between nowrap')]
${MENU_MESAS}         //div[contains(@class,'mesas flex justify-between nowrap')]
${HEADER_MESA}        //h1[contains(.,'Mesa')]
${BREADCRUMB_MESA}    //div[contains(@class,'tokstoksponsorio-custom-breadcrumb-0-x-breadcrumbContainer tokstoksponsorio-custom-breadcrumb-0-x-breadcrumbContainer--breadcrumbCatalogs')]
${FILTROS}            //div[contains(@class,'tokstoksponsorio-custom-filter-navigator-0-x-filter-container tokstoksponsorio-custom-filter-navigator-0-x-filter-container--is-show-more')]
# ${TEXTO_HEADER_ELETRONICOS}  Eletrônicos e Tecnologia

*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window

# Fechar o navegador
#     Capture Page Screenshot
#     Close Browser

Dado que estou na home page da tokstok.com.br
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${MENU_MOVEIS} 
    
Quando expando a Categoria "Moveis"
    Mouse Over    locator=${MENU_MOVEIS}
    #  Click Element    locator=${MENU_MESAS}

Então o texto "${FRASE}" deve ser exibido na categoria
    Wait Until Page Contains    text=${FRASE}
    # Element Should Be Visible    locator=${MENU_MESAS}

E clico na subcategoria "Mesas"
    Click Element    locator=${MENU_MESAS}

Então o texto "Mesa" deve ser exibido na pagina
    Wait Until Element Is Visible    locator=${HEADER_MESA} 

E exibe o submenu da categoria "home > Moveis > Mesas"
    Wait Until Element Is Visible    locator=${BREADCRUMB_MESA}

E exibe as menu "categoria | tendencia | Designer | Cor | Material | Formato"
    Wait Until Element Is Visible    locator=${FILTROS}

