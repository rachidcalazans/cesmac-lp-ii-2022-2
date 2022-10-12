class Concessionaria
    def initialize
        @yaris
        @corolla
        @valoryaris
        @valorcorolla
        @vendas
    end
    def yaris
        @yaris = 3
        @valoryaris = 120.000,00
    end
    def corolla
        @corolla = 2
        @valorcorolla = 150.000,00
    end
    def saldo_inicial
        @yaris = 00,00
        @corolla = 00,00
    end
    def estoque_yaris
        @yaris = yaris - 1
    end
    def estoque_corolla
        @corolla = corola -2
    end
    def vendas
        @vendas = 420.000,00
        
    end
 end