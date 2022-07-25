Rails.application.routes.draw do
  get '/department', to: 'departments#index'

  get '/employees/:id', to: 'employees#show'
end
