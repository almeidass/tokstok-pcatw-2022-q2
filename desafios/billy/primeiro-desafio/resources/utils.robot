*** Settings ***
Library     SeleniumLibrary

*** Variable ***
${BROWSER}                  chrome
${URL}                      https://www.tokstok.com.br/
${CABEÇALHO}                //div[@class='vtex-flex-layout-0-x-flexRow vtex-flex-layout-0-x-flexRow--headerDepartmentsContainer']
${CATEGORIAS}               //a[@href='/moveis']
${SUBCATEGORIA}             //a[@href='/moveis/camas-e-cabeceiras']
${TITULO_CATEGORIA}         //div[@class='vtex-flex-layout-0-x-flexRow vtex-flex-layout-0-x-flexRow--titleSeoDepartamentPage']
${BREADCRUM_CATEGORIA}      //div[@class='tokstoksponsorio-custom-breadcrumb-0-x-breadcrumbContainer tokstoksponsorio-custom-breadcrumb-0-x-breadcrumbContainer--breadcrumbCatalogs']
${FILTRO_CATEGORIA}         //div[@class=' tokstoksponsorio-custom-filter-navigator-0-x-filtersWrapper']
