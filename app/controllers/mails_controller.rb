class MailsController < ApplicationController
	skip_before_action :verify_authenticity_token
	def recibirMail
		mail = params[:email]
		asunto = params[:subject]
		mensaje = params[:message]
		NotifierMailer.new_message(mensaje, mail, asunto).deliver
		flash[:success] = "Tu mail se ha enviado correctamente"
		redirect_to contacto_path
	end
end
