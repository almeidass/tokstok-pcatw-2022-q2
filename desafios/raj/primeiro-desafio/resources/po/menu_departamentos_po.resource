*** Settings ***
Library          SeleniumLibrary

*** Variables ***
${MENU_DEPARTAMENTO}       //nav[contains(@class, "vtex-menu-2-x-menuContainerNav--headerDepartmentsItems")]
${MENU_LISTA_CATEGORIA}    //nav[contains(@class, "vtex-menu-2-x-menuContainerNav--departmentMenu")]    

*** Keywords ***
Acessar PLP Departamento Via Menu De Departamentos
    [Arguments]                      ${nome_departamento}
    Wait Until Element Is Visible    ${MENU_DEPARTAMENTO}
    Click Element                    ${MENU_DEPARTAMENTO}//div[contains(text(), "${nome_departamento}")]

Expandir Menu Deparmaentos
    [Arguments]                      ${nome_departamento}
    Sleep    3
    Wait Until Element Is Visible    ${MENU_DEPARTAMENTO}
    Mouse Over                       ${MENU_DEPARTAMENTO}//div[contains(text(), "${nome_departamento}")]
    Wait Until Element Is Visible    ${MENU_LISTA_CATEGORIA}

Acessar PLP Categoria Via Menu De Departamentos
    [Arguments]                      ${nome_departamento}    ${nome_categoria}
    Expandir Menu Deparmaentos       ${nome_departamento}
    Click Element                    ${MENU_LISTA_CATEGORIA}//div[contains(text(), "${nome_categoria}")]       
