require 'minitest/autorun'
require 'sqlite3'

class MercadinhoDb < Minitest::Test

  def test_sacoles_db
    db = SQLite3::Database.open 'sacoles.db'
    db.results_as_hash = true
    db.execute 'CREATE TABLE IF NOT EXISTS sacoles(id INT, sabor STRING, valor FLOAT)'
    db.execute 'DELETE FROM sacoles'
    db.execute 'INSERT INTO sacoles (id, sabor, valor) VALUES (?, ?, ?)', 21, 'morango', 1.0
    db.execute 'INSERT INTO sacoles (id, sabor, valor) VALUES (?, ?, ?)', 22, 'limao', 0.5
    db.execute 'INSERT INTO sacoles (id, sabor, valor) VALUES (?, ?, ?)', 23, 'pitanga', 1.0
    results = db.execute 'SELECT id, sabor, valor FROM sacoles'
    results_array = results

    expected_result = [
      {
        'id' => 21,
        'sabor' => 'morango',
        'valor' => 1.0
      },
      {
        'id' => 22,
        'sabor' => 'limao',
        'valor' => 0.5
      },
      {
        'id' => 23,
        'sabor' => 'pitanga',
        'valor' => 1.0
      },
    ]
    assert_equal 3, results_array.size
    assert_equal results_array, expected_result
  end

  def test_estoques_db
    db = SQLite3::Database.open 'estoques.db'
    db.results_as_hash = true
    db.execute 'CREATE TABLE IF NOT EXISTS estoques (id INT, mercadinho_id INT, sacole_id INT, vendido BOOLEAN)'
    db.execute 'DELETE FROM estoques'
    db.execute 'INSERT INTO estoques (id, mercadinho_id, sacole_id, vendido) VALUES (?, ?, ?, ?)', 11, 1, 21, 'false' 
    db.execute 'INSERT INTO estoques (id, mercadinho_id, sacole_id, vendido) VALUES (?, ?, ?, ?)', 12, 1, 21, 'false' 
    db.execute 'INSERT INTO estoques (id, mercadinho_id, sacole_id, vendido) VALUES (?, ?, ?, ?)', 13, 1, 22, 'false' 
    db.execute 'INSERT INTO estoques (id, mercadinho_id, sacole_id, vendido) VALUES (?, ?, ?, ?)', 14, 1, 23, 'false' 
    db.execute 'INSERT INTO estoques (id, mercadinho_id, sacole_id, vendido) VALUES (?, ?, ?, ?)', 15, 1, 23, 'false' 
    db.execute 'INSERT INTO estoques (id, mercadinho_id, sacole_id, vendido) VALUES (?, ?, ?, ?)', 16, 1, 23, 'false' 
    results = db.execute 'SELECT id, mercadinho_id, sacole_id, vendido FROM estoques WHERE sacole_id=?', 22
    results_array = results

    expected_result = [
      {
        'id' => 13,
        'mercadinho_id' => 1,
        'sacole_id' => 22,
        'vendido' => 'false'
      },
    ]
    assert_equal 1, results_array.size
    assert_equal results_array, expected_result
  end

  def test_mercadinhos_db
    db = SQLite3::Database.open 'mercadinhos.db'
    db.results_as_hash = true
    db.execute 'CREATE TABLE IF NOT EXISTS mercadinhos(id INT, nome STRING)'
    db.execute 'DELETE FROM mercadinhos'
    db.execute 'INSERT INTO mercadinhos (id, nome) VALUES (?, ?)', 1, 'Mercadinho Roger'
    results = db.execute 'SELECT id, nome FROM mercadinhos'
    results_array = results

    expected_result = [
      {
        'id' => 1,
        'nome' => 'Mercadinho Roger'
      },
    ]
    assert_equal 1, results_array.size
  end


  def test_vendas_db
    db = SQLite3::Database.open 'sacoles.db'
    db.results_as_hash = false
    db.execute 'INSERT INTO sacoles (id, sabor, valor) VALUES (?, ?, ?)', 23, 'pitanga', 1.0
    db.execute 'UPDATE sacoles SET valor = 1.0 WHERE id = 23'
    total_vendas = db.execute 'SELECT SUM(valor) FROM sacoles'
    results_array = total_vendas
    
    assert_equal [[3.5]], total_vendas
    
  end
end