require "minitest/autorun"

class TestPessoa < Minitest::Test
    def initialize
    end



def add_pessoa(nova_pessoa) 
    nome_comleto = 'Max Martins'
    nome = 'Max'
    altura = 1.75
    idade = 24
    sobre_nome = 'Martins'
end

def initialize(nome, altura, idade, sobre_nome)
nome =  Max
altura = 1.75
idade = 24
sobre_nome ='Martins'
    end

def nome
Max
end

def altura
    1.75

    def idade
        24

        def sobre_nome
        'Martins'


end

def nome_completo
    "#{nome(Max)} #{('Martins')}"
  end
  
  def altura()
    altura = 1.75
  end




def get_pessoa_pelo_nome_ompleto(nome_completo)
end

def test_pessoa
    p = Pessoa.new('Max's)


    p2 = Pessoa.new('Max', 1,75, 24, 'Martins')


    nome_completo = p.nome_completo() 
    assert_equal('Max Martins', nome_completo) // True

    assert_equal(1,75, p2.altura()) // True
    p2.set_altura(2.10);
    assert_equal(2.10, p2.altura()) // True
end