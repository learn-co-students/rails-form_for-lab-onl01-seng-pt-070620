Rails.application.routes.draw do
  resources :students, only: %i[show create new edit update]
  resources :school_classes, only: %i[show create new edit update]
end
