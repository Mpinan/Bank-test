class BankAccount
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit(amount)
    d = Time.now.strftime("%m/%d/%Y")
    @balance += amount.to_i
    "Deposit of #{amount} made #{d}" 

  end

  def withdraw(amount)
    @balance -= amount
    d = Time.now.strftime("%m/%d/%Y")
    "Withdraw of #{amount} made #{d}" 
  end

end