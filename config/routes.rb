Rails.application.routes.draw do
  root 'welcome#index'
  resources :notices
  resources :ledgers
  resources :users do
    collection do
      post '/login', to: 'users#login'
      post '/create', to: 'users#create'
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
