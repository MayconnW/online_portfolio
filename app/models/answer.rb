class Answer < ActiveRecord::Base
  RailsAdmin.config.excluded_models << "Answer"
  belongs_to :question
end
