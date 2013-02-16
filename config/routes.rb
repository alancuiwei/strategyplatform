Ver01::Application.routes.draw do
  get "tradeinfo/todayinfo"

   resources :usercommodity_ts

  resources :noriskmessages

  resources :webuserstrategies

  get "strategy/index"

  get "strategy/performance"

  get "strategy/show"

  get "strategy/customization"

  get "contactus/intro"

  get "contactus/hire"

  get "admin" =>'admin#index'
  
  get "usermanagement" =>'usermanagement#index'
  
  controller :sessions do
	get 'login' => :new
	post 'login' => :create
	get 'logout' => :destroy
	delete 'logout' => :destroy
  end

  get "sessions/new"

  get "sessions/create"

  get "sessions/destroy"

#  get "strategy/rtprice" =>'strategy#rtprice'
#  get "strategywebs/strategyindex" =>'strategywebs#strategyindex'
#  get "strategywebs/strategyperformance" =>'strategywebs#strategyperformance'
#  get "strategywebs/strategyshow/:id" =>'strategywebs#strategyshow#:id'

  resources :webusers

  get "strconfig/index"

  resources :strategywebs
  get "home/index"
  
#  match 'strategywebs/rtprice' => 'strategywebs#_rtprice' 

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
   root :to => 'home#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
   match ':controller(/:action(/:id))(.:format)'
end
