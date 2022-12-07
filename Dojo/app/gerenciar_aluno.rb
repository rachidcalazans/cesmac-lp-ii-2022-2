require 'sqlite3'

class GerenciarAluno

  def initialize(banco_de_dados)
    @db = banco_de_dados

    @db.execute 'CREATE TABLE IF NOT EXISTS alunos(id INTEGER PRIMARY KEY AUTOINCREMENT , nome TEXT, matricula TEXT)'
    @db.results_as_hash = true
  end

  def alunos
    @db.execute 'SELECT * FROM alunos'
  end

  def aluno_por_matricula(matricula)
    @db.execute 'SELECT * FROM alunos WHERE matricula=?', matricula
  end

  def criar(aluno)
    if aluno.valido?
      @db.execute 'INSERT INTO alunos (nome, matricula) VALUES (?, ?)', aluno.nome, aluno.matricula
    end
  end
end
