class Currency < ApplicationRecord
  has_many :account_balances
  has_many :accounts, through: :account_balances

  validates :name, :code, presence: true
end
