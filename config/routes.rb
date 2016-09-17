Rails.application.routes.draw do
  root to: 'todos#index'
  resources :todos do
    collection do
      put 'toggle-all'
    end
  end
end
