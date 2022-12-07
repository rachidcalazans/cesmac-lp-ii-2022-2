require './Dojo/app/gerenciar_aluno'

class Aluno

  attr_reader :nome, :matricula

  def initialize(nome, matricula)
    @nome = nome
    @matricula = matricula
  end

  def valido?
    return false if @nome.nil? || @matricula.nil?
    return false if /\d/.match(@nome)
    return false if /\D/.match(@matricula)
    return false if !@gerenciar_aluno.nil? && !@gerenciar_aluno.aluno_por_matricula(@matricula).empty?

    true
  end

  def set_gerenciar_aluno(gerenciar_aluno)
    @gerenciar_aluno = gerenciar_aluno
  end
end
