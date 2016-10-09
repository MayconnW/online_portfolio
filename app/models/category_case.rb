class CategoryCase < ActiveRecord::Base
  RailsAdmin.config do |config|
    config.model 'CategoryCase' do
      config.label_methods.unshift(:description)
    end
  end
end
