module ApplicationHelper
	def welcome_name
  	if current_user
  		current_user.email.split('@').first
  	else
  		"guest"
  	end
  end
end
