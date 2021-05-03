arr = Array.new
n = 0

File.open("entradaQ2").each do |m|
    n = m.to_i if n == 0
    break if m.split[0].to_i > n
    arr[m.split[0].to_i - 1] = m.split[1] # -1 pois o numero das letras começam em 1    
end

arr.each do |i|
    print i
end