Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :devices, :except => :destroy

  root :to => redirect('/devices')
end
