class Flau
    def initialize(sabor, quantidade)
        @sabor = sabor
        @quantidade = quantidade
        
    end

    def sabor
        @sabor
    end

    def precoUnitario(sabor)
        case sabor
        when "Goiaba"
            @precoUnitario = 0.5
        when "Morango"
            @precoUnitario = 0.75
        when "Maçã Verde"
            @precoUnitario = 0.75
        when "Nescau com Nutella"
            @precoUnitario = 1.0
        when "Menta"
            @precoUnitario = 0.5
        else
            "Sabor não disponível"
        end
    end

    def quantidade
        @quantidade
    end

end