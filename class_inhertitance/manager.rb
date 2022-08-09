require "employee.rb"
class Manager < Employee
    def initialize(name,title,salary,boss)
        super
        @employees = []
    end

    def bonus(multiplier)
        total_salary = 0
        @employees.each do |employee|
            total_salary += employee.super(multiplier)
        end
        total_salary * multiplier
    end
    
end