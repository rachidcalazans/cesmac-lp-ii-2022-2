class FileReader
 
    def read(file_path)
      lectures = Array.new
   
      File.readlines(file_path).each do |line|
        words_array = line.split
        last_index = words_array.length() - 1
        duration = words_array[last_index].to_s.gsub('lightning', '5min').gsub('min', '').to_i
        title = words_array.join(' ')
        lecture = Lecture.new(title, duration)
        lectures.append(lecture)
      end  
      return lectures
    end
end