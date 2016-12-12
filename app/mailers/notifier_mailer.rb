class NotifierMailer < ApplicationMailer	

	default from: 'buildings.community@gmail.com'

	def new_message(mensaje, user, asunto)
		@mensaje = mensaje
		mail to: 'jfcumsille@uc.cl', subject: asunto  
	end

	

end
