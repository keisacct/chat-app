Rails.application.routes.draw do
  get 'messages/index'
  root to: "messages#index" # ルートパスへのアクセスがあれば、messages_controllerのindexアクションが呼び出される
end
