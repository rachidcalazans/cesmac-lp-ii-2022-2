require "minitest/autorun"

class TestTipoHash < Minitest::Test

  def test_inicializar_hash
    hash = { 'nome' => 'Princesa', 'tipo_animal' => 'gato', 'castrado' => false }
    # Key = Chave => String
    # Value = Valor
    assert_equal 3, hash.size

    expected_hash = { 'nome' => 'Princesa', 'tipo_animal' => 'gato', 'castrado' => false }
    assert_equal expected_hash, hash

    hash = { :nome => 'Princesa', :tipo_animal => 'gato', :castrado => false }
    # Key = Chave => Symbol
    # Value = Valor

    expected_hash = { nome: 'Princesa', tipo_animal: 'gato', castrado: false }
    assert_equal expected_hash, hash

    hash = { nome: 'Princesa', tipo_animal: 'gato', castrado: false }
    # Key = Chave => Symbol
    # Value = Valor

    expected_hash = { nome: 'Princesa', tipo_animal: 'gato', castrado: false }
    assert_equal expected_hash, hash
  end

  def test_pegar_keys_hash
    hash = { 'nome' => 'Princesa', 'tipo_animal' => 'gato', 'castrado' => false }
    assert_equal ['nome', 'tipo_animal', 'castrado'], hash.keys

    hash = { :nome => 'Princesa', :tipo_animal => 'gato', :castrado => false }
    assert_equal [:nome, :tipo_animal, :castrado], hash.keys

    hash = { nome: 'Princesa', tipo_animal: 'gato', castrado: false }
    assert_equal [:nome, :tipo_animal, :castrado], hash.keys
  end

  def test_pegar_values_hash
    hash = { nome: 'Princesa', tipo_animal: 'gato', castrado: false }

    assert_equal ['Princesa', 'gato', false], hash.values
  end

  def test_pegar_value_pela_key_hash
    hash = { nome: 'Princesa', tipo_animal: 'gato', castrado: false }

    assert_equal 'Princesa', hash[:nome]

    hash = { 'nome' => 'Princesa', 'tipo_animal' => 'gato', 'castrado' => false }
    assert_equal 'gato', hash['tipo_animal']
  end

  def test_checar_se_key_existe_hash
    hash = { nome: 'Princesa', tipo_animal: 'gato', castrado: false }

    assert_equal true, hash.key?(:nome)
    assert_equal false, hash.key?('nome')
  end

  def test_checar_se_value_existe_hash
    hash = { nome: 'Princesa', tipo_animal: 'gato', castrado: false }

    assert_equal true, hash.value?('Princesa')
    assert_equal false, hash.value?(true)
  end

  def test_passar_key_que_nao_existe_hash
    hash = { nome: 'Princesa', tipo_animal: 'gato', castrado: false }

    assert_nil hash[:nomes]
  end

  def test_adicionar_key_e_value_no_hash
    hash = { nome: 'Princesa' }
    expected_hash = { nome: 'Princesa' }
    assert_equal expected_hash, hash
    assert_equal 1, hash.size

    hash[:tipo_animal] = 'gato'
    expected_hash = { nome: 'Princesa', tipo_animal: 'gato' }

    assert_equal expected_hash, hash
    assert_equal 2, hash.size
  end

  def test_alterando_valor_para_uma_key_hash
    hash = { nome: 'Princesa' }
    hash[:nome] = 'Ze'

    expected_hash = { nome: 'Ze' }
    assert_equal expected_hash, hash
  end

  def test_percorrer_loop_hash
    hash = { nome: 'Princesa', tipo_animal: 'gato', castrado: false }

    final_key = ''
    final_value = ''

    hash.each do |key, value|
      pp "KEY: #{key}"
      pp "VALUE: #{value}"

      final_key = key
      final_value = value
    end

    assert_equal :castrado, final_key
    assert_equal false, final_value
  end

  def test_deletando_elemento_hash
    hash = { nome: 'Princesa', tipo_animal: 'gato', castrado: false }
    hash.delete(:tipo_animal)

    expected_hash = { nome: 'Princesa', castrado: false }
    assert_equal expected_hash, hash

    hash.delete_if do |key, value|
      value == false
    end

    expected_hash = { nome: 'Princesa' }
    assert_equal expected_hash, hash
  end
end
