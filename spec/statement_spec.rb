# frozen_string_literal: true

require 'statement'

describe Statement do

  let(:account) { BankAccount.new }
  let(:statement) { Statement.new }

  it 'returns the statement as a table' do
     account.deposit(1000)
     account.withdraw(500)
     expect(account.print_statement).to include Date.today.strftime("%d/%m/%Y") + ' || 1000 ||  || 1000'
   end

end
