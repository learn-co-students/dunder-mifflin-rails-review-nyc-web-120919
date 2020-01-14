class Employee < ApplicationRecord
    belongs_to :dog

    validates_uniqueness_of :alias, allow_blank: true, allow_nil: true
    validates_uniqueness_of :title, allow_blank: true, allow_nil: true

    def name
        first_name + " " + last_name
    end
end