class EmployeesController < ApplicationController
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
        @employee = Employee.create(employee_params)
        if @employee.valid?
            redirect_to employee_path(@employee)
        else
            flash[:message] = "Alias and title must be unique"
            redirect_to new_employee_path
        end
    end

    def edit
        @dogs = Dog.all
        @employee = Employee.find(params[:id])
    end

    def update
        @employee = Employee.find(params[:id])
        @employee.update(employee_params)
        @employee.save
        redirect_to employee_path(@employee)
    end

    private
    def employee_params
        params.require(:employee).permit(:id, :first_name, :last_name, :alias, :title, :office, :image_url, :dog_id)
    end
end
