class Skill < ActiveRecord::Base
  belongs_to :user
  
  RailsAdmin.config do |config|
    config.model 'Skill' do
      list do
        field :id
        field :user
        field :title
        field :level
      end
    end
  end
  
end
