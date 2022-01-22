class OrderHistory
  def initialize(orders)
    @orders = orders
  end

  def show_five_items
    @orders.query(5)
  end

  def show_all
  end

  def show_only_one
  end
end

def OrdersQuery
  def initialize
  end

  def query(number)
  end
end

orders = OrdersQuery.new()
history = OrderHistory.new(orders)
history.show_five_items

