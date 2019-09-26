# frozen_string_literal: true

require_relative 'bank'

class ATM
  def initialize(bank = Bank.new)
    @bank = bank
  end

  def deposit(amount)
    @bank.make_deposit(amount)
    @bank.add_transaction
  end

  def withdraw(amount)
    @bank.make_withdraw(amount)
    @bank.add_transaction
  end

  def print_formatted_statement
    @bank.print_statement
  end

  def check_current_balance
    @bank.balance
  end

end
