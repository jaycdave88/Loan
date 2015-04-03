class LoanMailer < ActionMailer::Base
	default :from => "jaycdave@gmail.com"
	def registration_confirmation(current_user)
		unless current_user.nil?
			mail(
				:from => "jaycdave@gmail.com",
				:to => current_user.email,
				:subject => "New Loan"
				)
		else
			mail(
				:from => "jaycdave@gmail.com",
				:to => current_user.email,
				:subject => "Thank you for signing"
				)
		end

	end
end


