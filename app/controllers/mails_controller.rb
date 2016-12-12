class MailsController < ApplicationController
	skip_before_action :verify_authenticity_token
	def recibirMail
		mail = params[:email]
		asunto = params[:subject]
		mensaje = params[:message]
	end
end
