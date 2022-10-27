class Estoque

    attr_accessor :sabor, :estoque, :valor

    def initialize (produto, estoque)
        @produto = produto
        @estoque = estoque
    end

    def produto
        @produto
    end

    def selecionarProduto(produto)        
        @product = produto
    end

    def estoque
        @estoque
    end

    def selecionarestoque
        @estoque = estoque
    end

    def venda(quantidade)
        @estoque = @estoque - quantidade
    end
end