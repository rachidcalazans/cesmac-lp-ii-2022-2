require 'minitest/autorun'
require 'sqlite3'

class AlunosDb < Minitest::Test
    def test_alunos_db
    db = SQLite3::Database.open 'alunos.db'
    db.results_as_hash = true
    db.execute 'CREATE TABLE IF NOT EXISTS alunos(nome STRING, matricula INT)'
    db.execute 'DELETE FROM alunos'
    db.execute 'INSERT INTO alunos (nome, matricula) VALUES (?, ?)', 'Roger Feder', 0001
    db.execute 'INSERT INTO alunos (nome, matricula) VALUES (?, ?)', 'Rick John', 0002



end