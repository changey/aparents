class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation
  has_secure_password
  
  before_save :create_remember_token
  
  private

  #the method to create a unique token to be remembered for users to see his/her account without log in every time
  def create_remember_token
    self.remember_token = SecureRandom.urlsafe_base64
  end
end
