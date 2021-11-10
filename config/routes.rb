Rails.application.routes.draw do
  scope '(:locale)', locale: /en|ru/ do
    devise_for :users

    resources :posts
    resources :blogs, only: [:index, :show]

    root to: 'posts#index'
  end
end
