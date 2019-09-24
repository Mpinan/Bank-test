# frozen_string_literal: true

require 'bank_account'
require 'statement'

describe ATM do
  let(:account) { ATM.new }

  context 'from a new account' do

    it 'starts with a balance of 0' do
      expect(account.balance).to eq 0.00
    end

    it 'can deposit money in account balance' do
      account.deposit(1000)
      expect(account.balance).to eq 1000.0
    end

    it 'can withdraw money from balance' do
      account.deposit(1000)
      account.withdraw(500)
      expect(account.balance).to eq 500.0
    end

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
