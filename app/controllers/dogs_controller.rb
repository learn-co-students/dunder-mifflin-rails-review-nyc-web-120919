class DogsController < ApplicationController
    def show
        @dog = Dog.find(params[:id])
        @employees = @dog.employees
    end

    def index
        sort = params[:sort]
        if(!sort)
            @dogs = Dog.all
        else
            dogs = Employee.group("dog_id").order("count_id desc").count("id")
            @dogs = []
            dogs.each{|key, value| @dogs.push(Dog.find(key))}
        end
    end
end
