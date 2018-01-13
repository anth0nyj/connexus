Rails.application.routes.draw do
  resources :ledgers
  resources :users do
    collection do
      post '/login', to: 'users#login'
    end
  end
  resources :communities, except: [:destroy] do
    resources :posts
  end
  resources :posts do
    resources :replies, except: [:show, :index]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
