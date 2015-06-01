class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :email, presence: true
  validates :password, presence: true, if: Proc.new { |u| u.id.blank? }
  
  def full_name
    "#{first_name} #{last_name}"
    [first_name, last_name].join(" ")
  end
  
end
