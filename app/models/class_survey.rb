class ClassSurvey < ApplicationRecord
    validates :difficulty, presence: true
    validates :date, presence: {message:"is missing"}
end
