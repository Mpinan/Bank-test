require_relative 'statement'

class Bank

  attr_reader :statement, :balance

  def initialize(statement = Statement.new)
    @balance = 0
    @statement = statement
  end

  def add_transaction
    if @credit.nil?
      @statement.transaction.push([@date, @credit, format( "%.2f" % @debit), format( "%.2f" % @balance)])
    else
      @statement.transaction.push([@date, format( "%.2f" % @credit), @debit, format( "%.2f" % @balance)])
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

  def format_statement
    @statement.display
  end

  def reset_values
    @debit = nil
    @credit = nil
  end

end