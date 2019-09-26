# frozen_string_literal: true

require 'statement'

describe Statement do
  let(:atm) { ATM.new }
  let(:statement) { Statement.new }

  it 'returns the statement as a table' do
    result = "date || credit || debit || balance\n#{Time.now.strftime('%d/%m/%Y')} || 1000.00 ||  || 1000.00\n#{Time.now.strftime('%d/%m/%Y')} ||  || 500.00 || 500.00\n"
    atm.deposit(1000)
    atm.withdraw(500)
    expect { atm.print_formatted_statement }.to output(result).to_stdout
  end
end
