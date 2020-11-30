Rails.application.routes.draw do
  resources :students, only: [:index, :show, :new, :create, :update, :edit] 
    resources :school_classes, only: [:index, :show, :new, :create, :update, :edit]
end
