class Testimonial < ActiveRecord::Base
  belongs_to :owner_user, :class_name => 'User', :foreign_key => 'owner_user_id'
  belongs_to :comment_user, :class_name => 'User', :foreign_key => 'comment_user_id'
  
  RailsAdmin.config do |config|
    config.model 'Testimonial' do
      list do
        field :owner_user
        field :comment_user
        field :description
      end
      edit do
        field :owner_user
        field :comment_user
        field :description
      end
    end
  end
  
end
