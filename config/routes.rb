ProjectManagementSystem::Application.routes.draw do

  devise_for :people, :controllers => { :registrations => 'registrations' }

  resources :projects do
    resources :task_groups
  end

  resources :task_groups do
    resources :tasks
  end

  resources :tasks do
    resource :person
  end

  root :to => "projects#index"
end