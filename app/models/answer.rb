class Answer < ActiveRecord::Base
  RailsAdmin.config.excluded_models << "Answer"
  RailsAdmin.config.excluded_models << "Answers"
  belongs_to :question
end
