class ClassroomsController < ApplicationController
    def create
      classroom = current_user.classrooms.create(classroom_params)
      redirect_to root_path, redirect_options_for(classroom)
    end
    
    private
  
    def classroom_params
      params.require(:user).permit(:name)
    end

    def redirect_options_for(classroom)
      if classroom.persisted?
        { notice: "Classroom successfully created" }
      else
        { alert: "Classroom not created. Name must be 2 to 140 characters" }
      end
    end
   
  end