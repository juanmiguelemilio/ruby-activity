class BuyCoffee
  def initialize(order, price)
    @order = order
    @price = price
  end

  def buy!
    ActiveBuyCoffee::Base.buying do
      Payment::Order.new(@order).transact!
      Product::Quantity(@order).deduct!
      BuyCoffee.successful_order(@order).deliver_now!
    end
  end
end
