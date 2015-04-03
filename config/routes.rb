Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  root 'welcome#index'

  resources :books

  resources :courses do
    resources :file_attachments, only: :destroy
    collection do
      get :search
    end
  end

end
