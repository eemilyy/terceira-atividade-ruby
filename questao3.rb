arr = Array.new
macacos = 0 
pesoTigres = 0
qtdTigres = 0
cobrasVenezuela = 0

File.open("entradaQ3").each do |animal|           
    if animal.chomp.upcase != "CONTINUAR" and animal.chomp.upcase != "PARAR"
        arr << animal.chomp.upcase  #atribuindo o valor ao array      
        
    else
        macacos += 1 if arr[0] == "MACACO"
        pesoTigres += arr[1].to_f and qtdTigres += 1 if arr[0] == "TIGRE"
        cobrasVenezuela += 1 if (arr[0] == "COBRA") and (arr[2] == "VENEZUELA")        
        arr.clear        
    end

    break if animal.chomp.upcase == "PARAR"
end

puts macacos
qtdTigres == 0 ? (puts '0.00') : (puts '%.2f' % (pesoTigres/qtdTigres)) #definindo que deve ser 2 casas decimais
puts cobrasVenezuela