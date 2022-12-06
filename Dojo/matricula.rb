require "minitest/autorun"
require "sqlite3"

class TestMatricula < Minitest::Test
    def test_db
        db = SQLite3::Database.open 'aluno.db'
        db.results_as_hash = true

        db.execute 'DROP TABLE IF EXISTS aluno'
        db.execute 'CREATE TABLE IF NOT EXISTS aluno(
            id INT PRIMARY KEY,
            matricula TEXT NOT NULL UNIQUE,
            nome TEXT NOT NULL
            )'

            db.execute'INSERT INTO aluno (nome, matricula) VALUES (?, ?)', 'mariana ribeiro', '003312456'
            db.execute'INSERT INTO aluno (nome, matricula) VALUES (?, ?)', 'carlos augusto', '0044114229'
            db.execute'INSERT INTO aluno (nome, matricula) VALUES (?, ?)', 'Ze carioca', '005511689'
            results = db.execute'SELECT nome, matricula FROM aluno WHERE matricula=?'
            results_array = results.to_a
            results_array = results

            assert_equal [], results_array
            expected_result = [
              {
                'nome' => 'mariana ribeiro',
                'matricula' => '003312456'
              },
            ]
            assert_equal 1, results_array.size
            assert_equal results_array, expected_result
            
            
            assert_equal [], results_array
            expected_result = [
              {
                'nome' => 'carlos augusto',
                'matricula' => '0044114229'
              },
            ]
            assert_equal 1, results_array.size
            assert_equal results_array, expected_result
            
            
            assert_equal [], results_array
            expected_result = [
              {
                'nome' => 'Ze carioca',
                'matricula' => '005511689'
              },
            ]
            assert_equal 1, results_array.size
            assert_equal results_array, expected_result

            puts results
    end
end