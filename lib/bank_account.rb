class BankAccount
  attr_reader :balance, :transaction, :debit, :credit

  def initialize
    @date = @date
    @credit = 0
    @debit = 0
    @balance = 0
    @transaction = []
  end

  def deposit(amount)
    @credit = amount
    @balance += @credit
    @date = Time.now.strftime("%m/%d/%Y, %T")
    add_to_transaction
  end

  def withdraw(amount)
    @debit = amount
    raise "Insufficient funds" if amount > balance
    @balance -= @debit
    @date = Time.now.strftime("%m/%d/%Y, %T")
    add_to_transaction
  end

  def add_to_transaction
    @transaction.push([@date, @credit, @debit, @balance])
    reset_values
  end

  def reset_values
    @debit = 0
    @credit = 0
  end
    
end