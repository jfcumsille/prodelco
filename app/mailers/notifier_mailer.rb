class NotifierMailer < ApplicationMailer	

	default from: 'contacto.prodelco@gmail.com'

	def new_message(mensaje, user, asunto)
		@mensaje = mensaje
		mail to: 'jfcumsille@uc.cl', subject: asunto  
	end

	

end
