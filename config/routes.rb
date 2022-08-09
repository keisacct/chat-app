Rails.application.routes.draw do
  devise_for :users
  get 'messages/index'
  root to: "messages#index" # ルートパスへのアクセスがあれば、messages_controllerのindexアクションが呼び出される
end
