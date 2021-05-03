pacientes = Hash.new
tDNAquant = 0 # o somatório da quantidade de T no DNA
maiorTpaciente = 0 # código do paciente com mais T no DNA

File.open("entradaQ4").each do |linha|
    break if linha.split[0] == "9999"

    codigoPaciente = linha.split[0]
    dnaPaciente = linha.split[1]
    pacientes[codigoPaciente] = dnaPaciente
end

pacientes.each do |codigo, dna| #iterando no hash
    @contador = 0 #criando uma instancia que ao finalizar o bloco ele é limpo

    dna.split('').each do |c| #iterando na string
        @contador += 1 if c == "T"
    end
    
    if @contador > tDNAquant
         tDNAquant = @contador
         maiorTpaciente = codigo
    end 
end

puts maiorTpaciente