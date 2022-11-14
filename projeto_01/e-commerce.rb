puts "********************* E-COMMERCE INOVA.ACAO AFRO - CESAR ********************"
puts "*"
puts "*"

loop do
  puts "Selecione a opção desejada:\n[ 1 ] Comprar\n[ 2 ] Sair"
  print 'Opção: '
  opcao_desejada = gets.chomp.to_i
  puts "\n"

# ____________________ end menu e-commerce ____________________ 

def purchase
  puts "Selecione o sticker que deseja:"
  puts "[ 1 ] Sticker - Penguin Linux: R$5,99"
  puts "[ 2 ] Sticker - Ruby on Rails: R$4,99"
  puts "[ 3 ] Sticker - Java Script: R$3,99"
  print 'Opção: '
  select_product = gets.chomp.to_i 
  puts "\n"
  
  if select_product == 1
    price = 5.99
  elsif select_product == 2
    price = 4.99
  elsif select_product == 3
    price = 3.99
  else
    puts "Por favor, igite uma das opções a cima."
  end

  print "Digite a quantidade desejada: "
  amount_product = gets.to_i
  subtotal = amount_product * price
  puts "Subtotal: R$#{subtotal}"
  
  puts "\n"
  print "Digite [ 0 ] para voltar ao menu inicial: "
  back_screen = gets.chomp.to_i
    
  if back_screen == 0
    system "clear"
  end
end 
# ____________________ end method purchase ____________________

def goodbye
  count = 0
  print '# Finalizando'
  while count < 3
    sleep 1
    print "."
    count += 1
  end
  goodbye = [" ","G","o","o","d","_","B","y","e","!"]
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
