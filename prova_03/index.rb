def converter(minutos) 
  @horas = (minutos/60.0).round(2)
  @horas = String(@horas)
  @min = String(minutos % 60.0)
  if(@horas.length == 3) 
    @textoHoras = "0" + ("00:#{@horas.to_f}").slice(-3)
  elsif(@horas.length == 4)
    @textoHoras = ("00:#{@horas.to_f}").slice(-4) + ("00:#{@horas.to_f}").slice(-3)
  else
    @textoHoras = ("00:#{@horas.to_f}").slice(-5) + ("00:#{@horas.to_f}").slice(-4)
  end

  if(@min.length == 3) 
    @textoMin = "0" + ("00:#{@min.to_f}").slice(-3)
  else
    @textoMin = ("00:#{@min.to_f}").slice(-4) + ("00:#{@min.to_f}").slice(-3)
  end
  puts @textoHoras + ':' + @textoMin
end

@file_data = []
@file_palestra = []
@file_tempo = []


@file = File.readlines('./proposals.txt', chomp: true)

@i = 0

@horaInicial = 540



for f in @file
  @file_data.push(@file[@i][f])
  completo = @file_data[@i]
  texto = completo[0..completo.length-6]
  tempo = completo[texto.length..texto.length+1]
  tempo = tempo.to_i
  @file_palestra.push(texto)
  @file_tempo.push(tempo)

  puts "#{converter(@horaInicial)} - #{@file_palestra[@i]}"
  @horaInicial = @horaInicial + @file_tempo[@i]
  @i += 1
end