require "minitest/autorun"

class Pessoa
   
   def initialize(nome,sobrenome)
    @nome = nome
    @sobrenome = sobrenome
   end

   def nome_completo(nome, sobrenome)
      "#{@nome} #{@sobrenome}"
   end
   
end

p1 = Pessoa.new("nome_completo")

puts "\nNome completo: #{nome_completo()}"