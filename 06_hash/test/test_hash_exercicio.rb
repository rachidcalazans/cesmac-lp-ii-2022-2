require "minitest/autorun"

class TestHashExercicio < Minitest::Test

    def test_inicializar_hash
        lista_hash =
        [
            { nome: 'Ze', matricula: '0001' },
            { nome: 'Joao', matricula: '0002' },
            { nome: 'Maria', matricula: '0003' }
        ]
        

        lista_hash.each do |hash|
          hash.each do |key, value|

            if(key == :nome and value == 'Joao')
              hash[:matricula] = '0004'

            elsif (key == :matricula and value == '0001')
              hash[:nome] = 'Zé Felipe'
            end
          end
        end   

        lista_hash.delete_if { |hash| hash[:matricula] == '0003'}



        assert_equal lista_hash[0][:nome], 'Zé Felipe'
        
        assert_equal lista_hash[1][:matricula], '0004'

        assert_nil lista_hash[2]
    end

    
end
