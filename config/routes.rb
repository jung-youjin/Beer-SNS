Rails.application.routes.draw do
  resources :breweryposts
  devise_for :users
  resources :posts
  
  root 'posts#index'

  post 'post/:post_id/like' => 'posts#like_toggle'
  get 'users/sign_out'
  
  get 'index' => 'posts#index'
  get 'mypage' => 'posts#mypage'
  get 'beertap' => 'posts#beertap'
  get 'beer' => 'posts#beer'
  get 'brewery' => 'breweryposts#index'
  get 'mywriting' => 'posts#mywriting'
  get 'community' => 'posts#community'
  
  get 'posts/mypage/index' => 'posts#index'
  get 'posts/mypage/beertap' => 'posts#beertap'
  get 'posts/mypage/community' => 'posts#community'
  get 'posts/mypage/brewery' => 'breweryposts#index'
  
  get 'users/index' => 'posts#index'
  get 'users/mypage' => 'posts#mypage'
  get 'users/beertap' => 'posts#beertap'
  get 'users/beer' => 'posts#beer'
  get 'users/brewery' => 'breweryposts#index'
  get 'users/mywriting' => 'posts#mywriting'
  get 'users/community' => 'posts#community'
  
  get "/users/password/index" => 'posts#index'
  get "/users/password/beer" => 'posts#beer'
  
  get 'users/show/index' => 'posts#index'
  get 'users/show/beertap' => 'posts#beertap'
  
  post 'posts/search' => 'posts#search', as: 'search_post'
  
  get 'breweryposts/new/:lat/:lng' => 'breweryposts#new'#, as: 'new_brewerypost'
  
  get 'breweryposts_ajax/:brewerypost_id' => 'breweryposts#ajaxIndex'

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
