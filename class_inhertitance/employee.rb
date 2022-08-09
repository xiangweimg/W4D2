class Employee
attr_reader :salary, :employees
    def initialize(name, title, salary, boss)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
        @employees = nil
    end

    def bonus(multiplier)
        bonus = @salary * multiplier
    end

end