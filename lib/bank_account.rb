# frozen_string_literal: true

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
    @credit = amount
    raise "That's a lot of money!" if amount > 3000

    @balance += @credit
    @date = Time.now.strftime('%d/%m/%Y')
    add_transaction
  end

  def withdraw(amount)
    @debit = amount
    raise 'Insufficient funds' if amount > balance

    @balance -= @debit
    @date = Time.now.strftime('%d/%m/%Y')
    add_transaction
  end

  def add_transaction
    @statement.transaction.push([@date, @credit, @debit, @balance])
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
