require 'minitest/autorun'
require './prova_03/app/Reader.rb'
require './prova_03/app/Organizer.rb'

class TestOrganizer < Minitest::Test
  def test_hash_generator
    text_list = Reader.new('prova_03/proposals.txt')
    assert_equal (text_list.instance_of? Reader), true

    lines = text_list.read_lines()
    assert_equal lines, 
    expected_file_line = [
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

    hours = text_list.get_minutes()
    assert_equal hours, expected_minutes = [60, 45, 30, 45, 45, 5, 60, 45, 30, 30, 45, 60, 60, 45, 30, 30, 60, 30, 30]

    organizer = Organizer.new(lines, hours)
    hash_list = organizer.hash_generator()
    assert_equal hash_list.size, 19 
  end

  def test_create_file
    text_list = Reader.new('prova_03/proposals.txt')
    lines = text_list.read_lines()
    hours = text_list.get_minutes()
    organizer = Organizer.new(lines, hours)

    new_list_file = organizer.create_file()
    check_file = File.file?('prova_03/app/new_list.txt')

    assert_equal check_file, true
  end

  def test_time_generator
    text_list = Reader.new('prova_03/proposals.txt')
    lines = text_list.read_lines()
    hours = text_list.get_minutes()
    organizer = Organizer.new(lines, hours)

    time_rn = organizer.time_generator()

    assert_equal '9:00', organizer.hour_ref
  end

  def test_tracker_generator
    text_list = Reader.new('prova_03/proposals.txt')
    lines = text_list.read_lines()
    hours = text_list.get_minutes()

    organizer = Organizer.new(lines, hours)
    organizer.hash_generator()
    organizer.time_generator()

    organizer.tracker_generator()

    expected_trackA = [[{:hour=>30, :text=>"Otimizando CSS em aplicações Rails 30min"}, {:hour=>30, :text=>"Um mundo sem StackOverflow 30min"}, {:hour=>60, :text=>"Manutenção de aplicações legadas em Ruby on Rails 60min"}, {:hour=>30, :text=>"Ruby vs. Clojure para desenvolvimento backend 30min"}, {:hour=>30, :text=>"Ensinando programação nas grotas de Maceió 30min"}], [{:hour=>45, :text=>"Clojure engoliu Scala: migrando minha aplicação 45min"}, {:hour=>60, :text=>"Ruby on Rails: Por que devemos deixá-lo para trás 60min"}, {:hour=>60, :text=>"A mágica do Rails: como ser mais produtivo 60min"}, {:hour=>45, :text=>"Programação em par 45min"}, {:hour=>30, :text=>"Codifique menos, Escreva mais! 30min"}]]
    assert_equal organizer.trackA, expected_trackA

    expected_trackB = [[{hour: 30, text: "Aplicações isomórficas: o futuro (que talvez nunca chegaremos) 30min"}, {hour: 45, text: "Desenvolvimento orientado a gambiarras 45min"}, {:hour=>60, :text=>"Trabalho remoto: prós e cons 60min"}, {:hour=>5, :text=>"Rails para usuários de Django lightning"}, {:hour=>30, :text=>"Apresentando Lua para as massas 30min"}], [{:hour=>45, :text=>"Erros comuns em Ruby 45min"}, {:hour=>45, :text=>"Erros de Ruby oriundos de versões erradas de gems 45min"}, {:hour=>45, :text=>"Reinventando a roda em ASP clássico 45min"}, {:hour=>60, :text=>"Diminuindo tempo de execução de testes em aplicações Rails enterprise 60min"}]]
    assert_equal organizer.trackB, expected_trackB
  end

  def test_tracker_printer
    text_list = Reader.new('prova_03/proposals.txt')
    lines = text_list.read_lines()
    hours = text_list.get_minutes()

    organizer = Organizer.new(lines, hours)
    organizer.create_file()
    organizer.hash_generator()
    organizer.time_generator()
    organizer.tracker_generator()

    organizer.tracker_printer()
    file = File.open('prova_03/proposals.txt')
    file_data = file.readlines.map(&:chomp)
    expected_file_content =  ["Diminuindo tempo de execução de testes em aplicações Rails enterprise 60min", "Reinventando a roda em ASP clássico 45min", "Apresentando Lua para as massas 30min", "Erros de Ruby oriundos de versões erradas de gems 45min", "Erros comuns em Ruby 45min", "Rails para usuários de Django lightning", "Trabalho remoto: prós e cons 60min", "Desenvolvimento orientado a gambiarras 45min", "Aplicações isomórficas: o futuro (que talvez nunca chegaremos) 30min", "Codifique menos, Escreva mais! 30min", "Programação em par 45min", "A mágica do Rails: como ser mais produtivo 60min", "Ruby on Rails: Por que devemos deixá-lo para trás 60min", "Clojure engoliu Scala: migrando minha aplicação 45min", "Ensinando programação nas grotas de Maceió 30min", "Ruby vs. Clojure para desenvolvimento backend 30min", "Manutenção de aplicações legadas em Ruby on Rails 60min", "Um mundo sem StackOverflow 30min", "Otimizando CSS em aplicações Rails 30min"]

    assert_equal file_data, expected_file_content
  end

  def test_make_organizer
    text_list = Reader.new('prova_03/proposals.txt')
    lines = text_list.read_lines()
    hours = text_list.get_minutes()

    organizer = Organizer.new(lines, hours)
    perfect_list = organizer.make_organizer()

    check_file = File.file?('prova_03/app/new_list.txt')
    assert_equal check_file, true

    assert_equal '9:00', organizer.hour_ref
    assert_equal organizer.trackA.empty?, false
    assert_equal organizer.trackB.empty?, false

    file = File.open('prova_03/proposals.txt')
    file_data = file.readlines.map(&:chomp)

    assert_equal file_data.empty?, false
  end
end