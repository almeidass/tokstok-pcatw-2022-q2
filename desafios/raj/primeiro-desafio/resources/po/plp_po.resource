*** Settings ***
Library          SeleniumLibrary
Resource         menu_departamentos_po.resource

*** Variables ***
${PLP_BREADCRUMB_CONTAINER}   //div[contains(@class, "tokstoksponsorio-custom-breadcrumb-0-x-breadcrumbContainer")]
${PLP_TITULO_DEPARTAMENTO}    //h1[contains(@class, "vtex-search-result-3-x-galleryTitle--layout")]
${PLP_TITULO_CATEGORIA}       //h1[contains(@class, "tokstoksponsorio-custom-filter-navigator-0-x-galleryTitleCustom")]
${PLP_FILTRO_CONTAINER}       //div[contains(@class, "tokstoksponsorio-custom-filter-navigator-0-x-filter-container")]

*** Keywords ***
Validar Carregamento PLP Departamento
    Wait Until Element Is Visible    ${PLP_BREADCRUMB_CONTAINER}
    Wait Until Element Is Visible    ${PLP_TITULO_DEPARTAMENTO}
    Wait Until Element Is Visible    ${PLP_FILTRO_CONTAINER}

Validar Carregamento PLP Categoria
    Wait Until Element Is Visible    ${PLP_BREADCRUMB_CONTAINER}
    Wait Until Element Is Visible    ${PLP_TITULO_CATEGORIA}
    Wait Until Element Is Visible    ${PLP_FILTRO_CONTAINER}
