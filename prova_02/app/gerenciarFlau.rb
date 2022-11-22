require './prova_02/app/flau'

class GerenciarFlau

    attr_accessor :sabor, :quantidade
    
    def initialize(sabor, quantidade)
        @sabor = sabor
        @quantidade = quantidade
    end

    def valorVenda(quantidadeVendida)
        flau = Flau.new(@sabor, quantidadeVendida)
        @valorVenda =  quantidadeVendida * flau.precoUnitario()
        #return @valorVenda
    end

end