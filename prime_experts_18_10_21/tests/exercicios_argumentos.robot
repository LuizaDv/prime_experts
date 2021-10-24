*** Settings ***
Resource  ../exercicios_argumentos/resource.robot

*** Test Cases ***
Cenário 01: Exercício de argumento
  [Documentation]  Esse cenário cria e retorna um email através de argumento
  [Tags]  argumento
  ${email_retorno}  Criar email  Leonardo  Albuquerque  18
  Log To Console  \n
  Log To Console  \n Exercicio de argumento \n
  Log To Console  \n Email: ${email_retorno} \n
  Log To Console  \n

Cenário 02: Exercício de argumento embutido
  [Documentation]  Esse cenário cria e retorna um email através de argumento embutido
  [Tags]  argumento_embutido
  ${email_retorno}  Criar email embutido Luiza Albuquerque 24
  Log To Console  \n
  Log To Console  \n Exercicio de argumento embutido \n
  Log To Console  \n Email: ${email_retorno} \n
  Log To Console  \n