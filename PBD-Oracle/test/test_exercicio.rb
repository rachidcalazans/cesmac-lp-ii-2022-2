require "minitest/autorun"

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
end
