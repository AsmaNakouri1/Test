Rails.application.routes.draw do

  root to:'pages#home'
  get '/impoter', to: 'pages#impoter'
  resources :shops do
    collection {post :import}



  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
