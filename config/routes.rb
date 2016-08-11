Rails.application.routes.draw do
  resources :users
  root :to => 'users#index' # デフォルトでusersコントローラーを呼び出すように変更
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
