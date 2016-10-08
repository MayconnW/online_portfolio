class Company < ActiveRecord::Base
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
end