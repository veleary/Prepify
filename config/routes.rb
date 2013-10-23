Prepify::Application.routes.draw do
  
    resources :subjects do
      resources :instructions
      resources :questions
    end
  
root 'admin/subjects#index'

  namespace :admin do
    resources :subjects do
      resources :pages 
        resources :instructions
        resources :questions  
    
    end
  end 
end
