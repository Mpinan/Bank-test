require_relative 'statement'

class BankAccount
  attr_reader :balance, :transaction, :debit, :credit, :statement

  def initialize(statement = Statement.new)
    @date = @date
    @credit = nil
    @debit = nil
    @balance = 0
    @statement = statement
  end

  def deposit(amount)
    @credit = amount.to_f
    raise "That's a lot of money!" if amount > 3000
    @balance += @credit
    @date = Time.now.strftime("%d/%m/%Y")
    add_transaction
  end

  def withdraw(amount)
    @debit = amount.to_f
    raise "Insufficient funds" if amount > @balance
    @balance -= @debit
    @date = Time.now.strftime("%d/%m/%Y")
    add_transaction
  end

  def add_transaction
    if @credit.nil? 
      @statement.transaction.push([@date, @credit, "%.2f" % @debit, "%.2f" % @balance])
    else
       @statement.transaction.push([@date, "%.2f" % @credit, @debit, "%.2f" % @balance])
    end
    reset_values
  end

  def print_statement
    @statement.display
  end

  private

  def reset_values
    @debit = nil
    @credit = nil
  end

end