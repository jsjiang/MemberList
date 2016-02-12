Rails.application.routes.draw do
 get "/" => "members#index"
 
 resources :members
 
end
