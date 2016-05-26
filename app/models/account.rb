class Account < ApplicationRecord
  has_many :account_balances
  has_many :currencies, through: :account_balances

  validates :name, presence: true
end
