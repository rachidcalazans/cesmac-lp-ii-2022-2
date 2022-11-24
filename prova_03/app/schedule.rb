class Schedule
   
    def initialize(lectures)
      @lectures = lectures
    end
   
    def generate_tracks
      @track_a = Array.new
      @track_b = Array.new

      for i in 0..1 do

        total_minutes_morning = 180
        total_minutes_afternoon = 240
        morning_array = Array.new
        afternoon_array = Array.new

   
        @lectures.reverse.each do |lecture|

          remainder_morning = total_minutes_morning - lecture.duration;
          remainder_afternoon = total_minutes_afternoon - lecture.duration;

          if (remainder_morning >= 0)
            total_minutes_morning -= lecture.duration
            morning_array.append(lecture)
            @lectures.delete(lecture)
          elsif (remainder_afternoon >= 0)
            total_minutes_afternoon -= lecture.duration
            afternoon_array.append(lecture)
            @lectures.delete(lecture)
          end
        end
   
        if (@track_a.size != 0)
          @track_b = [morning_array, afternoon_array]
        else
          @track_a = [morning_array, afternoon_array]
        end
      end
    end
   
    def build_tracks
      output = ''
      tracks = [@track_a, @track_b]
   
      output.concat(build_track('Track A', tracks[0]))
      output.concat(build_track('Track B', tracks[1]))
      return output
    end

    def build_track(name, track)

        output = ''
        year = Time.now.year
        month = Time.now.month
        day = Time.now.day

        output.concat("\n\n#### " + name)
   
        track_date_time = Time.new(year, month, day, 9)
        track[0].each do |lecture|
            output.concat("\n" + extract_formatted_hour_minute(track_date_time) + ' ' + lecture.title)
            track_date_time += (lecture.duration * 60)
        end
        track_date_time = Time.new(year, month, day, 12)
        output.concat("\n" + extract_formatted_hour_minute(track_date_time) + ' Almoço')
        track_date_time += 3600
     
        track[1].each do |lecture|
            output.concat("\n" + extract_formatted_hour_minute(track_date_time) + ' ' + lecture.title)
            track_date_time += (lecture.duration * 60)
        end
     
        track_date_time = Time.new(year, month, day, 17)
        output.concat("\n" + extract_formatted_hour_minute(track_date_time) + ' Evento de Networking')

        return output
    end
   
    def extract_formatted_hour_minute(time)
      return time.strftime('%k:%M').strip
    end
   
  end