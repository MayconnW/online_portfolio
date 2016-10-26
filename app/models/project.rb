class Project < ActiveRecord::Base
  belongs_to :user
  
  has_attached_file :logo,
    :styles => {
      :thumb => "100x100#",
      :small  => "150x150>",
      :medium => "200x200" 
    }
  validates_attachment_content_type :logo, :content_type => /\Aimage\/.*\Z/
  # add a delete_<asset_name> method: 
  attr_accessor :delete_logo
  before_validation { self.logo.clear if self.delete_logo == '1' }
  
  RailsAdmin.config do |config|
    config.model 'Project' do
      list do
        field :id
        field :title
        field :head
        field :order
        field :link_app
        field :link_github
      end
      edit do
        field :user
        field :title
        field :head
        field :order
        field :open_source
        field :description, :rich_editor do
          config({
            :insert_many => true
          })
        end
        field :logo
        field :link_app
        field :link_github
        field :highlight
      end
    end
  end
  
end
