class CredentialType
    #inclui a biblioteca Capybara para conseguir usar seus elementos dentros das classes e métodos
    include Capybara::DSL

    attr_accessor :credentialTypeDescription

    def visit_Register_Credential_Type
        visit 'http://laboratorio.mdacesso.com.br/Credentials/CredentialTypeEdt.aspx?OperationType=create&chkLastTen=True&currentPaginationIndex='
    end
end