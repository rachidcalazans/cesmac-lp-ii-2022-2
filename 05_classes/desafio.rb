require "minitest/autorun"

class Pessoa

    def initialize(nome, sobrenome)
        @nome = nome
        @sobrenome = sobrenome
    end

    def nome_completo
        "#{nome()} #{sobrenome()}"
    end

    v = Pessoa.new('Vinícius', 'Cerqueira')

    nome_completo = v.nome_completo()
end