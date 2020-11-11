Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:new, :create]
  end
end

# former routes before review form embedded in the estaurants/show.html.erb view.
# resources :restaurants, only: [:index, :show, :new, :create] do
#     resources :reviews, only: [:new, :create]
#   end
