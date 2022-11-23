require "minitest/autorun"
require "date"
require './prova_03/app/functions'

class TestLectures < Minitest::Test

  def test_read_file
    all_lectures = read_file('proposals.txt')
    expected = {"Trabalho remoto: prós e cons 60min"=>60, "Ruby on Rails: Por que devemos deixá-lo para trás 60min"=>60, "A mágica do Rails: como ser mais produtivo 60min"=>60, "Manutenção de aplicações legadas em Ruby on Rails 60min"=>60, "Diminuindo tempo de execução de testes em aplicações Rails enterprise 60min"=>60, "Reinventando a roda em ASP clássico 45min"=>45, "Erros comuns em Ruby 45min"=>45, "Erros de Ruby oriundos de versões erradas de gems 45min"=>45, "Clojure engoliu Scala: migrando minha aplicação 45min"=>45, "Programação em par 45min"=>45, "Desenvolvimento orientado a gambiarras 45min"=>45, "Um mundo sem StackOverflow 30min"=>30, "Ruby vs. Clojure para desenvolvimento backend 30min"=>30, "Ensinando programação nas grotas de Maceió 30min"=>30, "Codifique menos, Escreva mais! 30min"=>30, "Aplicações isomórficas: o futuro (que talvez nunca chegaremos) 30min"=>30, "Otimizando CSS em aplicações Rails 30min"=>30, "Apresentando Lua para as massas 30min"=>30, "Rails para usuários de Django lightning"=>5}

    assert_equal expected, all_lectures
  end


  def test_make_tracks
    all_lectures = read_file('proposals.txt')
    tracks = make_tracks(all_lectures)
    expected = [{"Trabalho remoto: prós e cons 60min"=>"09:00", "Ruby on Rails: Por que devemos deixá-lo para trás 60min"=>"10:00", "A mágica do Rails: como ser mais produtivo 60min"=>"11:00", "Manutenção de aplicações legadas em Ruby on Rails 60min"=>"13:00", "Diminuindo tempo de execução de testes em aplicações Rails enterprise 60min"=>"14:00", "Reinventando a roda em ASP clássico 45min"=>"15:00", "Erros comuns em Ruby 45min"=>"15:45", "Um mundo sem StackOverflow 30min"=>"16:30"}, {"Erros de Ruby oriundos de versões erradas de gems 45min"=>"09:00", "Clojure engoliu Scala: migrando minha aplicação 45min"=>"09:45", "Programação em par 45min"=>"10:30", "Desenvolvimento orientado a gambiarras 45min"=>"11:15", "Ruby vs. Clojure para desenvolvimento backend 30min"=>"13:00", "Ensinando programação nas grotas de Maceió 30min"=>"13:30", "Codifique menos, Escreva mais! 30min"=>"14:00", "Aplicações isomórficas: o futuro (que talvez nunca chegaremos) 30min"=>"14:30", "Otimizando CSS em aplicações Rails 30min"=>"15:00", "Apresentando Lua para as massas 30min"=>"15:30", "Rails para usuários de Django lightning"=>"16:00"}]

    assert_equal expected, tracks
  end


  def test_schedule
    tracks = make_schedule('proposals.txt')
    expected = [{"Trabalho remoto: prós e cons 60min"=>"09:00", "Ruby on Rails: Por que devemos deixá-lo para trás 60min"=>"10:00", "A mágica do Rails: como ser mais produtivo 60min"=>"11:00", "Manutenção de aplicações legadas em Ruby on Rails 60min"=>"13:00", "Diminuindo tempo de execução de testes em aplicações Rails enterprise 60min"=>"14:00", "Reinventando a roda em ASP clássico 45min"=>"15:00", "Erros comuns em Ruby 45min"=>"15:45", "Um mundo sem StackOverflow 30min"=>"16:30"}, {"Erros de Ruby oriundos de versões erradas de gems 45min"=>"09:00", "Clojure engoliu Scala: migrando minha aplicação 45min"=>"09:45", "Programação em par 45min"=>"10:30", "Desenvolvimento orientado a gambiarras 45min"=>"11:15", "Ruby vs. Clojure para desenvolvimento backend 30min"=>"13:00", "Ensinando programação nas grotas de Maceió 30min"=>"13:30", "Codifique menos, Escreva mais! 30min"=>"14:00", "Aplicações isomórficas: o futuro (que talvez nunca chegaremos) 30min"=>"14:30", "Otimizando CSS em aplicações Rails 30min"=>"15:00", "Apresentando Lua para as massas 30min"=>"15:30", "Rails para usuários de Django lightning"=>"16:00"}]

    assert_equal expected, tracks
  end


end
