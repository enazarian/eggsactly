Rails.application.routes.draw do
  # Routes for the Product_at_store resource:
  # CREATE
  get '/product_at_stores/new',      :controller => 'product_at_stores', :action => 'new',    :as => 'new_product_at_store'
  post '/product_at_stores',         :controller => 'product_at_stores', :action => 'create', :as => 'product_at_stores'

  # READ
  get '/product_at_stores',          :controller => 'product_at_stores', :action => 'index', :as => 'products_at_store'
  get '/product_at_stores/:id',      :controller => 'product_at_stores', :action => 'show',   :as => 'product_at_store'

  # UPDATE
  get '/product_at_stores/:id/edit', :controller => 'product_at_stores', :action => 'edit',   :as => 'edit_product_at_store'
  patch '/product_at_stores/:id',    :controller => 'product_at_stores', :action => 'update'

  # DELETE
  delete '/product_at_stores/:id',   :controller => 'product_at_stores', :action => 'destroy'
  #------------------------------

  # Routes for the Product_from_source resource:
  # CREATE
  get '/product_from_sources/new',      :controller => 'product_from_sources', :action => 'new',    :as => 'new_product_from_source'
  post '/product_from_sources',         :controller => 'product_from_sources', :action => 'create', :as => 'product_from_sources'

  # READ
  get '/product_from_sources',          :controller => 'product_from_sources', :action => 'index'
  get '/product_from_sources/:id',      :controller => 'product_from_sources', :action => 'show',   :as => 'product_from_source'

  # UPDATE
  get '/product_from_sources/:id/edit', :controller => 'product_from_sources', :action => 'edit',   :as => 'edit_product_from_source'
  patch '/product_from_sources/:id',    :controller => 'product_from_sources', :action => 'update'

  # DELETE
  delete '/product_from_sources/:id',   :controller => 'product_from_sources', :action => 'destroy'
  #------------------------------

  # Routes for the Product_at_store_from_source resource:
  # CREATE
  get '/product_at_store_from_sources/new',      :controller => 'product_at_store_from_sources', :action => 'new',    :as => 'new_product_at_store_from_source'
  post '/product_at_store_from_sources',         :controller => 'product_at_store_from_sources', :action => 'create', :as => 'product_at_store_from_sources'

  # READ
  get '/product_at_store_from_sources',          :controller => 'product_at_store_from_sources', :action => 'index'
  get '/product_at_store_from_sources/:id',      :controller => 'product_at_store_from_sources', :action => 'show',   :as => 'product_at_store_from_source'

  # UPDATE
  get '/product_at_store_from_sources/:id/edit', :controller => 'product_at_store_from_sources', :action => 'edit',   :as => 'edit_product_at_store_from_source'
  patch '/product_at_store_from_sources/:id',    :controller => 'product_at_store_from_sources', :action => 'update'

  # DELETE
  delete '/product_at_store_from_sources/:id',   :controller => 'product_at_store_from_sources', :action => 'destroy'
  #------------------------------

  # Routes for the Product_category resource:
  # CREATE
  get '/product_categories/new',      :controller => 'product_categories', :action => 'new',    :as => 'new_product_category'
  post '/product_categories',         :controller => 'product_categories', :action => 'create', :as => 'product_categories'

  # READ
  get '/product_categories',          :controller => 'product_categories', :action => 'index'
  get '/product_categories/:id',      :controller => 'product_categories', :action => 'show',   :as => 'product_category'

  # UPDATE
  get '/product_categories/:id/edit', :controller => 'product_categories', :action => 'edit',   :as => 'edit_product_category'
  patch '/product_categories/:id',    :controller => 'product_categories', :action => 'update'

  # DELETE
  delete '/product_categories/:id',   :controller => 'product_categories', :action => 'destroy'
  #------------------------------

  # Routes for the Favorite resource:
  # CREATE
  get '/favorites/new',      :controller => 'favorites', :action => 'new',    :as => 'new_favorite'
  post '/favorites',         :controller => 'favorites', :action => 'create', :as => 'favorites'

  # READ
  get '/favorites',          :controller => 'favorites', :action => 'index'
  get '/favorites/:id',      :controller => 'favorites', :action => 'show',   :as => 'favorite'

  # UPDATE
  get '/favorites/:id/edit', :controller => 'favorites', :action => 'edit',   :as => 'edit_favorite'
  patch '/favorites/:id',    :controller => 'favorites', :action => 'update'

  # DELETE
  delete '/favorites/:id',   :controller => 'favorites', :action => 'destroy'
  #------------------------------

  # Routes for the Source resource:
  # CREATE
  get '/sources/new',      :controller => 'sources', :action => 'new',    :as => 'new_source'
  post '/sources',         :controller => 'sources', :action => 'create', :as => 'sources'

  # READ
  get '/sources',          :controller => 'sources', :action => 'index'
  get '/sources/:id',      :controller => 'sources', :action => 'show',   :as => 'source'

  # UPDATE
  get '/sources/:id/edit', :controller => 'sources', :action => 'edit',   :as => 'edit_source'
  patch '/sources/:id',    :controller => 'sources', :action => 'update'

  # DELETE
  delete '/sources/:id',   :controller => 'sources', :action => 'destroy'
  #------------------------------

  # Routes for the Store resource:
  # CREATE
  get '/stores/new',      :controller => 'stores', :action => 'new',    :as => 'new_store'
  post '/stores',         :controller => 'stores', :action => 'create', :as => 'stores'

  # READ
  get '/stores',          :controller => 'stores', :action => 'index'
  get '/stores/:id',      :controller => 'stores', :action => 'show',   :as => 'store'

  # UPDATE
  get '/stores/:id/edit', :controller => 'stores', :action => 'edit',   :as => 'edit_store'
  patch '/stores/:id',    :controller => 'stores', :action => 'update'

  # DELETE
  delete '/stores/:id',   :controller => 'stores', :action => 'destroy'
  #------------------------------

  # Routes for the Product resource:
  # CREATE
  get '/products/new',      :controller => 'products', :action => 'new',    :as => 'new_product'
  post '/products',         :controller => 'products', :action => 'create', :as => 'products'

  # READ
  get '/products',          :controller => 'products', :action => 'index'
  get '/products/:id',      :controller => 'products', :action => 'show',   :as => 'product'

  # UPDATE
  get '/products/:id/edit', :controller => 'products', :action => 'edit',   :as => 'edit_product'
  patch '/products/:id',    :controller => 'products', :action => 'update'

  # DELETE
  delete '/products/:id',   :controller => 'products', :action => 'destroy'
  #------------------------------

  # Routes for the User resource:
  # CREATE
  # get '/users/new',      :controller => 'users', :action => 'new',    :as => 'new_user'
  # post '/users',         :controller => 'users', :action => 'create', :as => 'users'

  # # READ
  # get '/users',          :controller => 'users', :action => 'index'
  # get '/users/:id',      :controller => 'users', :action => 'show',   :as => 'user'

  # # UPDATE
  # get '/users/:id/edit', :controller => 'users', :action => 'edit',   :as => 'edit_user'
  # patch '/users/:id',    :controller => 'users', :action => 'update'

  # # DELETE
  # delete '/users/:id',   :controller => 'users', :action => 'destroy'

  devise_for :users

  devise_scope :user do
    authenticated :user do
      root :to => 'products#index', as: :authenticated_root
    end

    unauthenticated :user do
      root :to => 'static_pages#home', as: :home
    end
  end

end
