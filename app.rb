require_relative "attributes"
require_relative "saque"

def login
  # :balance = 0, :account_number, :holder
  date = Attributes.new
  print "Digite o numero da sua conta: "
  date.account_number = gets.chomp.to_i
  print "Digite o nome do titular: "
  date.holder = gets.chomp
  date.balance = 0
  return date.balance, date.holder, date.account_number
end

def display_menu(balance)
  puts "***MENU DO BANCO***"
  puts "\nSeu saldo: #{balance}"
  puts "1- Depositar"
  puts "2- Sacar"
  puts "0- Sair"
end

def loop_menu
  account_balance, account_number, account_holder = login
  account = Bankaccount.new(account_balance, account_number, account_holder)

  system 'clear'

  loop do |option|
    display_menu(account.balance)
    print "Opcao: "
    option = gets.chomp.to_i
    system 'clear'

    case option
      when 1
        system 'clear'
        print "Digite o valor que quer depositar? "
        deposit = gets.chomp.to_f
        account.deposit(deposit)
        puts account_balance
        system 'pause'
      when 2
        system 'clear'
        print "Digite o valor que quer depositar? "
        withdraw = gets.chomp.to_f
        account.withdraw(withdraw)
        system 'pause'
      when 0
        puts "Saindo!"
        system 'pause'
      else
        system 'clear'
        puts "Opcao invalida"
    end
    break if option == 0
  end
end

loop_menu
