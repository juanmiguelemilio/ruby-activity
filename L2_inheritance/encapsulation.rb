class Transaction
  def initialize(quantity, price)
    @quantity = quantity
    @price = price
  end

  def total
    @quantity * @price
  end
end

transact = Transaction.new(5, 100)
puts transact.total