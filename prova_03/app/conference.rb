require 'time'

class Conference
    attr_accessor :hours, :headlines, :duration

    def initialize(hours, headlines)
        @hours = hours
        @headlines = headlines
        @morning_time = Time.new(2022, 11, 22, 9)
        @afternoon_time = Time.new(2022, 11, 22, 13)
    end

    def list_morning_hours
        hour = @morning_time.hour
        minute = @morning_time.min
        list = []
        list.push(Time.new(2022, 11, 22, hour, minute).strftime('%k:%M').strip)

        for h in @duration do
            minute += h

            if hour >= 12
                break
            end

            if minute < 60
                list.push(Time.new(2022, 11, 22, hour, minute).strftime('%k:%M').strip)
            else
                minute -= 60
                hour += 1
                list.push(Time.new(2022, 11, 22, hour, minute).strftime('%k:%M').strip)
            end
        end

        return list
    end

    def list_afternoon_hours
        hour = @afternoon_time.hour
        minute = @afternoon_time.min
        list = []
        list.push(Time.new(2022, 11, 22, hour, minute).strftime('%k:%M').strip)

        for h in @duration.drop(4) do
            minute += h

            if hour >= 16 and minute > 30
                break
            end

            if minute < 60
                list.push(Time.new(2022, 11, 22, hour, minute).strftime('%k:%M').strip)
            else
                minute -= 60
                hour += 1
                list.push(Time.new(2022, 11, 22, hour, minute).strftime('%k:%M').strip)
            end
        end

        return list
    end
end