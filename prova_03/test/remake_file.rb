require 'minitest/autorun'

class TestReader < Minitest::Test
  def test_schedule_maker
    # READING LINES
    lineArray = []
    test_text = File.foreach('prova_03/proposals.txt') do |line| lineArray.push(line.strip) end
    
    # Getting Minutes
    minutes = lineArray.map do |string| 
      if(string.match(/lightning/)) 
        string = '5'
      end
      string.match(/\d+/)[0].to_i
    end

    # Converting into hash
    hourAndLine = []
    minutes.zip(lineArray).each do |minute, line|
      hourAndLine.push({ hour: minute, text: line })
    end

    p hourAndLine

    # How many tracks it has
    totalHours = 0
    hourAndLine.each do |hash|
      totalHours += hash[:hour]
    end
    timeTracks = totalHours / 420

    # Separating track A and track B
    trackA = []
    trackB = []
    for i in 0..timeTracks do
      sumMorning = 180 # 3 hours
      sumAfternoon = 240 # 4 hours
      morningArr = []
      afternoonArr = []
      
      hourAndLine.reverse.each do |hash|
        if ((sumMorning - hash[:hour]) >= 0)
          sumMorning -= hash[:hour]
          morningArr.push(hash)
          hourAndLine.delete(hash)
        elsif ((sumAfternoon - hash[:hour]) >= 0)
          sumAfternoon -= hash[:hour]
          afternoonArr.push(hash)
          hourAndLine.delete(hash)
        end
      end
      # Fullfiling the arrays
      if(trackA.size != 0) 
        trackB = [morningArr, afternoonArr]
      else
        trackA = [morningArr, afternoonArr]
      end
    end
    
    # Creating time object
    year = Time.now.year
    day = Time.now.day
    month = Time.now.month
    today_ref = Time.new(year, month, day, 9)
    single_hour = today_ref.strftime('%k').strip.to_i
    assert_equal '9:00', today_ref.strftime('%k:%M').strip

    # Printing Track A
    p 'TRACK A'
    trackA.each do |array|
      array.each do |hash|
        # Lunch Time
        if(hash == trackA[1][0])
          today_ref = Time.new(year, month, day, 12)
          p "#{today_ref.strftime('%k:%M').strip} Almoço"
          today_ref += 3600
        end

        if(hash[:hour] == 60)
          p "#{today_ref.strftime('%k:%M').strip} #{hash[:text]}"
          today_ref += 3600
        else
          p "#{today_ref.strftime('%k:%M').strip} #{hash[:text]}"
          today_ref += (60 * hash[:hour])
        end

        if(hash == trackA[1][-1])
          p "#{today_ref.strftime('%k:%M').strip} Evento de Networking"
        end
      end
    end
    today_ref = Time.new(year, month, day, 9)
    p '---------------------'

    # Printing Track B
    p 'TRACK B'
    trackB.each do |array|
      array.each do |hash|
        # Lunch Time
        if(hash == trackB[1][0])
          today_ref = Time.new(year, month, day, 12)
          p "#{today_ref.strftime('%k:%M').strip} Almoço"
          today_ref += 3600
        end

        if(hash[:hour] == 60)
          p "#{today_ref.strftime('%k:%M').strip} #{hash[:text]}"
          today_ref += 3600
        else
          p "#{today_ref.strftime('%k:%M').strip} #{hash[:text]}"
          today_ref += (60 * hash[:hour])
        end

        if(hash == trackB[1][-1])
          p "#{today_ref.strftime('%k:%M').strip} Evento de Networking"
        end
      end
    end
  end
end