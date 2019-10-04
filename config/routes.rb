Rails.application.routes.draw do

  root to: 'recipes#index'

  resources :recipes, only: [:index] do
    get :show_recipe, on: :collection
  end

end
