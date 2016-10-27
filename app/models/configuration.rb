class Configuration < ActiveRecord::Base
  belongs_to :user
  
  RailsAdmin.config do |config|
    config.model 'Configuration' do
      visible false
    end
  end
  
end
