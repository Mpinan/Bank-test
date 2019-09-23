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

  it 'has a array with the details of the transaction' do
    subject.deposit(1000)
    time = Time.now.strftime("%m/%d/%Y, %T")
    expect(subject.transaction).to eq([["#{time}", 1000, 0, 1000]])
  end

  it 'reset the values of credit and debit once added to balance' do
    subject.deposit(1000)
    subject.withdraw(500)
    expect(subject.debit).to be 0
    expect(subject.credit).to be 0
  end

  it 'throw an error if trying to withdraw money withour balance' do
    expect{subject.withdraw(1)}.to raise_error("Insufficient funds")
  end

  it 'throw an error if trying to make a deposit bigger than 3000' do
    expect{subject.deposit(3000)}.to raise_error("That's a lot of money!")
  end
end
