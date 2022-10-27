require './prova_02/app/flau'

class GerenciarFlau
    attr_reader :faturamento

    def initialize(sabor, quantidade)
        @sabor = sabor
        @quantidade = quantidade
        @quantidadeVendida = 0
        @faturamento = faturamento
    end

    def valorVenda(quantidadeVendida)
        flau = Flau.new(@sabor, quantidadeVendida)
        @valorVenda =  quantidadeVendida * flau.precoUnitario(@sabor)
        @faturamento = @valorVenda
        #return @valorVenda
    end

    def venda(qtd)
        flau = Flau.new(@sabor, qtd)
        @quantidadeVendida += qtd
        @valorVenda =  qtd * flau.precoUnitario(@sabor)
        @faturamento = @valorVenda
    end

    def estoque
        @estoque = @quantidade - @quantidadeVendida
    end

end