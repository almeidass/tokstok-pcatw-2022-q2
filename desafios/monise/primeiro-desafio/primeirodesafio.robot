*** Settings *** 
Documentation   Essa suite testa o site da Tok Stok
Resource        primeirodesafioresource.robot
Test Setup      Abrir o navegador
# Test Teardown   Fechar o navegador



*** Test Cases ***
Caso de teste - Acessar o site da Tok&Stok, expandir um departamento no menu, acessar uma categoria e realizar as validações (asserts).
    Acessar a pagina da Tok&Stok
    Expandir o Departamento "acessórios" no Menu
    Acessar a categoria "artesanato"
    Validações a serem feitas na categoria "artesanato"
