class Salary
  def initialize(monthly_salary, deduction, bonus=true)
    @monthly_salary = monthly_salary
    @deduction = deduction
    @bonus = bonus
  end

  def total_monthly_salary
    total_salary + bonus
  end

  private

  def total_salary
    @monthly_salary - @deduction
  end

  def bonus
    bonus = 100000
  end
end

salary1 = Salary.new(100000, 5000, true)
puts salary1.total_monthly_salary
