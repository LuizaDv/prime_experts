*** Settings ***
Resource  ../exercicios_variaveis/resource.robot

*** Test Cases ***
Cenário 01: Exercício dicionário
  [Documentation]  Esse cenário imprime um dicionário
  [Tags]  dicionário
  Imprimir informações da pessoa

Cenário 02: Exercício lista
  [Documentation]  Esse cenário imprime uma lista
  [Tags]  lista
  Imprimir informações das frutas