class ClassSurvey < ApplicationRecord
    validates :difficulty, presence: true
    #validates :date, presence: {message:"is missing"}
    #use snake case, this is a many to one method
    belongs_to :lesson
end
