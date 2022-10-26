
require "minitest/autorun"

require './05_classes/app/gerenciar'
class TestgerenciarPessoa < Minitest::Test

    def test_pessoas
      pessoas = Pessoas.new('Lucio Roberto')
      pessoas2 = Pessoas.new('Junior Silva')
  
      assert_equal 'Lucio Roberto', pessoas.nome()
     
  
      assert_equal 'Junior Silva', pessoas2.nome()
  
    
      lista_pessoas = ['Lucio Roberto', 'Junior Silva']   
      assert_equal lista_pessoas = ['Lucio Roberto', 'Junior Silva'], lista_pessoas
    end

end
  
