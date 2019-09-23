require 'bank_account'

describe BankAccount do

  it 'starts with a balance of 0' do
    expect(subject.balance).to eq 0
  end

  it 'can deposit money in balance' do
    subject.deposit(1000)
    expect(subject.balance).to be 1000
  end

  it 'can withdraw money from balance' do
    subject.deposit(1000)
    subject.withdraw(500)
    expect(subject.balance).to be 500
  end
  
end