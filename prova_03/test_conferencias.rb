require "minitest/autorun"

require './prova_03/palestras'

require 'time'


class Testconferencias < Minitest::Test

    def test_conferencias_palestras

        conferencias = Conferencias.new("./prova_03/proposals.txt")

        expect_lista_palestra = [
            'Diminuindo tempo de execução de testes em aplicações Rails enterprise 60min',
            'Reinventando a roda em ASP clássico 45min',
            'Apresentando Lua para as massas 30min',
            'Erros de Ruby oriundos de versões erradas de gems 45min',
            'Erros comuns em Ruby 45min',
            'Rails para usuários de Django lightning',
            'Trabalho remoto: prós e cons 60min',
            'Desenvolvimento orientado a gambiarras 45min',
            'Aplicações isomórficas: o futuro (que talvez nunca chegaremos) 30min',
            'Codifique menos, Escreva mais! 30min',
            'Programação em par 45min',
            'A mágica do Rails: como ser mais produtivo 60min',
            'Ruby on Rails: Por que devemos deixá-lo para trás 60min',
            'Clojure engoliu Scala: migrando minha aplicação 45min',
            'Ensinando programação nas grotas de Maceió 30min',
            'Ruby vs. Clojure para desenvolvimento backend 30min',
            'Manutenção de aplicações legadas em Ruby on Rails 60min',
            'Um mundo sem StackOverflow 30min',
            'Otimizando CSS em aplicações Rails 30min'
        ]

        assert_equal expect_lista_palestra, conferencias.mostrar_palestra

    end

    def teste_conferencia_tempo

        conferencias = Conferencias.new('./prova_03/proposals.txt')

        expect_minutes = [60, 45, 30, 45, 45, 5, 60, 45, 30, 30, 45, 60, 60, 45, 30, 30, 60, 30, 30]

        assert_equal conferencias.mostrar_tempo_palestra, expect_minutes

    end

    def teste_horarios

        conferencias = Conferencias.new('./prova_03/proposals.txt')

        expect_horario = ["9:00"]

        assert_equal expect_horario, conferencias.mostrar_horarios

    end

end