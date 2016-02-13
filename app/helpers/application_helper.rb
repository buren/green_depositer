module ApplicationHelper
	def welcome_user
		"Welcome #{welcome_name}"
	end

	def welcome_name
		if current_user
			name = current_user.email.split('@').first
			name.gsub(/\./, ' ').humanize.titleize
		else
			"Guest"
		end
	end
end
