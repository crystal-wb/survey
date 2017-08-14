class Lesson < ApplicationRecord
    validates :date, presence: true
    #have to pluralize and use snake case
    has_many :class_surveys
end
