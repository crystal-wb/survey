class LessonsController < ApplicationController
    def index
        @lesson=Lesson.all
    end
    
    def new
    @lesson=Lesson.new
    end

 def create
    @lesson=Lesson.new(params.require('lesson').permit(:date, :video_url, :notes))
    if @lesson.save
        redirect_to "/lessons"
    else
        render action: :new
    end
    
    def survey_results
        @lesson=Lesson.find(params[:lesson_id])
    end
    
 end
end
