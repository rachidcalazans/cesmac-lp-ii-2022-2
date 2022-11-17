require "minitest/autorun"

class TestExercicio < Minitest::Test

  def test_1

    # DECLARE ALL VARIABLES
    #all_lectures = File.readlines('prova_03/proposals.txt').map(&:chomp)
    all_lectures = []
    duration_of_lectures = []

    schedule_morning = []  # final
    schedule_afternoon = [] # final

    track_time_morning = 60 * 3
    track_time_afternoon = (60 * 4) - 1

    #READ THE FILE
    File.foreach("prova_03/proposals.txt") do |line|
      if line != "" and line != "\n"
        all_lectures.append(line[0..-2])
        duration_of_lectures.append(line[-6..-5])
      end
    end

    # print(all_lectures)
    # print(all_lectures.length)
    # # print(duration_of_lectures)
    # print(duration_of_lectures.length)
    
    # FILL THE MORNING SCHEDULE
    all_lectures.each_with_index do |item, i|
      if duration_of_lectures[i] == "tn"
        time = 5
      else
        time = duration_of_lectures[i].to_i
      end

      #print("time=#{time} track_time=#{track_time_morning} \n")
      if time <= track_time_morning
        schedule_morning.push(item)
        all_lectures.delete_at(i)
        duration_of_lectures.delete_at(i)

        track_time_morning -= time  

        if track_time_morning <= 0
          break
        end
      end
    end
    
    all_lectures.compact!
    duration_of_lectures.compact!

    #print("\n")
    #print(all_lectures)
    # # print(all_lectures.length)
    #print(duration_of_lectures)
    # print(duration_of_lectures.length)
    #print(schedule_morning)

    #FILL THE AFTERNOON SCHEDULE
    all_lectures.each_with_index do |item, i|
      if duration_of_lectures[i] == "tn"
        time = 5
      else
        time = duration_of_lectures[i].to_i
      end

      # print("#{all_lectures[i]} time=#{time} track_time=#{track_time_afternoon} \n")
      if time <= track_time_afternoon
        schedule_afternoon.push(item)
        all_lectures.delete_at(i)
        duration_of_lectures.delete_at(i)
        track_time_afternoon -= time  

        if track_time_afternoon <= 0
          break
        end
      end
    end

    print("\n")
    #print(all_lectures)
    # # print(all_lectures.length)
    #print(duration_of_lectures)
    # print(duration_of_lectures.length)
    #print(schedule_afternoon)

    puts("Track A:")

    schedule_morning.each do |item|
      puts item
    end


  end


end
