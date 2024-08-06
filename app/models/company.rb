class Company < ApplicationRecord
  has_one_attached :logo
  has_many :company_users
  has_many :users, through: :company_users
end
