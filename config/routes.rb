Rails.application.routes.draw do
  resources :help
  resources :semesters
  root 'members#index'
  devise_for :admins, controllers: { omniauth_callbacks: 'admins/omniauth_callbacks' }
  devise_scope :admin do
    get 'admins/sign_in', to: 'admins/sessions#new', as: :new_admin_session
    get 'admins/sign_out', to: 'admins/sessions#destroy', as: :destroy_admin_session
  end

  resources :positions

  resources :members do
    member do
      get :delete
    end
  end
end
