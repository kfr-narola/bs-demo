class CompanyUser < ApplicationRecord
  belongs_to :user
  belongs_to :company
  enum :role, %i(user employee admin)
end
  