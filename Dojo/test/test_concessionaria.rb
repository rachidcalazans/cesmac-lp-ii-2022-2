
require "minitest/autorun"
# Importando a class Fogao que está nesse path
require './Dojo/app/concessionary'

# Exercício:
# - Fazer todos os testes passarem. Não é para alterar nada nesse arquivo de teste.
# - Criar todos os métodos necessários
class TestConcessionary < Minitest::Test
    def test_car
        car = Concessionary.new()
        cars = car.cars
        assert_equal 0, car.value
        assert_equal 2, cars[:corolla]
        assert_equal 3, cars[:yaris]
    end

    def test_buy
        car = Concessionary.new()
        cars = car.cars

        car.buy("corolla")
        car.buy("corolla")
        car.buy("yaris")

        assert_equal 0, cars[:corolla]
        assert_equal 2, cars[:yaris]
        assert_equal 420000, car.valor_total
    end
end  