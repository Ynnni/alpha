class CurrencyResource < JSONAPI::Resource
  attributes :name, :code

  has_many :account_balances
end
