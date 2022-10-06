class Concessionaria
    def initialize
        @yaris
        @corolla
        @valoryaris
        @valorcorolla
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
        @yaris = 2
    end
    def estoque_corolla
        @corolla = 0
    end
    def vendas
        @valoryaris = 120.000,00
        @valorcorolla = 300.000,00
    end
 end