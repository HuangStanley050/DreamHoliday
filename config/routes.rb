# frozen_string_literal: true

Rails.application.routes.draw do
  get 'orders/index'
  get 'orders/create'
  get 'orders/edit'
  get 'orders/success'
  get 'orders/show'
  post 'orders/create', to: 'orders#create'
  patch 'orders/edit/:id', to: 'orders#edit'
  delete 'orders/delete/:id', to: 'orders#destroy'

  get 'holidays/index'
  get 'holidays/edit'
  get 'holidays/create'
  get 'holidays/show'
  patch 'holidays/edit/:id', to: 'holidays#edit'
  delete 'holidays/destroy/:id', to: 'holidays#destroy'
  post 'holidays/create', to: 'holidays#create'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
