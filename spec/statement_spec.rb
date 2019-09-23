# require 'statement'

# describe Statement do
#   it 'return a statement with as a table' do
#     expect(subject.sheet).to eq("date || credit || debit || balance")
#   end
#  it 'returns the statement as a table' do
#     statement = Statement.new
#     statement.sheet = [15.00, 0, 15.00]
#     expect(statement.format).to eq Date.today.strftime('%d/%m/%Y') + ' || 15.00 ||  || 15.00'
#   end

# end