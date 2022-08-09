#todo arquivo de teste que utilizará a biblioteca minitest, deverá iniciar com 'test_'
#a extensão para ruby é .rb

require 'minitest/autorun' #importar a biblioteca de teste de outro arquivo para este

# PARA EXECUTAR O TESTE DIRETO DO TERMINAL ruby -ilib:test 01_ruby_e_testes\teste\test_minitest.rb

class TestMinitest < Minitest::Test #classe de teste - seguir esse modelo sempre que for criar uma classe de teste
    def test_nome_sucesso #declaração de um método em ruby -- sempre em snake_case // todo método de teste precisa do prefixo test_
        nome = 'Nicolas'
        nome2 = 'Roberta'
        assert_equal 'Roberta', nome2
        assert_equal 'Nicolas', nome
        assert_equal 'Nicolas 2', nome
        
    end #todo def tem um end também para fechar o bloco

    def test_skipped
        skip #comando para pular o método de teste atual
        nome = 'Nicolas'
        nome1 = 'Roberta'
        assert_equal 'Nicolas', nome
        assert_equal 'Roberta', nome1
    end
end #end serve para fechar os blocos em ruby
#O nome das classes precisam ser em PascalCase -- PrimeirasLetrasMaiúsculas

