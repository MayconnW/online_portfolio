class Question < ActiveRecord::Base
  has_many :answers
  RailsAdmin.config.excluded_models << "Answer"
  
end
