class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  belongs_to :role
  before_create :set_default_role
  
  private
  def set_default_role
    self.role ||= Role.find_by_name('supplier')
  end
  
  RailsAdmin.config do |config|
    config.model 'User' do
      edit do
        field :email
        field :password
        field :password_confirmation
        field :role
      end
    end
  end
  
end
