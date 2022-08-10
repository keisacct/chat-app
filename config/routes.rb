Rails.application.routes.draw do
  devise_for :users
  root to: "rooms#index" # ルートパスへのアクセスがあれば、messages_controllerのindexアクションが呼び出される
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create, :destroy] do
    resources :messages, only: [:index, :create]
  end
end
