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

  def test_criar_lista
    students = [
    {nome: 'Ze' , matricula:'0001'},
    {nome:'Joao', matricula: '0002'},
    {nome:'Maria', matricula: '0003'}
    ]

    File.open('07_yaml/test/students.yml', 'w') do |file|
      file.write(students.to_yaml)
    end
    
    students_file = File.read('07_yaml/test/students.yml')
    load_students = YAML.load(students_file)

    load_students.each do |student|
      if student[:nome] == 'Joao'
        student[:matricula] = '0004'
      end

      if student[:matricula] == '0001'
        student[:nome] = 'Ze Felipe'
    
      elsif student[:matricula] == '0003'
          students.delete(student)
   
      end
    end

    File.open('07_yaml/test/students.yml', 'w') do |file|
      file.write(students.to_yaml)
    end
    
    students_file = File.read('07_yaml/test/students.yml')
    load_students = YAML.load(students_file)

    assert_equal '0002', load_students[1][:matricula]

    
  end
end
