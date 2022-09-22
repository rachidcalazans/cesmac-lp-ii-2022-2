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

    def get_pessoa_pelo_nome_completo(nome_completo)
        @lista_pessoa.each do |p| 
            return p if p.nome_completo == nome_completo
        end
    end


end