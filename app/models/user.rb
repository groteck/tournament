class User < ActiveRecord::Base
  belongs_to :u_group
  has_many :accounts
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :username, :email, :password, :password_confirmation, :remember_me
  validates_uniqueness_of :username, :email
  validates_presence_of :username, :email, :password, :password_confirmation
end
