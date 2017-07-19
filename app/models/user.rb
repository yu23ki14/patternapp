class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, 
         :confirmable, :authentication_keys => [:login]

  validates :username,
    uniqueness: { case_sensitive: :false },
    length: { minimum: 4, maximum: 20 }
    
  attr_accessor :login
  
  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions).where(["username = :value OR lower(email) = lower(:value)", { :value => login }]).first
    else
      where(conditions).first
    end
  end
  
  
  #ログイン以外の機能開始
  
  has_many :questions, dependent: :destroy
  has_many :objectives, dependent: :destroy
end
