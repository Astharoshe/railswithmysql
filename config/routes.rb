Rails.application.routes.draw do
  
	
  #get 'importexcels/index'
  #root "landing#index"
  #get 'landing/index'
  #get '/' 			 =>		'sb_admin2#index'
  #get '/grayscale'   => 	'grayscale#index'
	
	
	
  #resources :messages, only: [:new, :create]
  
	
  #get 'landing/index'

  resources :importexcels, only: [:import] do
  	collection do
	  post 'import'
	end
  end
	
  #post 'importexcels/import'	
  get '/' => 'importexcels#index'
	
  #get '/'	 =>	'admindashboard#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
