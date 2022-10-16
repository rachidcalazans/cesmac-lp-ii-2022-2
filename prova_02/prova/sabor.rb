class Sabor

    attr_accessor :nomes, :estoques, :valores

    def initialize(nomes, estoques, valores)
        @nome = nomes
        @estoque = estoques
        @valor = valores
    end
end