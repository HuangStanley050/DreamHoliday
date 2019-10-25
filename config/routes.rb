Rails.application.routes.draw do
  get 'orders/index'
  get 'orders/create'
  get 'orders/edit'
  get 'orders/success'
  get 'orders/show'
  get 'holidays/index'
  get 'holidays/edit'
  get 'holidays/create'
  get 'holidays/show'
  get 'holidays/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
