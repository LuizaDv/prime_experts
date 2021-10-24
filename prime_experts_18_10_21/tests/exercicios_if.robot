*** Settings ***
Resource  ../exercicios_if/resource.robot

*** Test Cases ***
Cenário 01: Exercício IF
  [Documentation]  Esse cenário imprime se o valor for 5 ou 8
  [Tags]  IF
  Contando de 0 à 10