class Produto

    attr_accessor :sabor, :estoque, :valor

    def initialize(sabor, valor)
        @sabor = sabor
        @valor = valor
    end

    def getName
        return @sabor
    end

    def setName(sabor)
        @sabor = sabor
    end

    def valor
        return @valor 
    end

    def selecionarValor(valor)
        @valor = valor
    end
end