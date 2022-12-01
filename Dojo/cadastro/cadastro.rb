require 'minitest/autorun'
require 'sqlite3'

class CadastroDb < Minitest::Test

  def test_cadastro_db
    db = SQLite3::Database.open 'cadastro.db'
    db.results_as_hash = true
    db.execute 'CREATE TABLE IF NOT EXISTS alunos(nome TEXT, matricula INT)'
    db.execute 'DELETE FROM alunos'
    db.execute 'INSERT INTO alunos (nome, matricula) VALUES (?, ?)', 'Maria Antonieta', 00012345
    db.execute 'INSERT INTO alunos (nome, matricula) VALUES (?, ?)', 'João Carlos', 00054321
    results = db.execute 'SELECT nome, matricula  FROM alunos'
    # results = db.execute 'SELECT * FROM alunos'
    results_array = results

    expected_result = [
      {
        'nome' => 'Maria Antonieta',
        'matricula' => 00012345
      },
      {
        'nome' => 'João Carlos',
        'matricula' => 00054321
      }
    ]
    assert_equal 2, results_array.size
    assert_equal results_array, expected_result
  end
end