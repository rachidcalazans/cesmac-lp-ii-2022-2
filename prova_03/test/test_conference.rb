require "minitest/autorun"
require './prova_03/app/conference'
require 'time'

class TestConference < Minitest::Test

    def test_headline
        headlines = File.readlines('./prova_03/proposals.txt', chomp: true)
        conference = Conference.new(nil, headlines)

        expected_list_headlines = [
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

        assert_equal expected_list_headlines, conference.headlines
    end

    def test_duration
        headlines = File.readlines('./prova_03/proposals.txt', chomp: true)
        conference = Conference.new(nil, headlines)

        conference.duration = conference.headlines.map do |min|
            if (min.match(/lightning/))
                min = '5'
            end
            min.match(/\d+/)[0].to_i
        end

        expected_duration = [60, 45, 30, 45, 45, 5, 60, 45, 30, 30, 45, 60, 60, 45, 30, 30, 60, 30, 30]

        assert_equal expected_duration, conference.duration
    end

    def test_morning_hours
        headlines = File.readlines('./prova_03/proposals.txt', chomp: true)
        conference = Conference.new(nil, headlines)

        conference.duration = conference.headlines.map do |min|
            if (min.match(/lightning/))
                min = '5'
            end
            min.match(/\d+/)[0].to_i
        end

        expected_morning_hours = ["9:00", "10:00", "10:45", "11:15", "12:00"]

        assert_equal expected_morning_hours, conference.list_morning_hours
    end

    def test_afternoon_hours
        headlines = File.readlines('./prova_03/proposals.txt', chomp: true)
        conference = Conference.new(nil, headlines)

        conference.duration = conference.headlines.map do |min|
            if (min.match(/lightning/))
                min = '5'
            end
            min.match(/\d+/)[0].to_i
        end

        expected_afternoon_hours = ["13:00", "13:45", "13:50", "14:50", "15:35", "16:05"]

        assert_equal expected_afternoon_hours, conference.list_afternoon_hours
    end
end