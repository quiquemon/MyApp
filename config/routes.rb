Rails.application.routes.draw do
	root to: 'index#index'
	
	get 'index',            to: 'index#index'
	get 'about_us',         to: 'index#about_us'
	get 'more_info',        to: 'index#more_info'
	get 'xhr_get_request',  to: 'index#xhr_get_request'
	get 'sign_up',          to: 'index#sign_up'
	get 'login',            to: 'index#login'
	post 'xhr_post_request', to: 'index#xhr_post_request'
	post 'sign_up',         to: 'index#sign_up'
	post 'login',           to: 'index#login'
end