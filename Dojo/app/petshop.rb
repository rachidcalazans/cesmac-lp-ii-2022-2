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
end
