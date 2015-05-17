class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :email, :password, presence: true
  
  def full_name
    "#{first_name} #{last_name}"
    [first_name, last_name].join(" ")
  end
  
end
