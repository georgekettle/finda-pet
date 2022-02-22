Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :pets, only: [:index, :show, :edit, :update, :new, :create]
  # get 'pets/:id/edit', to: 'pets#edit', as: :edit_pet
end
