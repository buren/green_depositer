class HomeController < ApplicationController
	def start
		@deposits = Deposit.all
		@user_deposits = Deposit.where(user:current_user)
	end
end
