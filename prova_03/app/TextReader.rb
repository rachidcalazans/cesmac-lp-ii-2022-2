class TextReader

  def initialize(file)
    @file = file 
    @minutes
    @textLines
  end

  def read_lines
    @textLines = []
    test_text = File.foreach(@file) do |line| @textLines.push(line.strip) end
    return @textLines
  end

  def get_minutes
    @minutes = @textLines.map do |string| 
      if(string.match(/lightning/)) 
        string = '5'
      end
      string.match(/\d+/)[0].to_i
    end
    @minutes
  end

end
