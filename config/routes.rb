RailsProject::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config

  root :to => 'store#index', :via => :get
  match 'book/:id' => 'store#book', :as => :store_book, :via => :get
  match 'genre/:genre_id' => 'store#genre', :as => :store_genre, :via => :get

  match 'search' => 'store#search', :as => 'search', :via => :get
  match 'search' => 'store#search_results', :as => 'search_results', :via => :post

  match 'buy/:id' => 'store#buy', :as => 'buy', :via => :get
  
  ActiveAdmin.routes(self)

  resources :books do
    collection do
      get :empty_cart
    end
    member do
      get :add_cart
      get :remove_cart
    end
  end

  resources :genres

  

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
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'

end
