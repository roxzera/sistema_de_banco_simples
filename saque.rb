class Bankaccount
  def initialize(balance, account_number, holder)
    @balance = balance
    @account_number = account_number
    @holder = holder
  end

  def deposit(value)
    if value.positive?
      @balance += value
      puts "Deposito de #{value} feito com sucesso"
    elsif value <= 0
      puts "Valor deve ser maior que 0"
    else
      puts "Voce digitou um numero negativo!"
    end
  end

  def withdraw(value)
    if value.positive? && value <= @balance
      @balance -= value
      puts "Voce retirou #{value}, sua conta segue com #{@balance}"
    elsif value <= 0
      puts "Valor deve ser maior que 0"
    else
      puts "Saldo insuficiente"
    end
  end

  def balance
    @balance
  end
end
