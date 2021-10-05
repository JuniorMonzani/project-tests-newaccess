#26
@editAreas
Feature: edit Areas
    Como um usuário do sistema que tenha permissão para Alterar Áreas.

    Background:
        Given Que o usuário esteja na página que lista as Áreas cadastradas.

    @verifyResourcesListArea
    Scenario: verifyResourcesListArea
        Given Que o usuário esteja na página que lista as Áreas cadastradas.
        Then A página deve conter os resources esperados.

    @verifyEditAreas
    Scenario: verifyEditAreas
        Given Que eu faça a busca e encontre a Área cadastrada pela automação_01.
        When Eu clico no ícone de alteração da Área_01.
        Then Deve direcionar para a página de alteração de Área.

    @verifyFieldNumberOfAreaDisabled
    Scenario: verifyFieldNumberOfAreaDisabled
        Given Que eu faça a busca e encontre a Área cadastrada pela automação_02.
        When Eu clico no ícone de alteração da Área_02.
        Then Na tela de alteração de Área eu verifico o campo Número e o mesmo deve estar desabilitado.

    @verifyDescriptionArea
    Scenario: verifyDescriptionArea
        Given Que eu faça a busca e encontre a Área cadastrada pela automação_03.
        When Eu clico no ícone de alteração da Área_03.
        Then A descrição deve ser exatamente a descrição cadastrada para a Área.

    @verifyCapacityArea
    Scenario: verifyCapacityArea
        Given Que eu faça a busca e encontre a Área cadastrada pela automação_04.
        When Eu clico no ícone de alteração da Área_04.
        Then A capacidade deve ser exatamente a capacidade cadastrada para a Área.

    @verifyNumberArea
    Scenario: verifyNumberArea
        Given Que eu faça a busca e encontre a Área cadastrada pela automação_05.
        When Eu clico no ícone de alteração da Área_05.
        Then O número da Área deve ser exatamente o mesmo cadastrado para a Área.

    @verifyCheckboxCheckedAreas
    Scenario: verifyCheckboxCheckedAreas
        Given Que eu faça a busca e encontre a Área cadastrada pela automação_06.
        When Eu clico no ícone de alteração da Área_06.
        Then Na tela de alteração de Área eu verifico todos os checkbox que devem estar marcados.

    @editAreasSuccess
    Scenario: editAreasSuccess
        Given Que eu faça a busca e encontre a Área cadastrada pela automação_07.
        When Eu clico no ícone de alteração da Área_07.
        And Alterar a Descrição.
        And Desmarcar todos os checkbox da tela.
        And Clicar no botão Salvar para salvar as alterações na Área.
        Then A Área deve ser salva com sucesso.

    @verifyAreaAfterAChange
    Scenario: verifyAreaAfterAChange
        Given Que eu faça a busca pela nova descrição e encontre a Área alterada pela automação_08.
        When Eu clico no ícone de alteração da Área_08.
        Then A descrição deve ser a descrição Alterada e todos os checkbox devem estar desmarcados.