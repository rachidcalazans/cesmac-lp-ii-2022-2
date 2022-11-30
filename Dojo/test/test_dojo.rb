require 'minitest/autorun'
require 'sqlite3'

class TestDb < Minitest::Test

  def test_db
    db = SQLite3::Database.open 'test.db'
    db.results_as_hash = true
    db.execute 'CREATE TABLE IF NOT EXISTS alunos(nome TEXT, matricula TEXT, participacao INT)'
    db.execute 'DELETE FROM alunos'
    db.execute 'INSERT INTO alunos (nome, participacao, matricula) VALUES (?, ?, ?)', 'Ze', 0, '001'
    db.execute 'INSERT INTO alunos (nome, participacao, matricula) VALUES (?, ?, ?)', 'Joao', 0, '002'
    results = db.execute 'SELECT nome, matricula, participacao FROM alunos WHERE matricula=?', '002'
    # results = db.execute 'SELECT * FROM alunos'
    results_array = results

    expected_result = [
      {
        'nome' => 'Joao',
        'participacao' => 0,
        'matricula' => '002'
      },
    ]
    assert_equal 1, results_array.size
    assert_equal results_array, expected_result
  end
end
