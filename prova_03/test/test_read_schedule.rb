require 'minitest/autorun'

class TestSchedule < Minitest::Test
  def test_reading_txt
    lineArray = []
    test_text = File.foreach('prova_03/proposals.txt') do |line| lineArray.push(line.strip) end

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

    assert_equal lineArray, expected_file_line 
  end 

  def test_array_regex
    lineArray = []
    test_text = File.foreach('prova_03/proposals.txt') do |line| lineArray.push(line.strip) end

    minutes = lineArray.map do |string| 
      if(string.match(/lightning/)) 
        string = '5'
      end
      string.match(/\d+/)[0].to_i
    end
    expected_minutes = [60, 45, 30, 45, 45, 5, 60, 45, 30, 30, 45, 60, 60, 45, 30, 30, 60, 30, 30]
    assert_equal expected_minutes, minutes
  end

  def test_giving_hours
    year = Time.now.year
    day = Time.now.day
    month = Time.now.month
    today_ref = Time.new(year, month, day, 9)
    hours = today_ref.strftime("%k:%M").strip
    single_hour = today_ref.strftime('%k').strip.to_i

    assert_equal single_hour, 9
    assert_equal 2022, year
    assert_equal '9:00', hours
  end

  def test_generate_hour
    lineArray = []
    test_text = File.foreach('prova_03/proposals.txt') do |line| lineArray.push(line.strip) end

    minutes = lineArray.map do |string| 
      if(string.match(/lightning/)) 
        string = '5'
      end
      string.match(/\d+/)[0].to_i
    end

    year = Time.now.year
    day = Time.now.day
    month = Time.now.month
    today_ref = Time.new(year, month, day, 9)
    single_hour = today_ref.strftime('%k').strip.to_i

    sum = 0
    arrayMinutes = []
    minutes.each_with_index do |minute, index|
      if sum == 180
        break
      elsif((sum + minute) <= 180) 
        sum += minute
        arrayMinutes.push(index)
      end
    end

    for phrase in arrayMinutes do
      puts "#{today_ref.strftime('%k:%M').strip} #{lineArray[phrase]}"
      if(minutes[phrase] == 60) 
        today_ref += 3600
      else
        today_ref += (60 * minutes[phrase])
      end
      if((today_ref.strftime('%k:%M').strip) == '12:00') 
        puts "#{today_ref.strftime('%k:%M').strip} Hora do almoço"
        today_ref += 3600
      end
    end

  end


end