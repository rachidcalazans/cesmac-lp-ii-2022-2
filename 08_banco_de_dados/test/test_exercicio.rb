require 'minitest/autorun'
require 'sqlite3'

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

  def test_db
    db = SQLite3::Database.open 'mercadinho.db'
    db.results_as_hash = true

    #sacole
    db.execute 'CREATE TABLE IF NOT EXISTS sacole(id INT, sabor TEXT, valor FLOAT)'
    db.execute 'DELETE FROM sacole'
    db.execute 'INSERT INTO sacole (id, sabor, valor) VALUES (?, ?, ?)', 21, 'morango', 1
    db.execute 'INSERT INTO sacole (id, sabor, valor) VALUES (?, ?, ?)', 22, 'limao', 0.5
    db.execute 'INSERT INTO sacole (id, sabor, valor) VALUES (?, ?, ?)', 23, 'pitanga', 1

    #mercadinho
    db.execute 'CREATE TABLE IF NOT EXISTS mercadinho(id INT, nome TEXT)'
    db.execute 'DELETE FROM mercadinho'
    db.execute 'INSERT INTO mercadinho (id, nome) VALUES(?, ?)', 1, 'Mercadinho Rachid'

    #estoque
    db.execute 'CREATE TABLE IF NOT EXISTS estoque(
    id INT PRIMARY KEY, 
    mercadinho_id REFERENCES mercadinho(id),
    sacole_id REFERENCES sacole(id),
    vendido BIT)'

    db.execute 'DELETE FROM estoque'
    db.execute 'INSERT INTO estoque (id, mercadinho_id, sacole_id, vendido) VALUES (?, ?, ?, ?)', 11, 1, 21, 0
    db.execute 'INSERT INTO estoque (id, mercadinho_id, sacole_id, vendido) VALUES (?, ?, ?, ?)', 12, 1, 21, 0
    db.execute 'INSERT INTO estoque (id, mercadinho_id, sacole_id, vendido) VALUES (?, ?, ?, ?)', 13, 1, 22, 0
    db.execute 'INSERT INTO estoque (id, mercadinho_id, sacole_id, vendido) VALUES (?, ?, ?, ?)', 14, 1, 23, 0
    db.execute 'INSERT INTO estoque (id, mercadinho_id, sacole_id, vendido) VALUES (?, ?, ?, ?)', 15, 1, 23, 0
    db.execute 'INSERT INTO estoque (id, mercadinho_id, sacole_id, vendido) VALUES (?, ?, ?, ?)', 16, 1, 23, 0
    
    #update
    db.execute'UPDATE estoque SET vendido=? WHERE id = ?', 1, 11
    db.execute'UPDATE estoque SET vendido=? WHERE id = ?', 1, 13
    db.execute'UPDATE estoque SET vendido=? WHERE id = ?', 1, 14
    db.execute'UPDATE estoque SET vendido=? WHERE id = ?', 1, 15
    
    #QUERY
    vendidos= db.execute 'SELECT * FROM estoque WHERE vendido = true'
    vendidos_expected = [
      {
        'id' => 11,
        'mercadinho_id' => 1,
        'sacole_id' => 21,
        'vendido' => 1,
      },
      {
        'id' => 13,
        'mercadinho_id' => 1,
        'sacole_id' => 22,
        'vendido' => 1,
      },
      {
        'id' => 14,
        'mercadinho_id' => 1,
        'sacole_id' => 23,
        'vendido' => 1,
      },
      {
        'id' => 15,
        'mercadinho_id' => 1,
        'sacole_id' => 23,
        'vendido' => 1,
      },
    ]

    assert_equal vendidos_expected, vendidos
    pp vendidos
  end
end
