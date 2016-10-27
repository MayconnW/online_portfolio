class Idiom < ActiveRecord::Base
  belongs_to :user
  
  RailsAdmin.config do |config|
    config.model 'Idiom' do
      list do
        field :id
        field :user
        field :title
        field :level
      end
    end
  end
  
end
