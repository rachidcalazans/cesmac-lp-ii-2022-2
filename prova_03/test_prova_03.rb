require './prova_03/app/lecture'
require './prova_03/app/reader'
require './prova_03/app/schedule'
require 'minitest/autorun'


class Prova < Minitest::Test

    def test_schedule_result
        reader = FileReader.new
        lectures = reader.read('./prova_03/proposals.txt')
        schedule = Schedule.new(lectures)
        schedule.generate_tracks
        
        expected_result = "\n\n#### Track A\n9:00 Otimizando CSS em aplicações Rails 30min\n9:30 Um mundo sem StackOverflow 30min\n10:00 Manutenção de aplicações legadas em Ruby on Rails 60min\n11:00 Ruby vs. Clojure para desenvolvimento backend 30min\n11:30 Ensinando programação nas grotas de Maceió 30min\n12:00 Almoço\n13:00 Clojure engoliu Scala: migrando minha aplicação 45min\n13:45 Ruby on Rails: Por que devemos deixá-lo para trás 60min\n14:45 A mágica do Rails: como ser mais produtivo 60min\n15:45 Programação em par 45min\n16:30 Codifique menos, Escreva mais! 30min\n17:00 Evento de Networking\n\n#### Track B\n9:00 Aplicações isomórficas: o futuro (que talvez nunca chegaremos) 30min\n9:30 Desenvolvimento orientado a gambiarras 45min\n10:15 Trabalho remoto: prós e cons 60min\n11:15 Rails para usuários de Django lightning\n11:20 Apresentando Lua para as massas 30min\n12:00 Almoço\n13:00 Erros comuns em Ruby 45min\n13:45 Erros de Ruby oriundos de versões erradas de gems 45min\n14:30 Reinventando a roda em ASP clássico 45min\n15:15 Diminuindo tempo de execução de testes em aplicações Rails enterprise 60min\n17:00 Evento de Networking"

        assert_equal schedule.build_tracks, expected_result
    end

end