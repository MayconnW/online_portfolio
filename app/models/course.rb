class Course < ActiveRecord::Base
  belongs_to :user
  
  RailsAdmin.config do |config|
    config.model 'Course' do
      list do
        field :id
        field :user
        field :name
        field :institute
        field :begin_date
        field :end_date
      end
    end
  end
  
end
