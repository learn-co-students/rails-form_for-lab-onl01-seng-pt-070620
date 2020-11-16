Rails.application.routes.draw do
  resources :school_class, only: [:index, :show, :new, :create, :edit, :update]
end
