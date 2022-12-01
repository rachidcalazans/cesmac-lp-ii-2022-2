require 'minitest/autorun'
require 'sqlite3'

class TestDojoo < Minitest::Test
    
  def testDojoo
    db = SQLite3::Database.open 'testDojoo'
    db.results_as_hash = true
    db.execute 'CREATE TABLE IF NOT EXISTS alunos(nome STRING, matricula INT)'
    db.execute 'DELETE FROM alunos'
    db.execute 'INSERT INTO alunos (nome, matricula) VALUES (?, ?)', 'Mariana Zottich', '01'
    db.execute 'INSERT INTO alunos (nome, matricula) VALUES (?, ?)', 'Luana Reis', '02'
    results = db.execute 'SELECT nome, matricula, FROM alunos WHERE matricula=?'
    # results = db.execute 'SELECT * FROM alunos'
    results_array = results

    expected_result = [
      {
        'nome' => 'Mariana Zottich',
        'matricula' => '01'
      },     
    ]
    assert_equal 1, results_array.size
    assert_equal results_array, expected_result

    expected_result = [
        {
          'nome' => 'Luana Reis',
          'matricula' => '02'
        },
    ]
    assert_equal 1, results_array.size
    assert_equal results_array, expected_result


  end
end