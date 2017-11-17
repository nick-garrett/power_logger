Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :devices, :except => :destroy do
    resources :readings
  end

  get '/devices/:id/state', :to => 'devices#state';
  post '/devices/:id/state/toggle', :to => 'devices#toggle_state';

  root :to => redirect('/devices/1')
end
