class Transaction
  def initialize(type)
    @type = type
  end

  def perform(transact)
    case Transact.do(transact).downcase
    when "deposit"
      Desposit.new.perform(transact)
    when "withdraw"
      Withdraw.new.perform(transact)
    else
      raise NotAbleToTransact, "Transaction denied. Please try again!"
    end
  end
  @type.save
end

class Deposit < Transaction
  def perform(transact)
  end
end

class Withdraw < Transaction
  def perform(transact)
  end
end
