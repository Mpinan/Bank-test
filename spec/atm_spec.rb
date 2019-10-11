# frozen_string_literal: true

require 'atm'
require 'statement'

describe ATM do
  let(:atm) { ATM.new }
  let(:bank) { Bank.new }
  let(:statement) { Statement.new }

  context 'from a new atm' do
    it 'starts with a balance of 0' do
      expect(atm.check_current_balance).to eq 0.00
    end

    it 'can deposit money in atm balance' do
      atm.deposit(1000)
      expect(atm.check_current_balance).to eq 1000.0
    end

    it 'can withdraw money from balance' do
      atm.deposit(1000)
      atm.withdraw(500)
      expect(atm.check_current_balance).to eq 500.0
    end
  end

  it 'reset the values of credit and debit once added to balance' do
    expect(bank).to respond_to(:reset_values)
  end

  it 'throw an error if trying to withdraw money without balance' do
    expect { atm.withdraw(1) }.to raise_error('Insufficient funds')
  end

  it 'throw an error if trying to make a deposit bigger than 3000' do
    expect { atm.deposit(3001) }.to raise_error("That's a lot of money!")
  end
end
