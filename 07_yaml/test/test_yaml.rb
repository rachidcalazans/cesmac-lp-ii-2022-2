require 'minitest/autorun'
require 'yaml'

class TestYaml < Minitest::Test

  def test_criar_arquivo_yaml
    pets = [
      { nome: 'Princesa', tipo_animal: 'gato', castrado: false },
      { nome: 'Bob', tipo_animal: 'cachorro', castrado: true }
    ]

    File.open('07_yaml/test/pets.yml', 'w') do |arquivo|
      arquivo.write(pets.to_yaml)
    end

    nome_arquivo = File.file?('07_yaml/test/pets.yml')
    assert_equal true, nome_arquivo
  end

  def test_listar_dados
    pets = [
      { nome: 'Princesa', tipo_animal: 'gato', castrado: false },
      { nome: 'Bob', tipo_animal: 'cachorro', castrado: true }
    ]

    File.open('07_yaml/test/pets.yml', 'w') do |arquivo|
      arquivo.write(pets.to_yaml)
    end

    pets_file = File.read('07_yaml/test/pets.yml')
    pets_carregados = YAML.load(pets_file)

    assert_equal 2, pets_carregados.size
    assert_equal({ nome: 'Princesa', tipo_animal: 'gato', castrado: false }, pets_carregados.first)
    assert_equal({ nome: 'Bob', tipo_animal: 'cachorro', castrado: true }, pets_carregados[1])

    assert_equal 'Princesa', pets_carregados.first[:nome]
   end
end
