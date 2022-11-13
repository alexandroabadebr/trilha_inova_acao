puts "********************* E-COMMERCE INOVA.ACAO AFRO - CESAR ********************"
puts "*"
puts "*"

loop do
  puts "Selecione a opção desejada:\n[ 1 ] Comprar\n[ 2 ] Sair"
  print 'Opção: '
  opcao_desejada = gets.to_i
  puts "\n"
# ____________________ end menu e-commerce ____________________ 

def purchase
  puts "Selecione a opção desejada: "
  puts "[ 1 ] Sticker - Penguin Linux: R$39,00"
  puts "[ 2 ] Sticker - Ruby on Rails: R$4,99"
  puts "[ 3 ] Sticker - Java Script: R$3,99"
  print 'Opção: '
  product = gets.to_i

  if product == 1 || product == 2 || product == 3  
    print "Digite a quantidade desejada: "
    amount = gets.to_i
    subtotal = amount ** 2 
    puts "Subtotal: R$#{subtotal.to_f}"
    print "Digite [ 0 ] para voltar ao menu inicial: "
    back = gets.to_i
    if back == 0
      system "clear"
    end
  end
end 
# ____________________ end method purchase ____________________


def goodbye
  count = 0
  print 'Finalizando'
  while count < 3
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
  when opcao_desejada == 1
    purchase
  when opcao_desejada == 2 
    goodbye
    break
  end
  # ____________________ end method goodbye and case option purchase ____________________

end
