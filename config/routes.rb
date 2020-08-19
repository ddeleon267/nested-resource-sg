



Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :authors, only: [:index, :new, :create, :show] do
      resources :books, only: [:new, :create] do
          resources :reviews, only: [:new, :create]
      end
  end

  #resources :books, only: :index

end


