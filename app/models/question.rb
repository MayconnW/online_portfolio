class Question < ActiveRecord::Base
  has_many :answers
  
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
        field :answers
      end
    end
  end
  
end
