class Conference
    attr_accessor :hours
    attr_accessor :headlines
    attr_accessor :duration

    def initialize(hours, headlines)
        @hours = hours
        @headlines = headlines
    end

    def list_duration
        @duration
    end
end