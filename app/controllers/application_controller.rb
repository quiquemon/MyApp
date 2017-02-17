class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	rescue_from ActionController::InvalidAuthenticityToken, with: :token_invalido
	
	def token_invalido
		if request.xhr?
			respond_to do |format|
				format.json do
					render json: {
						status: 2,
						message: 'Petición XHR inválida.'
					}
				end
			end
		else
			redirect_to '/'
		end
	end
end