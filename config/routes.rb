Rails.application.routes.draw do 
  get 'faces/destroy'

  get 'welcome/index'
  post 'telefones_new/:id' => 'cards#new_number_but'
  post 'deals_new/:id' => 'cards#new_deal_but'
  post 'faces_new/:id' => 'cards#new_face_but'
  post 'event_types_new/:id' => 'deals#new_event_type_but'
  post 'events_new/:id' => 'deals#new_event_but'
  #resources :cards
  devise_for :users
  resources :cards do
  collection { post :import }
  end
  resources :telefones
  resources :deals
  resources :faces
  resources :events
  #delete 'telefones/:id' =>'cards#destroy_tel'

   #devise_for :users, controllers: { sessions: "users/sessions" }
  # devise_for :users, controllers: { sessions: "users/sessions" }
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

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
