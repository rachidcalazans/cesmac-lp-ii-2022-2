class Schedule
  def initialize(list, hours)
    @list = list
    @hours = hours
    @arr_hours_lines = []
    @total_tracks
  end

  def hash_generator
    @hours.zip(@list).each do |minute, line|
      @arr_hours_lines.push({ hour: minute, text: line })
    end
    @arr_hours_lines
  end
  
  def total_hours
    
  end
end