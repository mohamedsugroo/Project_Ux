class ProfileController < ApplicationController
	
	before_action :set_user, only: [:show]

	def index
		@user = User.all
		@people = Person.all
	end

	def show
		@person = Person.where(:user_id => @user.id)
		@workhistories = Workhistory.where(:user_id => @user.id).order("start_date DESC")
		@qualifications = Qualification.where(:user_id => @user.id)
		@licences = Licence.where(:user_id => @user.id)
		@approvals = Constatus.where(:person_id => @user.person.id).last

	end


	private

		def set_user
		  @user = User.find(params[:id])
		end

end
