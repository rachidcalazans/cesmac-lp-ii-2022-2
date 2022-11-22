require './prova_02 copy/app/flau'

class GerenciarFlau

    attr_accessor :sabor, :estoque, :quantidadeVendida
    
    def initialize(sabor, quantidade)
        @sabor = sabor
        #@quantidadeVendida = 0
       # @quantidade = (quantidade - quantidadeVendida)
        @quantidade = quantidade
        @estoque = quantidade
    end

    def valorVenda(qtd)
        flau = Flau.new(@sabor, qtd)
        @valorVenda =  qtd * flau.precoUnitario(@sabor)
        #return @valorVenda
    end

    def venda(qtd)
        #flau = Flau.new(@sabor, @quantidade - quantidadeVendida)
        flau = Flau.new(@sabor, qtd)
        @quantidadeVendida = flau.quantidade + qtd
        @estoque = @quantidade - qtd
    end

    #def estoque
        #@estoque = @quantidade - @quantidadeVendida
        #@estoque
    #end

end