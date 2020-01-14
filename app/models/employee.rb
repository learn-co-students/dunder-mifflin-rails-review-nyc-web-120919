class Employee < ApplicationRecord
    belongs_to :dog
    #validates :alias, uniqueness: true
    validates :title, uniqueness: true

    #validating the alias like this seems problematic as it doesn't let the alias be 'none'
    #several employees in the seed data share the alias "none"
    validates :alias, uniqueness: true


    def full_name
        "#{self.first_name} #{self.last_name}"
    end 

end
