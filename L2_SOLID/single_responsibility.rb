class Deposit
  def initialize(amount_deposit)
    @amount_deposit = amount_deposit
  end

  def current_balance
    current_balance = 10000
  end

  def total_new_balance
    @amount_deposit + current_balance
  end
end

deposit1 = Deposit.new(10000)
puts deposit1.total_new_balance