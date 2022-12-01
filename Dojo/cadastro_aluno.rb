require "minitest/autorun"
require "sqlite3"

class TestMatricula < Minitest::Test 
    def test_db
        db = SQLite3::Database.open 'alunos.db'
        db.results_as_hash = true

        db.execute 'DROP TABLE IF EXISTS aluno'
        db.execute 'CREATE TABLE IF NOT EXISTS aluno(
            id INT PRIMARY KEY,
            matricula TEXT NOT NULL UNIQUE,
            nome TEXT NOT NULL
        )'

        matricula_maria = '00012345'
        nome_maria = 'Maria Antonieta'
        matricula_joao = '00054321'
        nome_joao = 'João Carlos' 
        
        db.execute('INSERT INTO aluno(matricula, nome) VALUES (?, ?)', matricula_maria, nome_maria)
        db.execute('INSERT INTO aluno(matricula, nome) VALUES (?, ?)', matricula_joao, nome_joao)
        
        results_maria = db.execute('SELECT nome, matricula FROM aluno WHERE matricula = ?', '00012345')
        results_joao = db.execute('SELECT nome, matricula FROM aluno WHERE matricula = ?', '00054321')

        puts results_maria
        puts results_joao
    end
end