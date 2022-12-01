class Schedule

  attr_accessor :hour_ref, :track_a, :track_b
  
  def initialize(list, hours)
    @list = list
    @hours = hours
    @arr_hours_lines = []
    @new_file
  end

  def make_schedule
    hash_generator()
    time_generator()
    tracker_generator()
    create_file()
    tracker_printer()
  end

  def create_file
    @new_file = File.open('prova_03/app/new_list.txt', 'w') do |f|
      f.puts "Conference \n\n"
    end
  end

  def write_in_list(content)
    @new_file = File.open('prova_03/app/new_list.txt', 'a') do |file|
      file.puts "#{content}"
    end
  end

  def hash_generator
    @hours.zip(@list).each do |minute, line|
      @arr_hours_lines.push({ hour: minute, text: line })
    end
    @arr_hours_lines
  end
  
  def time_generator
    @year = Time.now.year
    @day = Time.now.day
    @month = Time.now.month
    @today_ref = Time.new(@year, @month, @day, 9)

    @hour_ref = @today_ref.strftime("%k:%M").strip
  end

  def tracker_generator
    @trackA = []
    @trackB = []
    for i in 0..1 do
      sumMorning = 180 # 3 hours
      sumAfternoon = 240 # 4 hours
      morningArr = []
      afternoonArr = []
      
      @arr_hours_lines.reverse.each do |hash|
        if ((sumMorning - hash[:hour]) >= 0)
          sumMorning -= hash[:hour]
          morningArr.push(hash)
          @arr_hours_lines.delete(hash)
        elsif ((sumAfternoon - hash[:hour]) >= 0)
          sumAfternoon -= hash[:hour]
          afternoonArr.push(hash)
          @arr_hours_lines.delete(hash)
        end
      end
      # Fullfiling the arrays
      if(@trackA.size != 0) 
        @trackB = [morningArr, afternoonArr]
      else
        @trackA = [morningArr, afternoonArr]
      end
    end
  end

  def tracker_printer
  tracks = [@trackA, @trackB]

    tracks.each do |track|
    if(tracks[0] == track)
        write_in_list("Track A \n\n")
      else
        write_in_list("Track B \n\n")
      end

      track.each do |array|
        array.each do |hash|
          if(hash == track[1][0])
            @today_ref = Time.new(@year, @month, @day, 12)
            write_in_list("#{@today_ref.strftime('%k:%M').strip} Almoço")
            @today_ref += 3600
          end

          if(hash[:hour] == 60)
            write_in_list("#{@today_ref.strftime('%k:%M').strip} #{hash[:text]}")
            @today_ref += 3600
          else
            write_in_list("#{@today_ref.strftime('%k:%M').strip} #{hash[:text]}")
            @today_ref += (60 * hash[:hour])
          end

          if(hash == track[1][-1])
            write_in_list("#{@today_ref.strftime('%k:%M').strip} Evento de Networking")
          end
        end
      end

      # SEPARATOR + RESET
      @today_ref = Time.new(@year, @month, @day, 9)
      if(tracks[0] == track)
        write_in_list("\n") 
      end
    end
  end

end