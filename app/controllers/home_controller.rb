class HomeController < ApplicationController
	def start
		@deposits = Deposit.all.limit(100)
		@user_deposits = Deposit.where(user:current_user).limit(100)
	end

	def scan
	end
end
