class Answer < ActiveRecord::Base
  #RailsAdmin.config.excluded_models << "Answer"
  #RailsAdmin.config.excluded_models << "Answers"
  belongs_to :question
  
  RailsAdmin.config do |config|
    config.model 'Answer' do
      visible false
    end
  end
  
end
