require 'minitest/autorun'

# Início da prova Integrada - Compõe nota da P3

class TestExercicio < Minitest::Test
  # Criar uma tabela 'sacoles' com as seguintes colunas:
  # 1. id => Int
  # 3. sabor => String
  # 4. valor => Float
  #
  # Ex.:
  # id | sabor    | valor |
  # 21 |  morango | 1.0   |
  # 22 |  limao   | 0.5   |
  # 23 |  pitanga | 1.0   |
  #
  # Criar uma tabela 'estoques' com as seguintes colunas:
  # 1. id => Int
  # 2. mercadinho_id => Int
  # 3. sacole_id => Int
  # 4. vendido => Boolean
  #
  # Ex.:
  # id | mercadinho_id | sacole_id | vendido |
  # 11 |  1            | 21         | false   |
  # 12 |  1            | 21         | false   |
  # 13 |  1            | 22         | false   |
  # 14 |  1            | 23         | false   |
  # 15 |  1            | 23         | false   |
  # 16 |  1            | 23         | false   |
  #
  # Criar uma tabela 'mercadinhos' com as seguintes colunas:
  # 1. id => Int
  # 2. nome => String
  #
  # Ex.:
  # id | nome |
  # 1  | Mercadinho Rachid |
  #
  # Teste obrigatório:
  # 1. Fazer query que retorne total que o mercadinho faturou a partir das seguintes vendas:
  #
  # - Venda de um sacolé do sabor morando no valor de R$ 1,00
  # - Venda de um sacolé do sabor limão no valor de R$ 0,50
  # - Venda de dois sacolés do sabor pitanga no valor de R$ 2,00
  #
  # Dicas:
  # 1. User CREATE TABLE para criar os bancos: mercadinhos, sacoles, estoques
  # 2. Usar SELECT com WHERE para filtrar
  # 3. Usar UPDATE com WHERE para atualizar o dado correto do banco
  # 4. Usar INSERT para criar os sacolés, estoque e o mercadinho
end
