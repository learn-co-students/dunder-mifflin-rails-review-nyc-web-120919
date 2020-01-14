class Dog < ApplicationRecord
    has_many :employees

    #re-orders Dog.all by number of employee connections
    def self.sorted_by_num_of_employees
        Dog.all.sort_by {|dog| dog.employees.count}.reverse
    end 
end
