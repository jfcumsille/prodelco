class NotifierMailer < ApplicationMailer

	def new_message(message, user)
		
		@message = message
		mail to:
	end

end
