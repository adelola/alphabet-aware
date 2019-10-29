class ClassroomsController < ApplicationController
    def create
      current_user.classrooms.create(classroom_params)
      redirect_to root_path
    end
    
    private
  
    def classroom_params
      params.require(:user).permit(:name)
    end
   
  end