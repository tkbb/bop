Bop::Application.routes.draw do
  root :to => 'welcome#index'
  resources :plans
end
