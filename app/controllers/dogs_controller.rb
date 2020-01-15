class DogsController < ApplicationController
    def index
        @dogs = Dog.all 
    end

    def show
        @dog = Dog.find(params[:id])
        @employees = Employee.all
    end

    def new
        @dog = Dog.new 
    end

    def create
        @dog = Dog.new(dog_params(:name, :breed, :age))
        @dog.save
        redirect_to dog_path(@dog)
    end

    def edit
        @dog = Dog.find(params[:id])
    end

    def update
        @dog = Dog.find(params[:id])
        @dog.update(dog_params(:name, :breed, :age))
        redirect_to dog_path(@dog)
    end
    
    def destroy
        @dog = Dog.find(params[:id])
        @dog.destroy 
        redirect_to employees_path
    end

    private

    def dog_params(*args)
        params.require(:dog).permit(*args)
    end
end
