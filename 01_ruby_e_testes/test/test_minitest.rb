# Importanto a Gem que foi instalada nesse arquivo
require "minitest/autorun"

# É necessário fazer a extensão do Minitest::Test para a classe poder ser identificada que
# possui testes e para liberar métodos como: `assert_equal`, `assert_nil`
class TestMinitest < Minitest::Test

  # É necessário ter o prefixo `test` na declaração do método de teste.
  # Isso fará com que a Gem minitest identifique o método na hora de executar os testes.
  def test_com_prefixo
    # primeiro é a expectativa
    # segundo é o resultado
    assert_equal true, 1 == 1

    # espera apenas o resultado
    assert_nil nil
  end

  def test_skipped
    skip # Serve para não executar os `assert_equal` que esse método possui.

    assert_equal true, 1 == 2
  end
end
