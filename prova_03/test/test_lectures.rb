require "minitest/autorun"
require "date"

class TestExercicio < Minitest::Test

  def test_1

    # DECLARE ALL VARIABLES
    #all_lectures = File.readlines('prova_03/proposals.txt').map(&:chomp)
    all_lectures = {}

    schedule_morning = {}  # final
    schedule_afternoon = {} # final

    track_time_morning = 60 * 3
    track_time_afternoon = (60 * 4) - 1

    #READ THE FILE
    File.foreach("prova_03/proposals.txt") do |line|
      if line != "" and line != "\n"
        all_lectures[line[0..-2]] = line[-6..-5]
      end
    end

    time = DateTime.new(2022, 11, 17, 9, 0)
    # FILL THE MORNING SCHEDULE
    all_lectures.each do |key, value|
      if value == 'tn'
        duration = 5
      else
        duration = value.to_i
      end

      if duration <= track_time_morning
        schedule_morning[key] = time.strftime("%H:%M")
        all_lectures.delete(key)
        track_time_morning -= duration
        time += (1.0/24/60) * duration
      end

      if track_time_morning <= 0
        break
      end
    end

    time = DateTime.new(2022, 11, 17, 13, 0)
    # FILL THE AFTERNOON SCHEDULE 
    all_lectures.each do |key, value|
      if value == 'tn'
        duration = 5
      else
        duration = value.to_i
      end

      if duration <= track_time_afternoon
        schedule_afternoon[key] = time.strftime("%H:%M")
        all_lectures.delete(key)
        track_time_afternoon -= duration
        time += (1.0/24/60) * duration
      end

      if track_time_afternoon <= 0
        break
      end
    end

    puts("Track A:")
    schedule_morning.each do |key, value|
      puts("\n" + value + " " + key)
    end

    puts("\n12:00 Almoço")

    schedule_afternoon.each do |key, value|
      puts("\n" + value + " " + key)
    end

    puts("\n" + time.strftime("%H:%M") + "  Networking")

  end


end
