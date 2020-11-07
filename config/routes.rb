Rails.application.routes.draw do
  resources :students, only: [:new, :create, :show, :edit, :update]
  patch 'students/:id', to: 'students#update'
  resources :school_classes, only: [:new, :create, :show, :edit, :update]
  # patch 'school_classes/:id', to 'school_classes#update'
end

