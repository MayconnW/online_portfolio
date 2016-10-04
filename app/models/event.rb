class Event < ActiveRecord::Base
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
    config.model 'Event' do
      list do
        sort_by :id
        items_per_page 20
        field :id do
          column_width 40
          sort_reverse false
        end
        field :name do
          column_width 140
        end
        field :event_url do
          column_width 200
        end
        field :brief do
          column_width 90
        end
        field :case do
          column_width 90
        end
        field :perfil do
          column_width 90
        end
        field :unify do
          column_width 90
        end
      end
    end
  end
    
end
