require "minitest/autorun"
require 'yaml'

class TestExercicio < Minitest::Test
  # A lista de Hash abaixo deve ser salvo dentro de um arquivo YAML.
  #
  # Dado a lista de Hash:
  # [
  # { nome: 'Ze', matricula: '0001' },
  # { nome: 'Joao', matricula: '0002' },
  # { nome: 'Maria', matricula: '0003' }
  # ]
  #
  # Criar testes para validar os dados atualizados.
  # Atualizações:
  # 1. Quando o nome for Joao, a matrícula deverá ser atualizada para '0004'
  # 2. Quando a matricula for '0001', o nome deverá ser atualizado para 'Ze Felipe'
  # 3. Quando a matricula for '0003', deve ser removido da lista

  def test_list
    list = [
    { nome: 'Ze', matricula: '0001' },
    { nome: 'Joao', matricula: '0002' },
    { nome: 'Maria', matricula: '0003' }
    ]

    File.open('07_yaml/test/students.yaml', 'w') do |file|
      file.write(list.to_yaml)
    end

    list_read = File.read('07_yaml/test/students.yaml')
    list_data = YAML.load(list_read)

    assert_equal list, list_data

    list_data.each do |student|
      if student[:nome] == 'Joao'
        student[:matricula] = '0004'
      end

      if student[:matricula] == '0001'
      student[:nome] = 'Ze Felipe'

      elsif student[:matricula] == '0003'
      list_data.delete(student)
      end
    end

    File.open('07_yaml/test/students.yaml', 'w') do |file|
      file.write(list_data.to_yaml)
    end

    list_read = File.read('07_yaml/test/students.yaml')
    list_data_att = YAML.load(list_read)

    assert_equal list_data, list_data_att
    assert_equal 2, list_data.size
    assert_equal({ nome: 'Joao', matricula: '0004' }, list_data[1])
    assert_equal({ nome: 'Ze Felipe', matricula: '0001' }, list_data.first)
    assert_nil list_data[2]
  end
  
end