Nedjer::Application.routes.draw do
  # get "/users/:id", to: 'users#show', as: 'show_user'
  # get '/login', :to => 'sessions#new'
  post '/login', :to => 'sessions#create', as: 'login'
  delete '/logout', :to => 'sessions#destroy', :via => :delete

  resources :users
  # delete 'users/:id', :to => 'users#destroy', as: 'destroy_user'

  resources :posts
  get '/posts', :to => 'posts#index', as: 'all_posts'
  get '/posts/new', :to => 'posts#new', as: 'post_form'
  post '/posts', :to => 'posts#create', as: 'new_post'
  get '/posts/:id', :to => 'posts#show', as: 'show_post'

  get '/comments/new', :to => 'comments#new', as: 'comment_form'
  post '/comments', :to => 'comments#create', as: 'new_comment'

  # resources :posts
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
    root :to => 'posts#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
