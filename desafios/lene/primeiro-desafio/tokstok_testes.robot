
*** Settings ***
Documentation   1º Desafio - Treinamento em Automação | Teste site tokstok | Weslene Sabóia
Library         SeleniumLibrary
Resource        tokstok_resources.robot
Test Setup      Abrir o navegador
Test Teardown    Fechar o navegador
  

*** Test Cases ***
Caso de Teste 01 - Acesso ao menu "Acessórios"
  [Documentation]  Esse teste acessa o menu Acessórios do site da tokstok.com.br
  ...              e verifica a categoria Iluminação.
  [Tags]           menus departamentos
  Acessar a home page da Tokstok
  Expandir um departamento no Menu
  Acessar a categoria Iluminação
  Verificar se o Breadcrumb está visível 
  Verificar se o título da categoria "Iluminação" está sendo exibido corretamente
  Verificar se os filtros estão sendo exibidos corretamente
