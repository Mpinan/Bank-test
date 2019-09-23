# frozen_string_literal: true

class Statement
  attr_reader :transaction

  def initialize
    @transaction = []
  end

  def display
    p 'date || credit || debit || balance '
    @transaction.map do |list|
      p list.join(' || ')
    end
  end
end
