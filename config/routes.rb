Rails.application.routes.draw do
  root   "home#index"

  # post routes
  get    "/posts"          , to: "posts#index",   as: :posts
  post   "/posts"          , to: "posts#create"
  get    "/posts/new"      , to: "posts#new",     as: :new_post
  get    "/posts/:id"      , to: "posts#show",    as: :post
  patch  "/posts/:id"      , to: "posts#update"
  delete "/posts/:id"      , to: "posts#destroy"
  get    "/posts/:id/edit" , to: "posts#edit",    as: :edit_post

  # activity routes
  get    "activities",          to: "activities#index",   as: :activities
  get    "activity/new",        to: "activities#new",     as: :new_activity
  post   "activity",            to: "activities#create",  as: :create_activity
  get    "activity/:id",        to: "activities#show",    as: :show_activity
  get    "activity/:id/edit",   to: "activities#edit",    as: :edit_activity
  patch  "activity/:id/update", to: "activities#update",  as: :update_activity
  delete "activity/:id/delete", to: "activities#delete",  as: :delete_activity

  # oauth route
  get "/auth/:provider/callback", to: "sessions#create", as: :login

  # user routes
  # get    "/users"          , to: "users#index",     as: :users
  post   "/users"          , to: "users#create",    as: :users
  get    "/users/new"      , to: "users#new",       as: :new_user
  get    "/users/:id"      , to: "users#show",      as: :user
  patch  "/users/:id"      , to: "users#update"
  delete "/users/:id"      , to: "users#destroy"
  get    "/users/:id/edit" , to: "users#edit",      as: :edit_user
  get    "/new/:id",         to: "users#more_info", as: :moar_login
  post   "/new/:id",         to: "users#update"
  patch  "/new/:id",         to: "users#update"

  #tool routes
  get    "/tools"          , to: "tools#index",     as: :tools
  post   "/tools"          , to: "tools#create"
  get    "/tools/new"      , to: "tools#new",       as: :new_tool
  get    "/tools/:id"      , to: "tools#show",      as: :tool
  patch  "/tools/:id"      , to: "tools#update"
  delete "/tools/:id"      , to: "tools#destroy"
  get    "/tools/:id/edit" , to: "tools#edit",      as: :edit_tool
  post   "toolshed/:user_id/:tool_id", to: "tool_sheds#new", as: :tool_shed

  # tool shed routes
  post   "toolshed/new"    , to: "tool_sheds#new",    as: :new_toolshed
  post   "toolshed/create" , to: "tool_sheds#create", as: :create_toolshed

  # session route
  get    "/signout", to: "sessions#logout", as: :logout



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
