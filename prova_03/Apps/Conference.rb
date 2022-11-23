require 'time'

class Conference
    def initialize(file)
        @file = file
        @lecture = File.readlines(@file, chomp: true)
        @talkt
        @time = Time.new(2022,11,21,9)
    end

    def ls_time
        ls_time = []
        ls_time.push(@time.strftime("%k:%M").strip)

        return ls_time
    end

    def ls_talk_time
        @talkt = @lecture.map do |minutos|
             if (minutos.match(/lightning/))
                minutos = '5'
            end
            minutos.match(/\d+/)[0].to_i
        end
        @talkt
    end

    def ls_lecture
        @lecture
    end
end