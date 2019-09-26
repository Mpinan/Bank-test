require_relative 'statement'

class Bank

  attr_reader :statement

  def initialize(statement = Statement.new)
    @balance = 0
    @statement = statement
  end

  def add_transaction
    if @credit.nil?
      @statement.transaction.push([@date, @credit, @debit, @balance])
    else
      @statement.transaction.push([@date, @credit, @debit, @balance])
    end
    reset_values
  end

  def make_deposit(amount)
    @credit = amount.to_f
    raise "That's a lot of money!" if amount > 3000
    @date = Time.now.strftime('%d/%m/%Y')
    @balance += @credit
  end

  def make_withdraw(amount)
    @debit = amount.to_f
    raise 'Insufficient funds' if amount > @balance
    @date = Time.now.strftime('%d/%m/%Y')
    @balance -= @debit
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