require 'minitest/autorun'
require './prova_03/app/Organizer.rb'

class TestReader < Minitest::Test
  def test_organizer_maker
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

    # Separating track A and track B
    trackA = []
    trackB = []
    for i in 0..1 do
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
    assert_equal '9:00', today_ref.strftime('%k:%M').strip

    # Printing Tracks
    tracks = [trackA, trackB]
    tracks.each do |track|
      if(tracks[0] == track)
        puts "Track A \n\n"
      else
        puts "Track B \n\n"
      end

      track.each do |array|
        array.each do |hash|
          if(hash == track[1][0])
            today_ref = Time.new(year, month, day, 12)
            puts "#{today_ref.strftime('%k:%M').strip} Almoço"
            today_ref += 3600
          end

          if(hash[:hour] == 60)
            puts "#{today_ref.strftime('%k:%M').strip} #{hash[:text]}"
            today_ref += 3600
          else
            puts "#{today_ref.strftime('%k:%M').strip} #{hash[:text]}"
            today_ref += (60 * hash[:hour])
          end

          if(hash == track[1][-1])
            puts "#{today_ref.strftime('%k:%M').strip} Evento de Networking"
          end
        end
      end
      # SEPARATOR + RESET
      today_ref = Time.new(year, month, day, 9) 
      if(tracks[0] == track)
        puts ' - - - - - - - - - - - - - - - - - - - '
      end
    end
  end
end