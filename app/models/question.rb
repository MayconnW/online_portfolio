class Question < ActiveRecord::Base
  has_many :answers
  RailsAdmin.config.excluded_models << "Answer"
  
  RailsAdmin.config do |config|
    config.model 'Question' do
      list do
        field :id
        field :description
        field :hide
      end
      edit do
        field :id
        field :description
        field :hide
        field :answer
      end
    end
  end
  
end
