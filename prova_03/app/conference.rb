require './prova_03/app/reader'

class Conference
    def initialize(hours, headlines)
        @hours = hours
        @headlines = headlines
        @morning_time = []
        @afternoon_time = []
        @list_hours_headlines = []
        @today_ref 
    end

    def execute
      hash_creator()
      time_generator()
      tracker_generator()
      new_file()
      tracker_printer()
    end

    def new_file
        @file = File.open('./prova_03/result.txt', 'w')
    end

    def write(content)
        @file = File.open('./prova_03/result.txt', 'a') do |f|
            f.puts "#{content}"
        end
    end

    def time_generator
      @year = Time.now.year
      @day = Time.now.day
      @month = Time.now.month
      @today_ref = Time.new(@year, @month, @day, 9)
  
      @hour_ref = @today_ref.strftime("%k:%M").strip
    end

    def hash_creator()
        @hours.zip(@headlines).each do |hour, headline|
            @list_hours_headlines.push({hours: hour, headlines: headline})
        end
        @list_hours_headlines
    end

    def tracker_generator
        @track_a = []
        @track_b = []
        for i in 0..1 do
          minutes_morning = 180
          minutes_afternoon = 240
          morning_list = []
          afternoon_list = []
    
          @list_hours_headlines.reverse.each do |h|
            if ((minutes_morning - h[:hours]) >= 0)
              minutes_morning -= h[:hours]
              morning_list.push(h)
              @list_hours_headlines.delete(h)
            elsif ((minutes_afternoon - h[:hours]) >= 0)
              minutes_afternoon -= h[:hours]
              afternoon_list.push(h)
              @list_hours_headlines.delete(h)
            end
          end
          if(@track_a.size != 0) 
            @track_b = [morning_list, afternoon_list]
          else
            @track_a = [morning_list, afternoon_list]
          end
        end
    end

    def tracker_printer
        tracks = [@track_a, @track_b]
      
          tracks.each do |track|
          if(tracks[0] == track)
              write("Track A \n\n")
            else
              write("\nTrack B \n\n")
            end
      
            track.each do |array|
              array.each do |hash|
                if(hash == track[1][0])
                  @today_ref = Time.new(@year, @month, @day, 12)
                  write("#{@today_ref.strftime('%k:%M').strip} Almoço")
                  @today_ref += 3600
                end
      
                if(hash[:hour] == 60)
                  write("#{@today_ref.strftime('%k:%M').strip} #{hash[:headlines]}")
                  @today_ref += 3600
                else
                  write("#{@today_ref.strftime('%k:%M').strip} #{hash[:headlines]}")
                  @today_ref += (60 * hash[:hours])
                end
      
                if(hash == track[1][-1])
                  write("#{@today_ref.strftime('%k:%M').strip} Evento de Networking")
            end
        end

        @today_ref = Time.new(@year, @month, @day, 9)
        if(tracks[0] == track)
        end
      end
    end
  end
end

reader = Reader.new('./prova_03/proposals.txt')
reader.execute
conference = Conference.new(reader.duration, reader.headlines)
conference.execute