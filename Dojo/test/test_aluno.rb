require "minitest/autorun"
require './Dojo/app/aluno'
require './Dojo/test/db_config'

class TestAluno < Minitest::Test

  def setup
    db_config = DbConfig.new
    @db = db_config.database
    @gerenciar_aluno = GerenciarAluno.new(@db)
  end

  def test_validacao_para_valor_nulo
    # Quando nome e matricula forem nulos
    nome = nil
    matricula = nil

    aluno = Aluno.new(nome, matricula)

    assert_equal false, aluno.valido?

    # Quando nome é nulo e matricula não é nulo
    nome = nil
    matricula = '001'

    aluno = Aluno.new(nome, matricula)

    assert_equal false, aluno.valido?

    # Quando nome não é nulo e matricula é  nulo
    nome = 'Rachid'
    matricula = nil

    aluno = Aluno.new(nome, matricula)

    assert_equal false, aluno.valido?

    # Quando nome e matricula não são nulos
    nome = 'Rachid'
    matricula = '001'

    aluno = Aluno.new(nome, matricula)

    assert_equal true, aluno.valido?
  end

  def test_validacao_para_valor_nome_apenas_letras
    # Quando nome não tem letras
    nome = 'Rachid'
    matricula = '001'

    aluno = Aluno.new(nome, matricula)

    assert_equal aluno.valido?, true

    # Quando nome tem letras
    nome = 'R4ch1d'
    matricula = '001'

    aluno = Aluno.new(nome, matricula)

    assert_equal false, aluno.valido?
  end

  def test_validacao_para_valor_matricula_apenas_numeros
    # Quando matricula não tem letras
    nome = 'Rachid'
    matricula = '001'

    aluno = Aluno.new(nome, matricula)

    assert_equal true, aluno.valido?

    # Quando matricula tem letras
    nome = 'Rachid'
    matricula = 't00A2345'

    aluno = Aluno.new(nome, matricula)

    assert_equal false, aluno.valido?

    # Quando matricula tem simbolos
    nome = 'Rachid'
    matricula = '000*2345'

    aluno = Aluno.new(nome, matricula)

    assert_equal false, aluno.valido?
  end

  def test_validacao_matricula_unica
    # Quando a matricula não existe no banco
    nome = 'Rachid'
    matricula = '001'

    aluno = Aluno.new(nome, matricula)
    aluno.set_gerenciar_aluno(@gerenciar_aluno)

    assert_equal true, aluno.valido?

    # Quando a matricula existe no banco
    nome = 'Rachid'
    matricula = '001'

    @db.execute 'INSERT INTO alunos (id, nome, matricula) VALUES (?, ?, ?)', 1, nome, matricula

    aluno = Aluno.new(nome, matricula)
    aluno.set_gerenciar_aluno(@gerenciar_aluno)

    assert_equal false, aluno.valido?
  end
end

