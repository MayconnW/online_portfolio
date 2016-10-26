class Work < ActiveRecord::Base
  belongs_to :user
  
  RailsAdmin.config do |config|
    config.model 'Work' do
      list do
        field :id
        field :user
        field :company
        field :link
        field :role
      end
      edit do
        field :user
        field :company
        field :link
        field :role
        field :begin_date
        field :end_date
        field :actual
        field :description, :rich_editor do
          config({
            :insert_many => true
          })
        end
      end
    end
  end
  
end
