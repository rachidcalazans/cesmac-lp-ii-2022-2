class Aluno
  def initialize(nome, matricula)
    @nome = nome
    @matricula = matricula
  end

  def check_nome
    if '1234567890' in @nome
      puts 'nome iválido'
    end
  end
end
