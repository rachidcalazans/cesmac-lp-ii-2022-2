require 'time'

class Planning
    def initialize(file)
        @file = file
        @speeches = File.readlines(@file, chomp: true)
        @duration
        @date = Time.new(2022,11,21,9)
    end

    def list_speeches
        @speeches
    end

    def list_duration_speeches
        @duration = @speeches.map do |minutes|
             if (minutes.match(/lightning/))
                minutes = '5'
            end
            minutes.match(/\d+/)[0].to_i
        end
        @duration
    end

    def list_dates
        list_dates = []
        list_dates.push(@date.strftime("%k:%M").strip)

        return list_dates
    end
end