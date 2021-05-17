Rails.application.routes.draw do
  root "message#index"
  #get 'message/index'
  post 'message/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
