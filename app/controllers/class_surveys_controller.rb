class ClassSurveysController < ApplicationController
    before_action :authenticate_user!
    
    def new
      @survey=ClassSurvey.new
      @survey.lesson_id=params[:lesson_id]
    end
  
  def create
    @survey=ClassSurvey.new(params.require('class_survey').permit(:difficulty, :comments, :lesson_id))
    @survey.user_id=current_user.id
=begin
    survey.date=params['class_survey']['date']
    survey.difficulty=params['class_survey']['difficulty']
    survey.comments=params['class_survey']['comments']
=end
    if @survey.save
    else
        render action: :new
    end
    
  end
end
