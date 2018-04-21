class HomeController < ApplicationController

	def index
	end

	def search
		@jobs = Job.all
	end


	def companydash
		@comapny = Company.where(:user_id => current_user.id)
		@hires = Hire.where(:company_id => @company)
	end

end
