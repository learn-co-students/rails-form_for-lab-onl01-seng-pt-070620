class StudentsController < ApplicationController

    def new 
    end

    def index
        @students = Student.all
    end

    def show
        @student = Student.find(params[:id])
    end

    def create
        @student = Student.create(params.require(:student).permit(:first_name, :last_name))
        redirect_to student_path(@student)
    end

    def edit 
        @student = Student.find(params[:id])
    end
    
    def update
        @student = Student.update(params.require(:student).permit(:first_name, :last_name))
        redirect_to student_path(@student)
    end
    
end