# Rails.application.routes.draw do
#   
#   get 'store/index'
#   root 'store#index'
#   root 'controller#action'
#   resources :instruments
#   root "articles#index"
#   devise_for :users, controllers: {
#     registrations: 'registrations'
#   }
#   # root 'instruments# index'
#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# end
# Rails.application.routes.draw do
#   resources :instruments
#   devise_for :users,controllers:{
#   	registration:'registrations'
#   }
#   get 'store/index'
#   root 'store#index'
#   
#   root "articles#index"
#   root 'controller#action'
#   # resources :instruments
#   # resources :line_items

  


#   # resources :line_items
  
#   # 
# end
# Rails.application.routes.draw do
#   resources :instruments
#   devise_for :users, controllers: {
#     registration: 'registrations'
#   }
#   get 'store/index'
#   root 'store#index'
#   # root "articles#index"
#   # root 'instruments#index'
#   # root 'controller#action'

# end
Rails.application.routes.draw do
  resources :instruments
  devise_for :users, controllers: {
    registration: 'registrations'
  }
  get 'store/index'
  # root 'store#index'
  resources :line_items
  resources :carts
  resources :instruments

  root 'instruments#index'
  # root 'controller#action'
end



