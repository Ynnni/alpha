class AccountBalance < ApplicationRecord
  belongs_to :account, required: true
  belongs_to :currency, required: true

  validates :balance, presence: true

  before_create :assign_balance

  def assign_balance
    self.balance = 0
  end
end
