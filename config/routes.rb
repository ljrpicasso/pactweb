# == Route Map (Updated 2013-06-14 12:43)
#
#                     categories GET        /categories(.:format)                     categories#index
#                                POST       /categories(.:format)                     categories#create
#                   new_category GET        /categories/new(.:format)                 categories#new
#                  edit_category GET        /categories/:id/edit(.:format)            categories#edit
#                       category GET        /categories/:id(.:format)                 categories#show
#                                PUT        /categories/:id(.:format)                 categories#update
#                                DELETE     /categories/:id(.:format)                 categories#destroy
#             post_post_comments POST       /posts/:post_id/post_comments(.:format)   post_comments#create
#                          posts GET        /posts(.:format)                          posts#index
#                                POST       /posts(.:format)                          posts#create
#                       new_post GET        /posts/new(.:format)                      posts#new
#                      edit_post GET        /posts/:id/edit(.:format)                 posts#edit
#                           post GET        /posts/:id(.:format)                      posts#show
#                                PUT        /posts/:id(.:format)                      posts#update
#                                DELETE     /posts/:id(.:format)                      posts#destroy
#                           root            /                                         static_pages#home
#                           root            /                                         static_pages#home
#               new_user_session GET        /users/sign_in(.:format)                  devise/sessions#new
#                   user_session POST       /users/sign_in(.:format)                  devise/sessions#create
#           destroy_user_session DELETE     /users/sign_out(.:format)                 devise/sessions#destroy
#                  user_password POST       /users/password(.:format)                 devise/passwords#create
#              new_user_password GET        /users/password/new(.:format)             devise/passwords#new
#             edit_user_password GET        /users/password/edit(.:format)            devise/passwords#edit
#                                PUT        /users/password(.:format)                 devise/passwords#update
#       cancel_user_registration GET        /users/cancel(.:format)                   devise/registrations#cancel
#              user_registration POST       /users(.:format)                          devise/registrations#create
#          new_user_registration GET        /users/sign_up(.:format)                  devise/registrations#new
#         edit_user_registration GET        /users/edit(.:format)                     devise/registrations#edit
#                                PUT        /users(.:format)                          devise/registrations#update
#                                DELETE     /users(.:format)                          devise/registrations#destroy
#         new_admin_user_session GET        /admin/login(.:format)                    active_admin/devise/sessions#new
#             admin_user_session POST       /admin/login(.:format)                    active_admin/devise/sessions#create
#     destroy_admin_user_session DELETE|GET /admin/logout(.:format)                   active_admin/devise/sessions#destroy
#            admin_user_password POST       /admin/password(.:format)                 active_admin/devise/passwords#create
#        new_admin_user_password GET        /admin/password/new(.:format)             active_admin/devise/passwords#new
#       edit_admin_user_password GET        /admin/password/edit(.:format)            active_admin/devise/passwords#edit
#                                PUT        /admin/password(.:format)                 active_admin/devise/passwords#update
#                     admin_root            /admin(.:format)                          admin/dashboard#index
#                           root            /                                         dashboard#index
# batch_action_admin_admin_users POST       /admin/admin_users/batch_action(.:format) admin/admin_users#batch_action
#              admin_admin_users GET        /admin/admin_users(.:format)              admin/admin_users#index
#                                POST       /admin/admin_users(.:format)              admin/admin_users#create
#           new_admin_admin_user GET        /admin/admin_users/new(.:format)          admin/admin_users#new
#          edit_admin_admin_user GET        /admin/admin_users/:id/edit(.:format)     admin/admin_users#edit
#               admin_admin_user GET        /admin/admin_users/:id(.:format)          admin/admin_users#show
#                                PUT        /admin/admin_users/:id(.:format)          admin/admin_users#update
#                                DELETE     /admin/admin_users/:id(.:format)          admin/admin_users#destroy
#  batch_action_admin_categories POST       /admin/categories/batch_action(.:format)  admin/categories#batch_action
#               admin_categories GET        /admin/categories(.:format)               admin/categories#index
#                                POST       /admin/categories(.:format)               admin/categories#create
#             new_admin_category GET        /admin/categories/new(.:format)           admin/categories#new
#            edit_admin_category GET        /admin/categories/:id/edit(.:format)      admin/categories#edit
#                 admin_category GET        /admin/categories/:id(.:format)           admin/categories#show
#                                PUT        /admin/categories/:id(.:format)           admin/categories#update
#                                DELETE     /admin/categories/:id(.:format)           admin/categories#destroy
#                admin_dashboard            /admin/dashboard(.:format)                admin/dashboard#index
#       batch_action_admin_posts POST       /admin/posts/batch_action(.:format)       admin/posts#batch_action
#                    admin_posts GET        /admin/posts(.:format)                    admin/posts#index
#                                POST       /admin/posts(.:format)                    admin/posts#create
#                 new_admin_post GET        /admin/posts/new(.:format)                admin/posts#new
#                edit_admin_post GET        /admin/posts/:id/edit(.:format)           admin/posts#edit
#                     admin_post GET        /admin/posts/:id(.:format)                admin/posts#show
#                                PUT        /admin/posts/:id(.:format)                admin/posts#update
#                                DELETE     /admin/posts/:id(.:format)                admin/posts#destroy
#    batch_action_admin_comments POST       /admin/comments/batch_action(.:format)    admin/comments#batch_action
#                 admin_comments GET        /admin/comments(.:format)                 admin/comments#index
#                                POST       /admin/comments(.:format)                 admin/comments#create
#                  admin_comment GET        /admin/comments/:id(.:format)             admin/comments#show
#          batch_action_comments POST       /comments/batch_action(.:format)          comments#batch_action
#                       comments GET        /comments(.:format)                       comments#index
#                                POST       /comments(.:format)                       comments#create
#                        comment GET        /comments/:id(.:format)                   comments#show
#                          users GET        /users(.:format)                          users#index
#                                POST       /users(.:format)                          users#create
#                       new_user GET        /users/new(.:format)                      users#new
#                      edit_user GET        /users/:id/edit(.:format)                 users#edit
#                           user GET        /users/:id(.:format)                      users#show
#                                PUT        /users/:id(.:format)                      users#update
#                                DELETE     /users/:id(.:format)                      users#destroy
#                  notifications GET        /notifications(.:format)                  notifications#index
#                                POST       /notifications(.:format)                  notifications#create
#               new_notification GET        /notifications/new(.:format)              notifications#new
#              edit_notification GET        /notifications/:id/edit(.:format)         notifications#edit
#                   notification GET        /notifications/:id(.:format)              notifications#show
#                                PUT        /notifications/:id(.:format)              notifications#update
#                                DELETE     /notifications/:id(.:format)              notifications#destroy
#                          about            /about(.:format)                          static_pages#about
#                                           /404(.:format)                            errors#not_found
#                                           /500(.:format)                            errors#internal_error
#                                           /422(.:format)                            errors#unprocessable_entity
#

Pactweb::Application.routes.draw do
  
  match '/calendar(/:year(/:month))' => 'calendar#index', :as => :calendar, :constraints => {:year => /\d{4}/, :month => /\d{1,2}/}

  resources :categories
  resources :events

  resources :posts do
    resources :post_comments, :only => [:create]
  end

  authenticated :user do
    root :to => "static_pages#home"
  end

  root :to => "static_pages#home"
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :users
  resources :notifications

  match 'about', :to => "static_pages#about"
  match 'membership', :to => "static_pages#membership"
  match 'contact', :to => "static_pages#contact"
  get "calendar/index"
  match 'calendar', :to => "calendar#index"
  
  match '/404', :to => 'errors#not_found'
  match '/500', :to => 'errors#internal_error'
  match '/422', :to => 'errors#unprocessable_entity'
 
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
