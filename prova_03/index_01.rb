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

trackA = [
  { title: 'Diminuindo tempo de execução de testes em aplicações Rails enterprise', tempo: 60 },
  { title: 'Reinventando a roda em ASP clássico', tempo: 45 },
  { title: 'Apresentando Lua para as massas', tempo: 30 },
  { title: 'Erros de Ruby oriundos de versões erradas de gems', tempo: 45 },
  { title: 'Almoço', tempo: 60 },
  { title: 'Ruby on Rails: Por que devemos deixá-lo para trás', tempo: 60 },
  { title: 'Erros comuns em Ruby', tempo: 45 },
  { title: 'Programação em par', tempo: 45 },
  { title: 'Ensinando programação nas grotas de Maceió', tempo: 30 },
  { title: 'Ruby vs. Clojure para desenvolvimento backend', tempo: 30 },
  { title: 'Otimizando CSS em aplicações Rails', tempo: 30 },
  { title: 'Evento de Networking', tempo: 0 },
]

trackB = [
  { title: 'Trabalho remoto: prós e cons', tempo: 60 },
  { title: 'A mágica do Rails: como ser mais produtivo', tempo: 60 },
  { title: 'Aplicações isomórficas: o futuro (que talvez nunca chegaremos)', tempo: 30 },
  { title: 'Codifique menos, Escreva mais!', tempo: 30 },
  { title: 'Almoço', tempo: 60 },
  { title: 'Desenvolvimento orientado a gambiarras', tempo: 45 },
  { title: 'Clojure engoliu Scala: migrando minha aplicação', tempo: 45 },
  { title: 'Um mundo sem StackOverflow', tempo: 30 },
  { title: 'Manutenção de aplicações legadas em Ruby on Rails', tempo: 60 },
  { title: 'Rails para usuários de Django lightning', tempo: 60 },
  { title: 'Evento de Networking', tempo: 0 },
]

@horaInicial = 540

def organizarPalestra(track)
  i = 0
  while i < track.length do

    @title = track[i][:title]
    @tempoPalestra = track[i][:tempo]
    puts "#{converter(@horaInicial)} - #{@title}"
    @horaInicial = @horaInicial + @tempoPalestra
    i += 1
  end
end

organizarPalestra(trackB)


