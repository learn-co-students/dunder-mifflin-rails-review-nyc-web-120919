class EmployeesController < ApplicationController
    def show
        @employee = Employee.find(params[:id])
    end

    def index
        @employees = Employee.all
    end

    def new
        @employee = Employee.new
        @dogs = Dog.all
    end

    def create
        @employee = Employee.new(employee_params)
        @dogs = Dog.all
        if(@employee.save)
            redirect_to employee_path(@employee.id)
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
        @dogs = Dog.all
        if(@employee.update(employee_params))
            redirect_to employee_path(@employee.id)
        else
            render :edit
        end
    end

    private
    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :alias, :office, :title, :dog_id, :img_url)
    end
end
