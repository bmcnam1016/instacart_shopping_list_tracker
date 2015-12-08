Rails.application.routes.draw do
  root "food_items#index"

  # Routes for the Food_category resource:
  # CREATE
  get "/food_categories/new", :controller => "food_categories", :action => "new"
  post "/create_food_category", :controller => "food_categories", :action => "create"

  # READ
  get "/food_categories", :controller => "food_categories", :action => "index"
  get "/food_categories/:id", :controller => "food_categories", :action => "show"

  # UPDATE
  get "/food_categories/:id/edit", :controller => "food_categories", :action => "edit"
  post "/update_food_category/:id", :controller => "food_categories", :action => "update"

  # DELETE
  get "/delete_food_category/:id", :controller => "food_categories", :action => "destroy"
  #------------------------------

  # Routes for the Food_item resource:
  # CREATE
  get "/food_items/new", :controller => "food_items", :action => "new"
  post "/create_food_item", :controller => "food_items", :action => "create"

  # READ
  get "/food_items", :controller => "food_items", :action => "index"
  get "/food_items/:id", :controller => "food_items", :action => "show"

  # UPDATE
  get "/food_items/:id/edit", :controller => "food_items", :action => "edit"
  post "/update_food_item/:id", :controller => "food_items", :action => "update"

  # DELETE
  get "/delete_food_item/:id", :controller => "food_items", :action => "destroy"
  #------------------------------

  devise_for :users
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
