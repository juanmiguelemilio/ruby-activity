class Transaction
  def initialize(quantity, price, discount=false)
    @quantity = quantity
    @price = price
    @discount = discount
  end

  def total_transaction
    total_price - get_discount
  end

  private

  def total_price
    @quantity * @price
  end

  def get_discount
    discount_price = @discount ? 10 : 0
  end
end

transact = Transaction.new(10, 899, true)
puts transact.total_transaction