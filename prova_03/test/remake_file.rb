require 'minitest/autorun'

class TestReader < Minitest::Test
  def test_schedule_maker
    lineArray = []
    lineArray_copy = lineArray
    test_text = File.foreach('prova_03/proposals.txt') do |line| lineArray.push(line.strip) end
    
    minutes = lineArray.map do |string| 
      if(string.match(/lightning/)) 
        string = '5'
      end
      string.match(/\d+/)[0].to_i
    end

    hourAndLine = []
    minutes.zip(lineArray).each do |minute, line|
      hourAndLine.push({ hour: minute, text: line })
    end

    sumMorning = 0
    sumAfternoon = 0
    hourAndLine.each do |hash|
      if ((sumMorning + hash[:hour]) <= 180)
        p sumMorning
        sumMorning += hash[:hour]
      elsif ((sumAfternoon + hash[:hour]) <= 240)
        p sumAfternoon
        sumAfternoon += hash[:hour]
      end
    end
  end
end