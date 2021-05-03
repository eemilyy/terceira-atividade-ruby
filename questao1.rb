require 'time'

class Time
    def humanize
        horas = self.strftime("%H").to_i        
        minutos = self.strftime("%M").to_i
        ampm = self.strftime("%P")

        diferenca = minutos/15.to_f

        if diferenca <= 0.5
            if horas == 0
                "About Midnight"
            else  
                "About " + horas.to_s + ":00 " + ampm
            end
        elsif diferenca > 0.5 and diferenca <= 1.5
            horas == 0 ? "About 12:15 " + ampm : "About " + horas.to_s + ":15 " + ampm
        elsif diferenca > 1.5 and diferenca <= 2.5
            horas == 0 ? "About 12:30 " + ampm : "About " + horas.to_s + ":30 " + ampm
        elsif diferenca > 2.5 and diferenca <= 3.5
            horas == 0 ? "About 12:45 " + ampm : "About " + horas.to_s + ":45 " + ampm
        else
            if horas == 23
                "About Midnight"
            else
                "About " + (horas+1).to_s + " " +  ampm
            end
        end
    end
end

File.open("entradaQ1").each do |linha|
    puts Time.parse(linha.chomp).humanize
end