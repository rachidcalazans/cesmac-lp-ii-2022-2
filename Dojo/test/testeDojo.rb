require 'minitest/autorun'
require 'sqlite3'

class TestDojo < Minitest::Test

  def testDojo
    db = SQLite3::Database.open 'testDojo'
    db.results_as_hash = true
    db.execute 'CREATE TABLE IF NOT EXISTS alunos(nome TEXT, matricula TEXT)'
    db.execute 'DELETE FROM alunos'
    db.execute 'INSERT INTO alunos (nome, matricula) VALUES (?, ?)', 'Luana Zottich', '2213976310'
    db.execute 'INSERT INTO alunos (nome, matricula) VALUES (?, ?)', 'Maria Luiza Zottich', '2214986411'
    db.execute 'INSERT INTO alunos (nome, matricula) VALUES (?, ?)', 'Gabriel Zottich', '2215996512'
    results = db.execute 'SELECT nome, matricula FROM alunos WHERE matricula=?'
    # results = db.execute 'SELECT * FROM alunos'
    results_array = results

    expected_result = [
      {
        'nome' => 'Luana Zottich',
        'matricula' => '2213976310'
      },
    ]
    assert_equal 1, results_array.size
    assert_equal results_array, expected_result

    expected_result = [
      {
        'nome' => 'Maria Luiza Zottich',
        'matricula' => '2214986411'
      },
    ]
    assert_equal 1, results_array.size
    assert_equal results_array, expected_result

    expected_result = [
      {
        'nome' => 'Gabriel Zottich',
        'matricula' => '2215996412'
      },
    ]
    assert_equal 1, results_array.size
    assert_equal results_array, expected_result
  end
end
