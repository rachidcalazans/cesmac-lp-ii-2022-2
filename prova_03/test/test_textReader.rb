require 'minitest/autorun'
require './prova_03/app/TextReader.rb'

class TestReader < Minitest::Test
  def test_reader_instance
    notesEvent = TextReader.new('./prova_03/proposals.txt')

    assert_equal notesEvent.read_lines, expected_file_line = [
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

    assert_equal notesEvent.get_minutes,
    expected_minutes = [60, 45, 30, 45, 45, 5, 60, 45, 30, 30, 45, 60, 60, 45, 30, 30, 60, 30, 30]
  end
end