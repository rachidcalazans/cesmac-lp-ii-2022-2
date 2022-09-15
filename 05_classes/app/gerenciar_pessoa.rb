class GerenciarPessoa
    def initialize(pessoa)
        @pessoa = pessoa

    end    

    def add_pessoa(pessoa)
        @pessoa << pessoa
    end

    def pessoa
        @pessoa
    end

    def filtrar_pessoa(nome_completo)
        array = []
        pessoa.each do |pessoas|
            if pessoas.nome_completo == nome_completo
                array << pessoas       
            end
        end    
        return array
    end




end