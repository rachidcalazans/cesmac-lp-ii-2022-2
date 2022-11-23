require "date"


def read_file(file_name)
  all_lectures = {}
  
  File.foreach("prova_03/#{file_name}") do |line|
    if line != "" and line != "\n"
      if line[-6..-5] == "tn"
        all_lectures[line[0..-2]] = 5
      else
        all_lectures[line[0..-2]] = line[-6..-5].to_i
      end
    end
  end
  return all_lectures.sort_by{ |k, v| v}.reverse.to_h
end


def make_tracks(all_lectures)
  tracks = []
  
  while not all_lectures.empty? do
    schedule_morning = {}  
    schedule_afternoon = {}
    track_time_morning = 60 * 3
    track_time_afternoon = 60 * 4
    time_morning = DateTime.new(2022, 11, 17, 9, 0)
    time_afternoon = DateTime.new(2022, 11, 17, 13, 0)
    
    all_lectures.each do |key, value|

      if value <= track_time_morning
        schedule_morning[key] = time_morning.strftime("%H:%M")
        all_lectures.delete(key)
        track_time_morning -= value
        time_morning += (1.0/24/60) * value
        next
      end

      if value <= track_time_afternoon
        schedule_afternoon[key] = time_afternoon.strftime("%H:%M")
        all_lectures.delete(key)
        track_time_afternoon -= value
        time_afternoon += (1.0/24/60) * value
        next
      end

      if track_time_morning <= 0 and track_time_afternoon <= 0
        break
      end
    end
    tracks.push(schedule_morning.merge(schedule_afternoon))
  end
  return tracks
end


def print_schedule(tracks)
  tracks.each_with_index do |item, i|
    track = (i + 65).chr
    puts("TRACK " + track + ":")
    item.each do |key, value|
      if value[0..1].to_i < 12
        puts(value + " " + key)
      end
      
      if value[0..1].to_i > 12
        if value == "13:00"
          puts("12:00 Almoço")
        end 
        puts(value + " " + key)
      end
    end
    puts("17:00 Evento de Networking")
    puts()
  end
end

def make_schedule(file_name)
  all_lectures = read_file('proposals.txt')
  tracks = make_tracks(all_lectures)
  print_schedule(tracks)
  
  return tracks
end

