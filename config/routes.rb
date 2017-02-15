Rails.application.routes.draw do
	root to: 'index#index'
	
	get 'index',     to: 'index#index'
	get 'about_us',  to: 'index#about_us'
	get 'more_info', to: 'index#more_info'
end