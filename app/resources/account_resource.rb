class AccountResource < JSONAPI::Resource
  attributes :name

  has_many :account_balances
end
