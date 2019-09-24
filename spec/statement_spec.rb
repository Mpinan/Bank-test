# frozen_string_literal: true

require 'statement'

describe Statement do

  let(:account) { BankAccount.new }
  let(:statement) { Statement.new }

  it 'returns the statement as a table' do
    result = "date || credit || debit || balance\n#{Time.now.strftime('%d/%m/%Y')} || 1000.0 ||  || 1000.0\n#{Time.now.strftime('%d/%m/%Y')} ||  || 500.0 || 500.0\n"
    account.deposit(1000)
    account.withdraw(500)
    expect{account.print_statement}.to output(result).to_stdout
   end

end
