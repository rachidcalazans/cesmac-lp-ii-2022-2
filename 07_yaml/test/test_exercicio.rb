require "minitest/autorun"
require "yaml"

class TestHashExercicio < Minitest::Test

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

  def test_1

    hash = [ { name: 'Ze', registration: '0001' }, 
             { name: 'Joao', registration: '0002' }, 
             { name: 'Maria', registration: '0003' } ]

    File.open('07_yaml/test/students.yml', 'w') do |file|
      file.write(hash.to_yaml)
    end

    fh = File.read('07_yaml/test/students.yml')
    students = YAML.load(fh)

    students.each do |i|
      if i[:name] == 'Joao'
        i[:registration] = '0004'
      end

      if i[:registration] == '0001'
        i[:name] = 'Ze Felipe'
      end
      
      if i[:registration] == '0003'
        students.delete(i)
      end
    end

    File.open('07_yaml/test/students.yml', 'w') do |file|
      file.write(students.to_yaml)
    end

    fh = File.read('07_yaml/test/students.yml')
    students = YAML.load(fh)

    expected_hash = [ { name: 'Ze Felipe', registration: '0001' }, 
                      { name: 'Joao', registration: '0004' } ]

    assert_equal expected_hash, students

  end

end
