class StudentsController < ApplicationController
    def create
      classroom = Classroom.find_by(classroom_params)
      student = classroom.students.create(student_params)
      redirect_to root_path, redirect_options_for(student)
    end
    
    private
  
    def student_params
      params.require(:user).permit(:name)
    end

    def redirect_options_for(student)
      if student.persisted?
        { notice: "Student successfully created" }
      else
        { alert: "Student not created. Name must be 2 to 140 characters" }
      end
    end
   
  end