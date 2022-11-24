class Reader
    attr_accessor :headlines, :duration

    def initialize(file)
        @file = file
        @headlines
        @hours
    end

    def execute
        list_headlines()
        list_duration()
    end

    def list_headlines
        @headlines = File.readlines('./prova_03/proposals.txt', chomp: true)
    end

    def list_duration
        @duration = @headlines.map do |min|
            if (min.match(/lightning/))
                min = '5'
            end
            min.match(/\d+/)[0].to_i
        end
    end
end