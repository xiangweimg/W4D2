require_relative "employee.rb"
class Manager < Employee
    def initialize(name,title,salary,boss)
        super
        @employees = []
    end

    def bonus(multiplier)
        total_salary = 0
        @employees.each do |employee|
            total_salary += employee.bonus(multiplier)
        end
        total_salary 
    end
    
    def add_employee(employee) 
        @employees << employee
    end
end

# Name	    Salary	    Title	    Boss
# Ned	    $1,000,000	Founder	    nil
# Darren	$78,000	    TA Manager	Ned
# Shawna	$12,000	    TA	        Darren
# David	    $10,000	    TA	        Darren

david = Employee.new("David", "TA", 10000, "Darren")
shawna = Employee.new("Shawna", "TA", 12000, "Darren")

darren = Manager.new("Darren", "TA Manager", 78000, "Ned")
darren.add_employee(david)
darren.add_employee(shawna)
ned = Manager.new("Ned", "Founder", 1000000, nil)
ned.add_employee(darren)

p ned.bonus(5) # => 500_000
p darren.bonus(4) # => 88_000
# p darren.bonus(5) # 48000
# p david.bonus(4) # 40000
p david.bonus(3) # => 30_000