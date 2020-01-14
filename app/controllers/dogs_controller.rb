class DogsController < ApplicationController

    def index
        @dogs = Dog.all 
    end 

    #this should list all dogs in order of how many employees they're connected with.
    def popular
        @dogs = Dog.all
    end 

    def show
        @dog = Dog.find(params[:id])    
        @employees = Employee.where(dog: @dog)
    end 
 

end
