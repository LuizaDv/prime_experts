*** Settings ***
Resource   ../resource/resourse.robot

Test Setup  Abrir navegador
Test Teardown  Fechar navegador

*** Test Cases ***
Cenário 01: Procurando por produto
  Acessar a página home do site Automation Practice
  Digitar o nome do produto "Blouse" no campo de pesquisa
  Clicar no botão de pesquisa
  Conferir se o produto "Blouse" foi listado no site

Cenário 02: Pesquisar produto não existente
  Acessar a página home do site Automation Practice
  Digitar o nome do produto "itemNãoExistente" no campo de pesquisa
  Clicar no botão de pesquisa
  Conferir mensagem "itemNãoExistente"

Cenário 03: Listar Produtos
  Acessar a página home do site Automation Practice
  Passar o mouse por cima da categoria "Women" no menu principal superior de categorias
  Clicar na sub categoria "Summer Dresses"
  Conferir se os produtos da sub-categoria "Summer Dresses" foram mostrados na página

Cenário 04: Adicionar Cliente
  Acessar a página home do site Automation Practice
  Clicar em "Sign in"
  Informar um e-mail válido
  Clicar em "Create an account"
  Preencher os dados obrigatórios
  Submeter cadastro
  Conferir se o cadastro foi efetuado com sucesso




