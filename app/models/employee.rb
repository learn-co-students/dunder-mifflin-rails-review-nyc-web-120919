class Employee < ApplicationRecord
    belongs_to :dog
    def to_s
        self.first_name + " " + self.last_name
    end

    def dog_names    
        Dog.all.each do |dog|
            if dog.id == @employee.dog_id 
                dog.name 
            end
        end
    end
end
