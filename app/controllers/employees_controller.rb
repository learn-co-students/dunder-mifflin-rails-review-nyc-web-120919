class EmployeesController < ApplicationController
    def index 
        @employees = Employee.all
    end 

    def show 
        @employee = Employee.find(params[:id])
    end 

    def new
        @dog = Dog.all
        @employee = Employee.new
    end 

    def create
        Employee.create(employee_params)
        redirect_to '/employees'
    end 

    def edit 
        @dog = Dog.all
        @employee = Employee.find(params[:id])
    end 
    
    def update 
        @employee = Employee.find(params[:id])
        @employee.update(employee_params) ###update expects strong params (employee_params)
        redirect_to '/employees'
    end 

    def destroy
        @employee = Employee.find(params[:id])
        @employee.delete 
        redirect_to '/employees'
    end   


    private 
    def employee_params 
        params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id)
    end 

end
