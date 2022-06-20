*** Settings ***
Documentation      Essa suite de testa o site da TokStok
Resource           tokstok_resources.robot
Test Setup         Abrir o navegador
# Test Teardown      Fechar o navegador

*** Test Cases ***
Caso de teste 01 - Acessar o departamento "Móveis"
    [Documentation]    Acessar o site da Tok&Stok, expandir um departamento no menu, acessar uma categoria e realizar as validações (asserts)
    [Tags]             menus  departamento   
    Dado que eu esteja na home page do site tokstok.com.br
    Quando eu acessar o departamento "Móveis"
    E acessar categoria "Mesas"
    Então eu visualizo o "Breadcrumb"
    E visualizo o título "Mesa - Redecore com os móveis Tok&Stok"
    E visualizo "Filtros"

# Case de teste 02 - Adicionar produto ao carrinho
    # [Documentation]    Acessar o site da Tok&Stok e adicionar produto ao carrinho efetuar a validação
    # [Tags]             menus  departamento  produto
    # Dado que eu esteja na home page do site tokstok.com.br
    # Quando eu acessar o departamento "Móveis"
    # E acessar categoria "Mesas" 
    # E adicionar um produto "WINK CÔMODA 3 GAVETAS 80 CM X 40 CM"
    # Então eu visualizo o produto "WINK CÔMODA 3 GAVETAS 80 CM X 40 CM"