require './05_classes/app/fogao'

class GerenciarFogao
    def initialize(fogao)
        @fogao = nova_pessoa
    end

    def add_pessoa(nova_pessoa)
        @pessoa.push(nova_pessoa)
    end

    def pessoas
        @pessoa
    end

    def get_pessoa_pelo_nome_completo(nome_completo)
        for pessoa in @pessoa do
            if pessoa.nome_completo == nome_completo
                return pessoa.nome_completo
            end
        end
        nil
    end

end