class Flau
  attr_accessor :sabor
  attr_accessor :preco
  attr_accessor :quantidade
  
  def initialize(sabor, preco, quantidade)
    @sabor = sabor
    @preco = preco
    @quantidade = quantidade
  end
end

def test_cliente_maria
  venda = 
    Venda.new
    .vender("Goiaba")
    .vender("Goiaba")
    .vender("Nescau com Nutela")
    .vender("Nescau com Nutela")
    .vender("Nescau com Nutela")
    .vender("Menta")

    assert_equal 8, venda.obter_quatidade "Goiaba"

  assert_equal 10, venda.obter_quatidade "Morango"
  
  assert_equal 7, venda.obter_quatidade "Nescau com Nutela"

    assert_equal 9, venda.obter_quatidade "Menta"

  assert_equal 4.5, venda.valor_total
end