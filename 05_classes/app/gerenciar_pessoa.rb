class GerenciarPessoa
    def initialize(lista_pessoa)
        @lista_pessoa = lista_pessoa 
    end
    def pessoas
        @lista_pessoa 
    end

    def add_pessoa(pessoa)
        @lista_pessoa << pessoa
    end

end