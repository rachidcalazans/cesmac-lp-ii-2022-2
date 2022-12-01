require "minitest/autorun"
require "sqlite3"

class TestMatricula < Minitest::Test 
    def test_db
        skip
        db = SQLite3::Database.open 'alunos.db'
        db.results_as_hash = true

        db.execute 'DROP TABLE IF EXISTS aluno'
        db.execute 'CREATE TABLE IF NOT EXISTS aluno(
            id INT PRIMARY KEY,
            matricula TEXT NOT NULL UNIQUE,
            nome TEXT NOT NULL
        )'

        matricula = '00012345'
      
        
        db.execute('INSERT INTO aluno(matricula, nome) VALUES (?, ?)', matricula, 'Maria Antonieta')
        
        results_aluno = db.execute('SELECT matricula, nome FROM aluno')

        puts results_aluno
    end

    def test_regex
        has = /\d+min/.match('Programação em par 45min\n')

        lista.each do |palestra|
            duracao = /\d+min/.match(palestra)
    
        end
        pp "HERE"
        puts has
    end
end