class Dog < ApplicationRecord
    has_many :employees

    def dog_names    
        Dog.all.each do |dog|
            if dog.id == @employee.dog_id 
                dog.name 
            end
        end
    end
    


end
