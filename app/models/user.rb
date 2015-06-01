class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :email, presence: true
  validates :password, presence: true, if: Proc.new { |u| u.id.blank? }
  
  has_and_belongs_to_many :tickets
  has_and_belongs_to_many :member_projects, :class_name =>"Project", :foreign_key =>"member_id", :association_foreign_key => "member_project_id"
  
  include DeviseInvitable::Inviter
  
  def edit
    if User.exists?
      @user = User.find(params[:id])
    else
      redirect_to new_user_registration_path
    end
  end
  
  def full_name
    "#{first_name} #{last_name}"
    [first_name, last_name].join(" ")
  end
  
end
