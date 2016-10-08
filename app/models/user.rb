class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  belongs_to :role
  before_create :set_default_role
  
  #Se quiser alterar o campo de visualização pode se usar o comando
  #config.label_methods.unshift(:display_name)
  #em seguida criar a função com o nome sugerido
  def name
    "#{self.email}"
  end
  
  def issupplier
    true
  end
  
  private
  def set_default_role
    self.role ||= Role.find_by_name('supplier')
  end
  
  RailsAdmin.config do |config|
    config.model 'User' do
      list do
        field :id
        field :email
        field :role
      end
      edit do
        field :email
        field :password
        field :password_confirmation
        field :role
      end
    end
  end
  
end
