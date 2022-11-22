class Flau

    attr_accessor :sabor, :quantidade, :precoUnitario
    def initialize(sabor, quantidade)
        @sabor = sabor
        @precoUnitario = precoUnitario
        @quantidade = quantidade
    end

    def precoUnitario()
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

end