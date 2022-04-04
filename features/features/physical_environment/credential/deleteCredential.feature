@deleteCredential
Feature: delete Credential
    Como um usuário do sistema que tenha permissão para Excluir Credenciais.

    Background:
        Given Que o usuário esteja na página que lista as Credenciais para realizar exclusões.

    #Cenários de exclusão
    @verifyMessageAfterDeleteCredentialInUse
    Scenario: verifyMessageAfterDeleteCredentialInUse
        Given Que eu busque e encontre a credencial de número "1" cadastrada.
        When Clicar no ícone "Excluir" para tentar exlcuir a credencial do sistema.
        And Na mensagem apresentada, clicam em "Sim"_001.
        Then A mensagem apresentada deve corresponder com a mensagem esperada.

    @noDeleteCredential
    Scenario: noDeleteCredential
        Given Que eu busque e encontre a credencial de número "1000" cadastrada_001.
        When Clicar no ícone "Excluir" para tentar exlcuir a credencial do sistema_001.
        And Na mensagem apresentada, clicam em "Não".
        And Que eu busque e encontre a credencial de número "1000" cadastrada_002.
        Then A credencial "1000" ainda deve estar cadastrada no sistema.

    @verifyDeleteCredencial
    Scenario: verifyDeleteCredencial
        Given Que eu busque e encontre a credencial de número "1000" cadastrada_003.
        When Clicar no ícone "Excluir" para tentar exlcuir a credencial do sistema_002.
        And Na mensagem apresentada, clicam em "Sim"_002.
        And Que eu busque a credencial de número "1000".
        Then Validar a informação que o resultado não foi encontrado.