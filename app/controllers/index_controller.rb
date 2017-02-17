class IndexController < ApplicationController
	def index
	end

	def about_us
	end

	def more_info
	end
	
	def xhr_get_request
		respond_to do |format|
			format.json do
				render json: {
					status: 0,
					message: 'Mensaje XHR GET desde el servidor.',
					bool: true
				}
			end
		end
	end
	
	def xhr_post_request
		respond_to do |format|
			format.json do
				render json: {
					status: 1,
					message: 'Mensaje XHR POST desde el servidor.',
					bool: false,
					params: params
				}
			end
		end
	end
	
	def sign_up
		if request.post?
			
		end
	end
	
	def login
		if request.post?
			
		end
	end
end