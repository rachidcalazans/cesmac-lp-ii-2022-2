class Talk

    def initialize(filesz)

        @filesz = filesz

        @talks = File.readlines(@filesz)

        @timesz

        @hoursz = Time.new(2022,11,21,9)

    end

    def show_talk

        @talks

    end

    def show_time_talk

        @timesz =@talks.map do | minutes |

            if (minutes.match(/lightning/))

                minutes = '5'

            end

            minutes.match(/\d+/)[0].to_i

        end

        @timesz

    end

    def show_time

        list_hours = []

        list_hours.push(@hoursz.strftime("%k:%M").strip)

        return list_hours

    end

end