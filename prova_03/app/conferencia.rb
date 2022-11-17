class Conferencia
    def initialize(track, horario, palestra)
        @track = track
        @horario = horario
        @palestra = palestra
    end

    def get_track
        @track
    end

    def set_track=(track)
        @track = track
    end

    def get_horario
        @horario
    end

    def set_horario=(horario)
        @horario = horario
    end

    def get_palestra
        @palestra
    end

    def set_palestra=(palestra)
        @palestra = palestra
    end
end