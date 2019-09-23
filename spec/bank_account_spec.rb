# frozen_string_literal: true

require 'bank_account'
require 'statement'

describe BankAccount do
  let(:account) { BankAccount.new }

  it 'starts with a balance of 0' do
    expect(account.balance).to eq 0
  end

  it 'can deposit money in balance' do
    account.deposit(1000)
    expect(account.balance).to be 1000
  end

  it 'can withdraw money from balance' do
    account.deposit(1000)
    account.withdraw(500)
    expect(account.balance).to be 500
  end

  it 'reset the values of credit and debit once added to balance' do
    account.deposit(1000)
    account.withdraw(500)
    expect(account.debit).to be nil
    expect(account.credit).to be nil
  end

  it 'throw an error if trying to withdraw money withour balance' do
    expect { account.withdraw(1) }.to raise_error('Insufficient funds')
  end

  it 'throw an error if trying to make a deposit bigger than 3000' do
    expect { account.deposit(3001) }.to raise_error("That's a lot of money!")
  end
end
