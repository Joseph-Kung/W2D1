class Employee
  attr_reader :name, :title, :salary, :boss
  
  def initialize(name, title, salary, boss)
    @name, @title, @salary, @boss = name, title, salary, boss
  end
  
  def bonus(multiplier)
    @salary * multiplier
  end
end

class Manager < Employee
  attr_accessor :employees
  
  def initialize(name, title, salary, boss, employees=[])
    super(name, title, salary, boss)
    @employees = employees
  end
  
  def bonus(multiplier)
    salaries = []
    @employees.each {|employee| salaries << employee.salary}
    salaries.reduce(:+) * multiplier
  end
end