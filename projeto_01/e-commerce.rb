loop do

puts "********************* E-COMMERCE INOVA.ACAO AFRO - CESAR ********************"
puts "*"
puts "*"
puts "Selecione a opção desejada:\n[ 1 ] Comprar\n[ 2 ] Sair"
print 'Opção: '

opcao_desjada = gets.chomp.to_i
puts "\n"

def goodbye
  count = 0
  print 'Finalizando'
  while count < 5
    sleep 1
    print "."
    count += 1
  end
  goodbye = [" ","G","o","o","d"," ","B","y","e","!"]
  for i in goodbye
  		sleep 1
  		print i
  end
end

  case
  when opcao_desjada == 2 
    goodbye
    break
  end

end
