class MailsController < ApplicationController
	skip_before_action :verify_authenticity_token
	def recibirMail
		mail = params[:email]
		asunto = params[:subject]
		mensaje = params[:message]
		NotifierMailer.new_message(mensaje, mail, asunto).deliver
      	flash[:succes] = "Tu mensaje ha sido enviado con exito"
	end
end
