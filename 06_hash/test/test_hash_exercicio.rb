require "minitest/autorun"

class TestHashExercicio < Minitest::Test


    def test_inicializar_hash_exercicio
        hash = {
            nome1: 'Ze', matricula1: '0001',
            nome2: 'Joao', matricula2: '0002',
            nome3: 'Maria', matricula3: '0003' 
        }

        expected_hash = {
            nome1: 'Ze', matricula1: '0001',
            nome2: 'Joao', matricula2: '0002',
            nome3: 'Maria', matricula3: '0003' 
        }
        
        assert_equal expected_hash, hash

    end

    def test_find_by_name

        hash = {
            nome1: 'Ze', matricula1: '0001',
            nome2: 'Joao', matricula2: '0002',
            nome3: 'Maria', matricula3: '0003' 
        }

        hash[:matricula2] = '0004'
        assert_equal 'Joao', hash[:nome2]
        assert_equal '0004', hash[:matricula2]

    end

    def test_find_by_registration_number

        hash = {
            nome1: 'Ze', matricula1: '0001',
            nome2: 'Joao', matricula2: '0002',
            nome3: 'Maria', matricula3: '0003' 
        }

        hash[:nome1] = 'Ze Felipe'
        assert_equal '0001', hash[:matricula1]
        assert_equal 'Ze Felipe', hash[:nome1]

        hash.delete(:nome3)
        hash.delete(:matricula3)

        expected_hash = {
            nome1: 'Ze Felipe', matricula1: '0001',
            nome2: 'Joao', matricula2: '0002' 
        }
        assert_equal expected_hash, hash
    end
end
