*** Settings ***
Documentation    Testes PLP
Resource         ../resources/common.resource
Resource         ../resources/step_definitions/home_steps.resource
Resource         ../resources/step_definitions/plp_steps.resource
Test Setup       Abrir Navegador
Test Teardown    Run Keywords
...              Capture Page Screenshot
...              Fechar Navegador

*** Test Cases ***
Acessar PLP De Departamento Via Menu De Departamentos
    Given que o cliente esteja na home do site
    When o cliente acessa PLP do departamento "Móveis"
    Then a PLP departamento deve carregada com sucesso

Acessar PLP De Categoria Via Menu De Departamentos
    Given que o cliente esteja na home do site
    When o cliente acessa PLP "Artesanato" do departamento "Acessórios"
    Then a PLP categoria deve carregada com sucesso
