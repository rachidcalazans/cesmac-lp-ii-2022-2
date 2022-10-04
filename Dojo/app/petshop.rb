class Petshop
    def initialize 
        @pets = []
        @valor = 0
    end
    def banho(pet)
        @valor += 20
        @pets << pet
    end
    def lista
        @pets
    end
    def tosa(pet)
        @valor += 25
        @pets << pet
    end
    def banho_tosa(pet)
        @valor += 38.25
        @pets << pet
    end
    def valor_total
        @valor
    end
end
