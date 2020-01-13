class Dog < ApplicationRecord
    has_many :employees

    def employee_names
        emp_arr = self.employees
        new_arr = emp_arr.map do |employee|
            employee.first_name + " " + employee.last_name
        end
        new_arr
    end

    def owner_count
        self.employees.length
    end
end
