# frozen_string_literal: true

class Statement
  attr_reader :transaction

  def initialize
    @transaction = []
  end

  def display
    puts 'date || credit || debit || balance'
    @transaction = @transaction.last
    @transaction.map do |list|
      puts list.join(' || ')
    end
  end
end
