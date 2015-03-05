Rails.application.routes.draw do
  
  match '/home', to: 'static_pages#home',  via: 'get'
  match '/help',	to: 'static_pages#help',  via: 'get'
  match '/about',   to: 'static_pages#about',  via: 'get'
  match '/contact', to: 'static_pages#contact',  via: 'get'

  root :to => 'static_pages#home'

  resources :user_sessions
  resources :users

  get 'login' => 'user_sessions#new', :as => :login
  get 'logout' => 'user_sessions#destroy', :as => :logout


  resources :tipo_docs

  resources :modulos do
    resources :maquinas
  end  
 
  resources :modulos do
    resources :groups 
  end
  
  resources :maquinas do
    resources :operations
  end
  
  
  resources :modulos do
    resources :operations
  end
  
  resources :modulos do
    resources :instructors
  end
  
  resources :groups do
    resources :opers
  end
  
  resources :fichas do
    resources :infos
  end
  
  resources :fichas do
    resources :infos
  end
  
  resources :infos do
    resources :measures
  end
  
  resources :infos do
    resources :materials
  end
  
  
  resources :infos do
    resources :prendas
  end
  
  resources :infos do
    resources :developments
  end
  
  resources :infos do
    resources :ensambles 
  end
  
  resources :infos do
    resources :terminations
  end
  
  resources :opers do
    resources :nivelations
  end
  
  resources :fichas do
    resources :costs
  end
  
  resources :infos do
    resources :treatments
  end
  

  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  #root 'modulos#index'

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
