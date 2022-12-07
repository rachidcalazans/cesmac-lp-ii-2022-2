require "minitest/autorun"
require 'sqlite3'
require './Dojo/test/db_config'
require './Dojo/app/aluno'
require './Dojo/app/gerenciar_aluno'

class TestGerenciarAluno < Minitest::Test

  def setup
    db_config = DbConfig.new
    @db = db_config.database
    @gerenciar_aluno = GerenciarAluno.new(@db)
  end

  def test_aluno_por_matricula
    @db.execute 'INSERT INTO alunos (id, nome, matricula) VALUES (?, ?, ?)', 1, 'Rachid', '001'

    # Quando a matricula não existe no banco
    matricula = '002'

    assert_equal [], @gerenciar_aluno.aluno_por_matricula(matricula)

    # Quando a matricula existe no banco
    matricula = '001'

    assert_equal [{"id"=>1, "nome"=>"Rachid", "matricula"=>"001"}], @gerenciar_aluno.aluno_por_matricula(matricula)
  end

  def test_criar_aluno_valido
    nome = 'Rachid'
    matricula = '001'
    aluno = Aluno.new(nome, matricula)

    @gerenciar_aluno.criar(aluno)

    assert_equal [{"id"=>1, "nome"=>"Rachid", "matricula"=>"001"}], @gerenciar_aluno.alunos
  end

  def test_criar_aluno_invalido
    nome = nil
    matricula = '001'
    aluno = Aluno.new(nome, matricula)

    @gerenciar_aluno.criar(aluno)

    assert_equal [], @gerenciar_aluno.alunos
  end
end
