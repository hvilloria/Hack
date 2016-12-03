Rails.application.routes.draw do
  devise_for :users
  root 'root#index'

  namespace :students do
    shallow do
      resources :dashboard, only: [:index]
      resources :academic_weeks, only: [:index, :show] do
        resources :academic_days, only: [:index, :show] do
          resources :academic_notes, only: [:index, :show, :create, :update, :destroy]
        end
      end
    end
  end

  namespace :mentors do
    shallow do
      resources :dashboard, only: [:index]
    end
  end

  namespace :admin do
    shallow do
      resources :dashboard, only: [:index]
    end
  end
end
