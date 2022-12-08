require 'minitest/autorun'
require 'sqlite3'

class AlunosDb < Minitest::Test
    def test_alunos_db
    db = SQLite3::Database.open 'alunos.db'
    db.results_as_hash = true
    db.execute 'CREATE TABLE IF NOT EXISTS alunos(nome TEXT NOT NULL UNIQUE, matricula INT PRIMARY KEY)'
    db.execute 'DELETE FROM alunos'
    db.execute 'INSERT INTO alunos (nome, matricula) VALUES (?, ?)', 'Roger Feder', 00012345
    db.execute 'INSERT INTO alunos (nome, matricula) VALUES (?, ?)', 'Rick John', 00012346
    

    results = db.execute 'SELECT nome, matricula FROM alunos'
    results_array = results

    expected_result = [
      {
        'nome' => 'Roger Feder',
        'matricula' => 00012345
      },
      {
        'nome' => 'Rick John',
        'matricula' => 00012346
      }
    ]
    assert_equal 2, results_array.size
    assert_equal results_array, expected_result

    puts results
    end
   
    
end