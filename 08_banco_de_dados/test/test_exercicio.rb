require 'minitest/autorun'
require 'sqlite3'
# Início da prova Integrada - Compõe nota da P3

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

class TestExercicio < Minitest::Test

  def test_create_db_sacole
    db = SQLite3::Database.open 'sacole.db'
    db.results_as_hash = true
    
    # test
    db.execute 'DROP TABLE IF EXISTS littleshop'
    db.execute 'DROP TABLE IF EXISTS sacoles'
    db.execute 'DROP TABLE IF EXISTS storage'

    # littleshops
    db.execute 'CREATE TABLE littleshop(littleshop_id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT)'
    db.execute 'INSERT INTO littleshop VALUES(?, ?)', 1, 'test'
    
    # sacoles
    db.execute 'CREATE TABLE sacoles(sacoles_id INTEGER PRIMARY KEY AUTOINCREMENT, flavor TEXT, value REAL)'
    db.execute 'INSERT INTO sacoles VALUES(?, ?, ?)', 1, 'morango', 2.4

    # storage
    db.execute 'PRAGMA foreign_keys = ON'
    resultkey = db.execute 'PRAGMA foreign_keys'
    assert_equal [{'foreign_keys' => 1}], resultkey
    db.execute 'CREATE TABLE storage(storage_id INTEGER PRIMARY KEY AUTOINCREMENT, littleshop_id INTEGER, sacoles_id INTEGER, sold BOOLEAN, FOREIGN KEY (littleshop_id) REFERENCES littleshop(littleshop_id), FOREIGN KEY (sacoles_id) REFERENCES sacoles(sacoles_id))'
    db.execute 'INSERT INTO storage(littleshop_id, sacoles_id, sold) VALUES(?, ?, ?)', 1, 1, 0
    
    resultQlittleshop = db.execute 'SELECT * FROM littleshop WHERE littleshop_id=?', 01
    expected_result_littleshop = [
      {
        'littleshop_id' => 01,
        'name' => 'test'
      }
    ]
    assert_equal resultQlittleshop, expected_result_littleshop 

    resultQsacoles = db.execute 'SELECT * FROM sacoles WHERE sacoles_id=?', 01
    expected_result_sacoles = [
      {
        'sacoles_id' => 01,
        'flavor' => 'morango',
        'value' => 2.4
      }
    ]
    assert_equal resultQsacoles, expected_result_sacoles 
    
    resutlQstorage = db.execute 'SELECT * FROM storage WHERE littleshop_id=?', 01
    expected_result_storage = [
      {
        'storage_id' => 01,
        'littleshop_id' => 01,
        'sacoles_id' => 01, 
        'sold' => 0
      }
    ]
    assert_equal resutlQstorage, expected_result_storage
  end

  def test_inserts_sacole
    db = SQLite3::Database.open 'sacole.db'
    db.results_as_hash = true
    
    # test
    db.execute 'DROP TABLE IF EXISTS littleshop'
    db.execute 'DROP TABLE IF EXISTS sacoles'
    db.execute 'DROP TABLE IF EXISTS storage'

    # littleshop
    db.execute 'CREATE TABLE littleshop(littleshop_id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT)'
    
    # sacole
    db.execute 'CREATE TABLE sacoles(sacoles_id INTEGER PRIMARY KEY AUTOINCREMENT, flavor TEXT, value REAL)'

    # storage
    db.execute 'PRAGMA foreign_keys = ON'
    resultkey = db.execute 'PRAGMA foreign_keys'
    assert_equal [{'foreign_keys' => 1}], resultkey
    db.execute 'CREATE TABLE storage(storage_id INTEGER PRIMARY KEY AUTOINCREMENT, littleshop_id INTEGER, sacoles_id INTEGER, sold BOOLEAN, FOREIGN KEY (littleshop_id) REFERENCES littleshop(littleshop_id), FOREIGN KEY (sacoles_id) REFERENCES sacoles(sacoles_id))'

    #INSERTS 

    #sacole
    db.execute 'INSERT INTO sacoles VALUES (?, ?, ?)', 21, 'morango', 1.0
    db.execute 'INSERT INTO sacoles VALUES (?, ?, ?)', 22, 'limao', 0.5
    db.execute 'INSERT INTO sacoles VALUES (?, ?, ?)', 23, 'pitanga', 1.0

    sacoleResult = db.execute 'SELECT * FROM sacoles'
    sacole_insert_expected = [
      {
        'sacoles_id' => 21,
        'flavor' => 'morango',
        'value' => 1.0
      },
      {
        'sacoles_id' => 22,
        'flavor' => 'limao',
        'value' => 0.5
      },
      {
        'sacoles_id' => 23,
        'flavor' => 'pitanga',
        'value' => 1.0
      }
    ]
    assert_equal sacoleResult, sacole_insert_expected

    #littleshop
    db.execute 'INSERT INTO littleshop VALUES(?, ?)', 1, 'Yummy Littleshop'
    littleshopResult = db.execute 'SELECT * FROM littleshop'
    littleshop_insert_expected = [
      {
        'littleshop_id' => 01,
        'name' => 'Yummy Littleshop'
      }
    ]
    assert_equal littleshopResult, littleshop_insert_expected

    #storage
    db.execute 'INSERT INTO storage(storage_id, littleshop_id, sacoles_id, sold) VALUES (?, ?, ?, ?)', 11, 1, 21, 0
    db.execute 'INSERT INTO storage(storage_id, littleshop_id, sacoles_id, sold) VALUES (?, ?, ?, ?)', 12, 1, 21, 0
    db.execute 'INSERT INTO storage(storage_id, littleshop_id, sacoles_id, sold) VALUES (?, ?, ?, ?)', 13, 1, 22, 0
    db.execute 'INSERT INTO storage(storage_id, littleshop_id, sacoles_id, sold) VALUES (?, ?, ?, ?)', 14, 1, 22, 0
    db.execute 'INSERT INTO storage(storage_id, littleshop_id, sacoles_id, sold) VALUES (?, ?, ?, ?)', 15, 1, 23, 0

    storageResult = db.execute 'SELECT * FROM storage'
    storage_insert_expected = [
      {
        'storage_id' => 11,
        'littleshop_id' => 1,
        'sacoles_id' => 21,
        'sold' => 0, 
      },
      {
        'storage_id' => 12,
        'littleshop_id' => 1,
        'sacoles_id' => 21,
        'sold' => 0, 
      },
      {
        'storage_id' => 13,
        'littleshop_id' => 1,
        'sacoles_id' => 22,
        'sold' => 0, 
      },
      {
        'storage_id' => 14,
        'littleshop_id' => 1,
        'sacoles_id' => 22,
        'sold' => 0, 
      },
      {
        'storage_id' => 15,
        'littleshop_id' => 1,
        'sacoles_id' => 23,
        'sold' => 0, 
      },
    ]

    assert_equal storageResult.size, 5
    assert_equal storageResult, storage_insert_expected
  end


  def test_sell_sacole
    db = SQLite3::Database.open 'sacole.db'
    db.results_as_hash = true
    #TABLES CREATION

    # test
    db.execute 'DROP TABLE IF EXISTS littleshop'
    db.execute 'DROP TABLE IF EXISTS sacoles'
    db.execute 'DROP TABLE IF EXISTS storage'

    # littleshop
    db.execute 'CREATE TABLE littleshop(littleshop_id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT)'
    
    # sacole
    db.execute 'CREATE TABLE sacoles(sacoles_id INTEGER PRIMARY KEY AUTOINCREMENT, flavor TEXT, value REAL)'

    # storage
    db.execute 'PRAGMA foreign_keys = ON'
    resultkey = db.execute 'PRAGMA foreign_keys'
    assert_equal [{'foreign_keys' => 1}], resultkey
    db.execute 'CREATE TABLE storage(storage_id INTEGER PRIMARY KEY AUTOINCREMENT, littleshop_id INTEGER, sacoles_id INTEGER, sold BOOLEAN, FOREIGN KEY (littleshop_id) REFERENCES littleshop(littleshop_id), FOREIGN KEY (sacoles_id) REFERENCES sacoles(sacoles_id))'

    #INSERTS 

    #sacole
    db.execute 'INSERT INTO sacoles VALUES (?, ?, ?)', 21, 'morango', 1.0
    db.execute 'INSERT INTO sacoles VALUES (?, ?, ?)', 22, 'limao', 0.5
    db.execute 'INSERT INTO sacoles VALUES (?, ?, ?)', 23, 'pitanga', 1.0

    # littleshop
    db.execute 'INSERT INTO littleshop VALUES(?, ?)', 1, 'Yummy Littleshop'

    #storage
    db.execute 'INSERT INTO storage(storage_id, littleshop_id, sacoles_id, sold) VALUES (?, ?, ?, ?)', 11, 1, 21, 0
    db.execute 'INSERT INTO storage(storage_id, littleshop_id, sacoles_id, sold) VALUES (?, ?, ?, ?)', 12, 1, 21, 0
    db.execute 'INSERT INTO storage(storage_id, littleshop_id, sacoles_id, sold) VALUES (?, ?, ?, ?)', 13, 1, 22, 0
    db.execute 'INSERT INTO storage(storage_id, littleshop_id, sacoles_id, sold) VALUES (?, ?, ?, ?)', 14, 1, 22, 0
    db.execute 'INSERT INTO storage(storage_id, littleshop_id, sacoles_id, sold) VALUES (?, ?, ?, ?)', 15, 1, 23, 0
    db.execute 'INSERT INTO storage(storage_id, littleshop_id, sacoles_id, sold) VALUES (?, ?, ?, ?)', 16, 1, 23, 0
    storageS = db.execute 'SELECT * FROM storage'

    assert_equal storageS.size, 6
    
    # UPDATES

    db.execute 'UPDATE storage SET sold=? WHERE storage_id=?', 1, 11
    db.execute 'UPDATE storage SET sold=? WHERE storage_id=?', 1, 14
    db.execute 'UPDATE storage SET sold=? WHERE storage_id=?', 1, 15
    db.execute 'UPDATE storage SET sold=? WHERE storage_id=?', 1, 16
    update_result = db.execute 'SELECT sold FROM storage WHERE storage_id=?', 11

    expected_update = [{ 'sold' => 1 }]
    assert_equal update_result, expected_update

    # QUERY

    db.execute 'CREATE TEMP TABLE budget AS SELECT storage.sacoles_id, sacoles.value, storage.sold FROM storage INNER JOIN sacoles ON storage.sacoles_id = sacoles.sacoles_id WHERE storage.sold = 1'
    qResult = db.execute 'SELECT * FROM budget'
    sumResult = db.execute 'SELECT SUM(value) FROM budget'

    expected_sum = [{ 'SUM(value)' => 3.5 }]
    assert_equal expected_sum, sumResult
  end
end
