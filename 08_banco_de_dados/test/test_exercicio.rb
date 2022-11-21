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
  # 4. Usar INSERT para criar os sacolés, estoque e o mercadinh

  def test_create_db_sacole
    db = SQLite3::Database.open 'sacole.db'
    db.results_as_hash =  true

    db.execute 'DROP TABLE IF EXISTS sacoles'
    db.execute 'DROP TABLE IF EXISTS market'
    db.execute 'DROP TABLE IF EXISTS storage'

    #ceating market
    db.execute 'CREATE TABLE market(market_id INTEGER PRIMARY KEY AUTOINCREMENT, market_name TEXT)'
    db.execute 'INSERT INTO market (market_id, market_name) VALUES (?, ?)', 1, 'Mercadinho do Silvio'

    #creating sacolesi
    db.execute 'CREATE TABLE sacoles(sacoles_id INTEGER PRIMARY KEY AUTOINCREMENT, flavor TEXT, price REAL)'
    db.execute 'INSERT INTO sacoles (sacoles_id, flavor, price) VALUES (?, ?, ?)', 1, 'Suco de Pau', 3.0

    #creating storage
    db.execute 'PRAGMA foregin_keys = ON'
    resultForeginKey = db.execute 'PRAGMA foreign_keys'
    assert_equal [{'foreign_keys' => 0}], resultForeginKey
    db.execute 'CREATE TABLE storage(storage_id INTEGER PRIMARY KEY AUTOINCREMENT, market_id INTEGER, sacoles_id INTEGER, sold BOOLEAN, FOREIGN KEY (market_id) REFERENCES market(market_id), FOREIGN KEY (sacoles_id) REFERENCES sacoles(sacoles_id))'
    db.execute 'INSERT INTO storage(market_id, sacoles_id, sold) VALUES(?, ?, ?)', 1, 1, 0

    resultMarket = db.execute 'SELECT * FROM market WHERE market_id=?', 01

    resultSacoles = db.execute 'SELECT * FROM sacoles WHERE sacoles_id=?', 01

    resultStorage = db.execute 'SELECT * FROM storage WHERE storage_id'

    expected_result_market = [
      {
        'market_id' => 1,
        'market_name' => 'Mercadinho do Silvio'
      }
    ]

    expected_result_sacoles = [
      {
        'sacoles_id' => 1,
        'flavor' => 'Suco de Pau',
        'price' => 3.0
      }
    ]

    assert_equal resultMarket, expected_result_market
    assert_equal resultSacoles, expected_result_sacoles
  end
end
