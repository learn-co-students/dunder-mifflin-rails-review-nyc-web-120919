class EmployeesController < ApplicationController

    def index
        @employees = Employee.all 
    end

    def show
        @employee = Employee.find(params[:id])
        @dogs = Dog.all 
    end

    def new
        @employee = Employee.new 
        @dogs = Dog.all 
    end

    def create
        @employee = Employee.new(employee_params(:first_name, :last_name, :alias, :title, :office, :dog_id, :img_url))
        @employee.save
        redirect_to employee_path(@employee) 
    end

    def edit
        @employee = Employee.find(params[:id])
        @dogs = Dog.all 
    end

    def update
        @employee = Employee.find(params[:id])
        @employee.update(employee_params(:first_name, :last_name, :alias, :title, :office, :dog_id, :img_url))
        redirect_to employee_path(@employee)
    end
    
    def destroy
        @employee = Employee.find(params[:id])
        @employee.destroy 
        redirect_to employees_path
    end

    private

    def employee_params(*args)
        params.require(:employee).permit(*args)
    end



end
