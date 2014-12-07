Rails.application.routes.draw do

  root   "home#index"

  get    "/posts"          , to: "posts#index",   as: :posts
  post   "/posts"          , to: "posts#create"
  get    "/posts/new"      , to: "posts#new",     as: :new_post
  get    "/posts/:id"      , to: "posts#show",    as: :post
  patch  "/posts/:id"      , to: "posts#update"
  delete "/posts/:id"      , to: "posts#destroy"
  get    "/posts/:id/edit" , to: "posts#edit",    as: :edit_post

  # activity routes
  get    "activities",        to: "activities#index",   as: :activities
  get    "activity/new",      to: "activities#new",     as: :new_activity
  post   "activity",          to: "activities#create",  as: :create_activity
  get    "activity/:id.json", to: "activities#show",    as: :show_activity
  get    "activity/:id",      to: "activities#edit",    as: :edit_activity
  patch  "activity/:id",      to: "activities#update",  as: :update_activity
  delete "activity/:id",      to: "activities#delete",  as: :delete_activity

  get "/auth/:provider/callback", to: "sessions#create", as: :login

  get "/:id/new", to: "users#more_info", as: :moar_login
  post "/:id/new", to: "users#new"
  patch "/:id/new", to: "users#new"

  get "/signout", to: "sessions#logout", as: :logout

  get "/blah", to: "home#test"


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
