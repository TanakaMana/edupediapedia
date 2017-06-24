Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }

  root 'users#index'
  resources :users, only: [:index, :show, :edit, :update, :destroy] do
    collection do
      get :csv_output
    end
  end
  resources :projects
end
