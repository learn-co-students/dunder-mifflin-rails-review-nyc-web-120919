class EmployeesController < ApplicationController

    def greeting
    end 
    
    def index  
        @employees = Employee.all
    end 

    def show
        @employee = Employee.find(params[:id])
    end 

    def new
        @employee = Employee.new
        @dogs = Dog.all
    end 

    def create
        @dogs = Dog.all
        @employee = Employee.create(employee_params) 
        if @employee.id != nil 
            
            redirect_to employees_path(@employee)
        else 
            render :new            
        end 
       
    end 

    def edit
        @employee = Employee.find(params[:id])
        @dogs = Dog.all
    end 

    def update
        
        @employee = Employee.find(params[:id])
        @employee.update(employee_params)
        redirect_to employee_path(@employee)
    end 

    private

    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :dog_id, :img_url)
    end 

end
