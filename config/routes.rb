Rails.application.routes.draw do
  # get 'users/index'


  devise_for :users

  devise_scope :user do

    authenticated :user do
      root 'home_page#afterlogin', as: :authenticated_root
    end

    unauthenticated do
      root 'home_page#home', as: :unauthenticated_root
    end
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


    get 'users' => 'home_page#users'
    get 'users/index'
    get 'edit' => 'users#edit'
    post  'edit'   => 'users#update'

    resources :users, only: [:show, :edit, :update]

    root 'home_page#home'

  end
end
