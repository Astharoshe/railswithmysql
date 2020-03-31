Rails.application.routes.draw do
  get '/' 			 =>		'sb_admin2#index'
  get '/grayscale'   => 	'grayscale#index'
  
  #get '/'	 =>	'admindashboard#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
