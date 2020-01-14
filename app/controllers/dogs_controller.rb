class DogsController < ApplicationController
    def index
        @dogs = Dog.all
    end
    
    def show 
        @dog = Dog.find(params[:id])
        # @employees = @dog.employees
    end

    def sort
        @employee = Employee.all
        @dog_array = []
        @employee.each do |employee|

        @dog_array << employee.dog_id
        end
        @dog_counts = Hash.new(0)
        @dog_array.each do |dog|
            @dog_counts[dog] += 1
        end
        @dogs_list = @dog_counts.sort_by{|id, count| count}.reverse
        @sorted_dog_list = @dogs_list.map do |dog|
        Dog.find(dog[0]).name
        end
        @sorted_dog_list

    end

end
