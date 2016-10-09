class Supplier < ActiveRecord::Base
  belongs_to :user
  
  has_attached_file :logo,
    :styles => {
      :thumb => "100x100#",
      :small  => "150x150>",
      :medium => "200x200" 
  }
  has_attached_file :case,
    :styles => {
      :thumb => "100x100#",
      :small  => "150x150>",
      :medium => "200x200" 
  }
  
  has_attached_file :brief,
    :styles => {
      :thumb => "100x100#",
      :small  => "150x150>",
      :medium => "200x200" 
    }
    
  validates_attachment_content_type :logo, :content_type => /\Aimage\/.*\Z/
  validates_attachment_content_type :case, :content_type => /\Aimage\/.*\Z/
  validates_attachment_content_type :brief, :content_type => /\Aimage\/.*\Z/
  
  attr_accessor :delete_logo
  before_validation { self.logo.clear if self.delete_logo == '1' }
  attr_accessor :delete_case
  before_validation { self.case.clear if self.delete_case == '1' }
  attr_accessor :delete_brief
  before_validation { self.brief.clear if self.delete_brief == '1' }
  
   RailsAdmin.config do |config|
    config.label_methods.unshift(:display_name)
    config.model 'Supplier' do
      list do
        field :id
        field :user
      end
      edit do
        field :user do
          #exclude_fields_if do
          #  id == 1
          #end
        end
        field :playlist
        field :logo
        field :case
        field :brief
      end
    end
  end
  
  def display_name
    if self.user != nil
      "#{self.user.name}"
    end
  end
  
end
