class Areas
    #inclui a biblioteca Capybara para conseguir usar seus elementos dentros das classes e métodos
    include Capybara::DSL
 
    #variavel com o valor do campo 'Número' da tela de Áreas
    $REGISTER_AREAS_NUMBER = ['Número']

    #variavel com o valor do campo 'Descrição' da tela de Áreas
    $REGISTER_AREAS_DESCRIPTION = ['Descrição']

    #variavel com o valor do campo 'Capacidade' da tela de Áreas
    $REGISTER_AREAS_CAPACITY = ['Capacidade']

    def visit_Register_Areas
        visit 'https://autoteste.dimep-ams.com.br/Area/AreaEdt.aspx?OperationType=create&chkLastTen=True&currentPaginationIndex=&ddlSearchField=Number'
    end

    def visit_List_Areas
        visit 'https://autoteste.dimep-ams.com.br/Area/AreaLst.aspx'
    end

    # preenche os campos do cadastro de Áreas
    def fills_In_Areas(number, description, capacity)
        fill_in 'MainContentMainMaster_MainContent_txtAreaNumber', with: number
        fill_in 'MainContentMainMaster_MainContent_txtAreaDescription', with: description
        fill_in 'MainContentMainMaster_MainContent_txtAreaCapacity', with: capacity
    end
end