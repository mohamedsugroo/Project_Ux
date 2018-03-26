class HomeController < ApplicationController

	def index
	end

	def search
		@jobs = Job.all
	end


	def companydash
		
	end

end
