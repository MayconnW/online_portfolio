class UserDefaultController < ApplicationController
  before_filter :authenticate_user!
  before_filter do 
    redirect_to :root unless current_user && current_user.role.name == 'user'
  end
end
