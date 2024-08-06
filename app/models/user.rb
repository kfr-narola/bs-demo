class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :validatable
  has_many :company_users
  has_many :companies, through: :company_users
  has_one_attached :avatar

  def full_name
    "#{first_name} #{last_name}"
  end
end
