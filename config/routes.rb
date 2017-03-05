Rails.application.routes.draw do
  devise_for :users
  resources :items do
    resources :points do
      member do
        patch :complete
      end
    end
  end

  root 'items#index'
end
