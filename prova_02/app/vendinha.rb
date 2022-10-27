require_relative "gerenciarFlau"

class Vendinha < GerenciarFlau
    attr_accessor :nome, :proprietario, :flau
    def initialize(nome, proprietario)
        @nome = nome
        @proprietario = proprietario
        @flau = []
    end

    def valorVenda
        @sabor.each do |sabor|
            puts "teste"
        end
    end

    def qtdVendas
    end

    def dados_vendinha
        puts "Nome do Estabelecimento: #{nome}\nProprietario: #{proprietario}"
        puts "Sabores:"
        listar_sabores
    end

    def listar_sabores
        @flau.each do |flau|
            puts "#{flau}"
        end
    end
end

v1 = Vendinha.new("Flaus Goumerts", "Nicolas Evilasio")
v1.flau.push("Goiaba","Nescau com Nutella","Maçã Verde","Morango","Menta")

v1.dados_vendinha

flau1 = GerenciarFlau.new("Goiaba", 10)
flau1.venda(2)

v1.valorVenda
