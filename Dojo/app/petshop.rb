class Petshop
    def initialize 
        @pets = []
    end
    def banho(pet)
        @pets << pet
    end
    def lista
        @pets
    end
    def tosa(pet)
        @pets << pet
    end
    def banho_tosa(pet)
        @pets << pet
    end
end
