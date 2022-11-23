class Produtos
    def initialize
        @goiaba = 10
        @morango = 10
        @maca_verde = 10
        @menta = 10
        @nescal_nutella = 10
        @valor = 0
    end

    def goiaba
        @goiaba
    end

    def comprar_goiaba(quantidade)
        @valor += 0.5 * quantidade
        @goiaba = @goiaba - quantidade
    end

    def morango
        @morango
    end

    def comprar_morango(quantidade)
        @valor += 0.75 * quantidade
        @morango = @morango - quantidade
    end

    def maca_verde
        @maca_verde
    end

    def comprar_maca_verde(quantidade)
        @valor += 0.75 * quantidade
        @maca_verde = @maca_verde - quantidade
    end

    def nescal_nutella
        @nescal_nutella
    end

    def comprar_nescal_nutella(quantidade)
        @valor += 1 * quantidade
        @nescal_nutella = @nescal_nutella - quantidade
    end

    def menta
        @menta
    end

    def comprar_menta(quantidade)
        @valor += 0.5 * quantidade
        @menta = @menta - quantidade
    end

    def valor_total
        @valor 
    end
end