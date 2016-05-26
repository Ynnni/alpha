Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'

  jsonapi_resources :accounts
  jsonapi_resources :account_balances
  jsonapi_resources :currencies
end
