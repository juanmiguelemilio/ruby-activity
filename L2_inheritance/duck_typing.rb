class Payment

  def type(payment)
    payment.type
  end
end

class FullyPaid

  def type
    puts "Full paid payment"
  end
end

class Installment
  def type
    puts "Installment payment"
  end
end

customer_payment = Payment.new
full = FullyPaid.new
customer_payment.type(full)

installment = Installment.new
customer_payment.type(installment)