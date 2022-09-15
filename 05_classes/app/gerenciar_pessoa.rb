class GerenciarPessoa
    def initialize(pessoa)
        @pessoa = pessoa

    end    

    def add_pessoa(pessoa)
        @pessoa.push(pessoa)
    end

    def pessoa
        @pessoa
    end


end