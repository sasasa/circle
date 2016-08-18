# == Route Map
#
#           Prefix Verb   URI Pattern                      Controller#Action
#      user_groups GET    /user_groups(.:format)           user_groups#index
#                  POST   /user_groups(.:format)           user_groups#create
#   new_user_group GET    /user_groups/new(.:format)       user_groups#new
#  edit_user_group GET    /user_groups/:id/edit(.:format)  user_groups#edit
#       user_group GET    /user_groups/:id(.:format)       user_groups#show
#                  PATCH  /user_groups/:id(.:format)       user_groups#update
#                  PUT    /user_groups/:id(.:format)       user_groups#update
#                  DELETE /user_groups/:id(.:format)       user_groups#destroy
#     user_lessons GET    /user_lessons(.:format)          user_lessons#index
#                  POST   /user_lessons(.:format)          user_lessons#create
#  new_user_lesson GET    /user_lessons/new(.:format)      user_lessons#new
# edit_user_lesson GET    /user_lessons/:id/edit(.:format) user_lessons#edit
#      user_lesson GET    /user_lessons/:id(.:format)      user_lessons#show
#                  PATCH  /user_lessons/:id(.:format)      user_lessons#update
#                  PUT    /user_lessons/:id(.:format)      user_lessons#update
#                  DELETE /user_lessons/:id(.:format)      user_lessons#destroy
#          lessons GET    /lessons(.:format)               lessons#index
#                  POST   /lessons(.:format)               lessons#create
#       new_lesson GET    /lessons/new(.:format)           lessons#new
#      edit_lesson GET    /lessons/:id/edit(.:format)      lessons#edit
#           lesson GET    /lessons/:id(.:format)           lessons#show
#                  PATCH  /lessons/:id(.:format)           lessons#update
#                  PUT    /lessons/:id(.:format)           lessons#update
#                  DELETE /lessons/:id(.:format)           lessons#destroy
#          schools GET    /schools(.:format)               schools#index
#                  POST   /schools(.:format)               schools#create
#       new_school GET    /schools/new(.:format)           schools#new
#      edit_school GET    /schools/:id/edit(.:format)      schools#edit
#           school GET    /schools/:id(.:format)           schools#show
#                  PATCH  /schools/:id(.:format)           schools#update
#                  PUT    /schools/:id(.:format)           schools#update
#                  DELETE /schools/:id(.:format)           schools#destroy
#           groups GET    /groups(.:format)                groups#index
#                  POST   /groups(.:format)                groups#create
#        new_group GET    /groups/new(.:format)            groups#new
#       edit_group GET    /groups/:id/edit(.:format)       groups#edit
#            group GET    /groups/:id(.:format)            groups#show
#                  PATCH  /groups/:id(.:format)            groups#update
#                  PUT    /groups/:id(.:format)            groups#update
#                  DELETE /groups/:id(.:format)            groups#destroy
#            users GET    /users(.:format)                 users#index
#                  POST   /users(.:format)                 users#create
#         new_user GET    /users/new(.:format)             users#new
#        edit_user GET    /users/:id/edit(.:format)        users#edit
#             user GET    /users/:id(.:format)             users#show
#                  PATCH  /users/:id(.:format)             users#update
#                  PUT    /users/:id(.:format)             users#update
#                  DELETE /users/:id(.:format)             users#destroy
#             root GET    /                                users#index
#

Rails.application.routes.draw do
  resources :user_groups
  resources :user_lessons
  resources :lessons
  resources :schools
  resources :groups
  resources :users
  root :to => 'users#index' # デフォルトでusersコントローラーを呼び出すように変更
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
