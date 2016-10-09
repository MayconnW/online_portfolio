class Case < ActiveRecord::Base
  belongs_to :category_case
  belongs_to :supplier
  
  has_attached_file :picture,
    :styles => {
      :thumb => "100x100#",
      :small  => "150x150>",
      :medium => "200x200" 
    }
  validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/
  # add a delete_<asset_name> method: 
  attr_accessor :delete_picture
  before_validation { self.picture.clear if self.delete_picture == '1' }
  
  RailsAdmin.config do |config|
    config.model 'Case' do
      config.label_methods.unshift(:display_name)
      list do
        exclude_fields :picture, :email, :created_at, :updated_at
      end
    end
  end
  
end
