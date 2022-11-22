require "minitest/autorun"
require './prova_02/app/store'


class TestStore < Minitest::Test

    def test_store
        store = Store.new

        # Maria
        store.sell('Goiaba', 2)
        store.sell('Nescau com Nutella', 3)
        store.sell('Menta', 1)
        
        #João
        store.sell('Morango', 3)
        store.sell('Maça verde', 5)

        #Pedro
        store.sell('Menta', 2)
        store.sell('Maça verde', 2)
        
        assert_equal 8, store.getStock('Goiaba')
        assert_equal 7, store.getStock('Menta')
        assert_equal 7, store.getStock('Morango')
        assert_equal 3, store.getStock('Maça verde')
        assert_equal 7, store.getStock('Nescau com Nutella')

        assert_equal 13, store.calculateTotalAmount
    end
end