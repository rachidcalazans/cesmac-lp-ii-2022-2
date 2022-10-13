class Sabores

    attr_accessor :nome, :estoque, :valor

    def initialize(nome, estoque, valor)
        @nome = nome
        @estoque = estoque
        @valor = valor
    end
end
