Rails.application.routes.draw do
  devise_for :admins, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'exam_panels#index'

  devise_for :employees, only: [:sessions]
  devise_scope :employees do
	  get 'sign_in', to: 'devise/sessions#new'
  end

  resources :exam_panels, only: [:index, :new, :create, :show]
end
