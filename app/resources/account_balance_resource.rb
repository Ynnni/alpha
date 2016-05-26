class AccountBalanceResource < JSONAPI::Resource
  attributes :balance

  has_one :account
  has_one :currency
end
