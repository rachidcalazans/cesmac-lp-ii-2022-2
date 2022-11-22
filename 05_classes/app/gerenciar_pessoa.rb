class Gerenciar_Pessoa

    def initialize(nome_completo, lista, add_pessoa, get_pessoa_pelo_nome_completo)

        @nome_completo = nome_completo
        @lista = lista
        @add_pessoa = add_pessoa
        @get_pessoa_pelo_nome_completo = get_pessoa_pelo_nome_completo
    end

    def pessoa
        @lista 
    end

    def dicionar_pessoa
        @add_pessoa
    end

    def get_pessoa_pelo_nome_completo
        @get_pessoa_pelo_nome_completo
    end
    
    def nome_completo
        @nome_completo
    end
end