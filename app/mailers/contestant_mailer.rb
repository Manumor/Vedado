class ContestantMailer < ApplicationMailer
	def participation(contestant)
		@contestant = contestant 
		@url = "vedado.com"
		mail(to: @contestant.email, subject: 'Buena suerte en el concurso Vedado')
	end 
end
