class MailsController < ApplicationController
	def recibirMail
		mail = params[:inputEmail]
		puts mail
	end
end
