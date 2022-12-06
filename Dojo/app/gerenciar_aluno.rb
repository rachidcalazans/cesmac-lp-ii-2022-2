require 'sqlite3'

class GerenciarAluno

  def initialize(banco_de_dados)
    @db = banco_de_dados

    @db.execute 'CREATE TABLE IF NOT EXISTS alunos(id INTEGER PRIMARY KEY, nome TEXT, matricula TEXT)'
    @db.results_as_hash = true
  end

  def aluno_por_matricula(matricula)
    @db.execute 'SELECT * FROM alunos WHERE matricula=?', matricula
  end
end
