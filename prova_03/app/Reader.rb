class Reader

  def initialize(file)
    @file = file 
    @minutes
    @textLines
  end

  def read_file
    read_line()
    @textLines
  end

  def schedule
    get_line_hours()
  end

  private 

  def read_line
    @textLines = []
    test_text = File.foreach(@file) do |line| @textLines.push(line.strip) end
    return @textLines
  end 

  def get_line_hours
    @minutes = @textLines.map do |string| 
      if(string.match(/lightning/)) 
        string = '5'
      end
      string.match(/\d+/)[0].to_i
    end
    @minutes
  end

  def todays_list
    morning_time = 180
    afternoon_time = 240

    # @minutes.each_with_index do |minute, index|
    # end
  end


end
