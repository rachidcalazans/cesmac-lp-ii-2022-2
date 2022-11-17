require "minitest/autorun"

class TestExercicio < Minitest::Test

  def test_1

    #all_lectures = File.readlines('prova_03/proposals.txt').map(&:chomp)
    all_lectures = []
    duration_of_lectures = []
    schedule_morning = []  # final

    track_time_morning = 180
    track_time_afternoon = 180

    File.foreach("prova_03/proposals.txt") {
      |line| all_lectures.append(line[0..-2])
      duration_of_lectures.append(line[-6..-5])
    }

    for i in 0..duration_of_lectures.length()-1

      if duration_of_lectures[i] == "ng"
        time = 5
      else
        time = duration_of_lectures[i].to_i
      end

      #print("time=#{time} track_time=#{track_time_morning} \n")
      if time <= track_time_morning
        schedule_morning.append(all_lectures[i])
        track_time_morning -= time  

        if track_time_morning <= 0
          break
        end
        
      end
      
    end
    print("#{schedule_morning} \n")

    

    # duration_of_lectures.each do |duration|
    #   if duration <= track_time_morning
    #     schedule_morning.append(du)
    #   end
    # end

    #print(all_lectures)
    # print("\n \n")
    # print(duration_of_lectures)
  end


end
