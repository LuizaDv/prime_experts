***Settings***
Resource  ../exercicios_setup_teardown/resource.robot

Suite Setup  Teste suite setup
Suite Teardown  Teste suite teardown


*** Test Cases ***
Cenário 01: Verificando suite teardown 1
  [Setup]  setup do teste 1
  Log  executando teste
  [Teardown]  teardown do teste 1

Cenário 02: Verificando suite teardown 2
  [Setup]  setup do teste 2
  Log  executando teste
  [Teardown]  teardown do teste 2