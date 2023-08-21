class User < ApplicationRecord
  # include ActiveModel::Model
  # include ActiveModel::Validations
  include ActiveModel::SecurePassword
  # include ActiveModel::Dirty
  # extend ActiveModel::Naming
  extend ActiveModel::Translation
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_secure_password
  has_secure_password :recovery_password, validations: false

  attr_accessor :password_digest, :recovery_password_digest
  attr_accessor :name, :token
  
  # validates :name, presence: true
  # validates_format_of :email, with: /\A([^\s]+)((?:[-a-z0-9]\.)[a-z]{2,})\z/i
  # validates! :token, presence: true

end
